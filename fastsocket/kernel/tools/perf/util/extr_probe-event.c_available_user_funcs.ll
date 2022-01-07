; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_available_user_funcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_available_user_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @available_user_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @available_user_funcs(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.map*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @init_user_exec()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.map* @dso__new_map(i8* %12)
  store %struct.map* %13, %struct.map** %4, align 8
  %14 = load %struct.map*, %struct.map** %4, align 8
  %15 = call i32 @__show_available_funcs(%struct.map* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.map*, %struct.map** %4, align 8
  %17 = getelementptr inbounds %struct.map, %struct.map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dso__delete(i32 %18)
  %20 = load %struct.map*, %struct.map** %4, align 8
  %21 = call i32 @map__delete(%struct.map* %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @init_user_exec(...) #1

declare dso_local %struct.map* @dso__new_map(i8*) #1

declare dso_local i32 @__show_available_funcs(%struct.map*) #1

declare dso_local i32 @dso__delete(i32) #1

declare dso_local i32 @map__delete(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
