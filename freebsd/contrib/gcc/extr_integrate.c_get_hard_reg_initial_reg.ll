; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_integrate.c_get_hard_reg_initial_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_integrate.c_get_hard_reg_initial_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { %struct.initial_value_struct* }
%struct.initial_value_struct = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@NULL_RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hard_reg_initial_reg(%struct.function* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.initial_value_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.function* %0, %struct.function** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.function*, %struct.function** %4, align 8
  %9 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 0
  %10 = load %struct.initial_value_struct*, %struct.initial_value_struct** %9, align 8
  store %struct.initial_value_struct* %10, %struct.initial_value_struct** %6, align 8
  %11 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %12 = icmp eq %struct.initial_value_struct* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @NULL_RTX, align 4
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %19 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %24 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @rtx_equal_p(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  %35 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %36 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load i32, i32* @NULL_RTX, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %34, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @rtx_equal_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
