; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dso.c_dso__new_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dso.c_dso__new_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.dso = type { i32 }

@MAP__FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map* @dso__new_map(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.map*, align 8
  %4 = alloca %struct.dso*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.map* null, %struct.map** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.dso* @dso__new(i8* %5)
  store %struct.dso* %6, %struct.dso** %4, align 8
  %7 = load %struct.dso*, %struct.dso** %4, align 8
  %8 = icmp ne %struct.dso* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.dso*, %struct.dso** %4, align 8
  %11 = load i32, i32* @MAP__FUNCTION, align 4
  %12 = call %struct.map* @map__new2(i32 0, %struct.dso* %10, i32 %11)
  store %struct.map* %12, %struct.map** %3, align 8
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.map*, %struct.map** %3, align 8
  ret %struct.map* %14
}

declare dso_local %struct.dso* @dso__new(i8*) #1

declare dso_local %struct.map* @map__new2(i32, %struct.dso*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
