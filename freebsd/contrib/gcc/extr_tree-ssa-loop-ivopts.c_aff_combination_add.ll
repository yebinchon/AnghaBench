; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_aff_combination_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_aff_combination_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.affine_tree_combination = type { i32, i32, i32, i32*, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.affine_tree_combination*, %struct.affine_tree_combination*)* @aff_combination_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aff_combination_add(%struct.affine_tree_combination* %0, %struct.affine_tree_combination* %1) #0 {
  %3 = alloca %struct.affine_tree_combination*, align 8
  %4 = alloca %struct.affine_tree_combination*, align 8
  %5 = alloca i32, align 4
  store %struct.affine_tree_combination* %0, %struct.affine_tree_combination** %3, align 8
  store %struct.affine_tree_combination* %1, %struct.affine_tree_combination** %4, align 8
  %6 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %7 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %10 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %8, %11
  %13 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %14 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %18 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %42, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %22 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %27 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %28 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %27, i32 0, i32 5
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %35 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @aff_combination_add_elt(%struct.affine_tree_combination* %26, i64 %33, i32 %40)
  br label %42

42:                                               ; preds = %25
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %47 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %52 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %53 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @aff_combination_add_elt(%struct.affine_tree_combination* %51, i64 %54, i32 1)
  br label %56

56:                                               ; preds = %50, %45
  ret void
}

declare dso_local i32 @aff_combination_add_elt(%struct.affine_tree_combination*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
