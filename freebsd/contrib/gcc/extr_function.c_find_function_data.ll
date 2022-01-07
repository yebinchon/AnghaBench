; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_find_function_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_find_function_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { i64, %struct.function* }

@outer_function_chain = common dso_local global %struct.function* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.function* @find_function_data(i64 %0) #0 {
  %2 = alloca %struct.function*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.function*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.function*, %struct.function** @outer_function_chain, align 8
  store %struct.function* %5, %struct.function** %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.function*, %struct.function** %4, align 8
  %8 = icmp ne %struct.function* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.function*, %struct.function** %4, align 8
  %11 = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load %struct.function*, %struct.function** %4, align 8
  store %struct.function* %16, %struct.function** %2, align 8
  br label %24

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.function*, %struct.function** %4, align 8
  %20 = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 1
  %21 = load %struct.function*, %struct.function** %20, align 8
  store %struct.function* %21, %struct.function** %4, align 8
  br label %6

22:                                               ; preds = %6
  %23 = call i32 (...) @gcc_unreachable()
  br label %24

24:                                               ; preds = %22, %15
  %25 = load %struct.function*, %struct.function** %2, align 8
  ret %struct.function* %25
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
