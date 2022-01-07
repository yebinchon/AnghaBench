; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_debuginfo__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_debuginfo__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debuginfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debuginfo* @debuginfo__new(i8* %0) #0 {
  %2 = alloca %struct.debuginfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.debuginfo*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.debuginfo* @zalloc(i32 4)
  store %struct.debuginfo* %5, %struct.debuginfo** %4, align 8
  %6 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %7 = icmp ne %struct.debuginfo* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.debuginfo* null, %struct.debuginfo** %2, align 8
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @debuginfo__init_offline_dwarf(%struct.debuginfo* %10, i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %16 = call i32 @free(%struct.debuginfo* %15)
  store %struct.debuginfo* null, %struct.debuginfo** %4, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  store %struct.debuginfo* %18, %struct.debuginfo** %2, align 8
  br label %19

19:                                               ; preds = %17, %8
  %20 = load %struct.debuginfo*, %struct.debuginfo** %2, align 8
  ret %struct.debuginfo* %20
}

declare dso_local %struct.debuginfo* @zalloc(i32) #1

declare dso_local i64 @debuginfo__init_offline_dwarf(%struct.debuginfo*, i8*) #1

declare dso_local i32 @free(%struct.debuginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
