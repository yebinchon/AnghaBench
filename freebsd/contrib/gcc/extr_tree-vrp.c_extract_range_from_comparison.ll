; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_extract_range_from_comparison.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_extract_range_from_comparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@VR_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @extract_range_from_comparison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_range_from_comparison(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @vrp_evaluate_conditional_warnv(i32 %7, i32 0, i32* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @is_overflow_infinity(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_TYPE(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @fold_convert(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @is_gimple_min_invariant(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_value_range_to_value(%struct.TYPE_6__* %27, i32 %28, i32 %31)
  br label %42

33:                                               ; preds = %18
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = load i32, i32* @VR_RANGE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_value_range(%struct.TYPE_6__* %34, i32 %35, i32 %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %33, %26
  br label %46

43:                                               ; preds = %15, %11, %2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = call i32 @set_value_range_to_varying(%struct.TYPE_6__* %44)
  br label %46

46:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @vrp_evaluate_conditional_warnv(i32, i32, i32*) #1

declare dso_local i32 @is_overflow_infinity(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @is_gimple_min_invariant(i32) #1

declare dso_local i32 @set_value_range_to_value(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @set_value_range(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @set_value_range_to_varying(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
