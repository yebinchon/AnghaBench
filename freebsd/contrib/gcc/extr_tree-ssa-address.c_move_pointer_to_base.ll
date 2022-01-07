; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_move_pointer_to_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_move_pointer_to_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_address = type { i32 }
%struct.affine_tree_combination = type { i32, i32*, i32* }

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_address*, %struct.affine_tree_combination*)* @move_pointer_to_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_pointer_to_base(%struct.mem_address* %0, %struct.affine_tree_combination* %1) #0 {
  %3 = alloca %struct.mem_address*, align 8
  %4 = alloca %struct.affine_tree_combination*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mem_address* %0, %struct.mem_address** %3, align 8
  store %struct.affine_tree_combination* %1, %struct.affine_tree_combination** %4, align 8
  %7 = load i32, i32* @NULL_TREE, align 4
  store i32 %7, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %38, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %11 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %16 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %38

24:                                               ; preds = %14
  %25 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %26 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @TREE_TYPE(i32 %32)
  %34 = call i64 @POINTER_TYPE_P(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %41

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %8

41:                                               ; preds = %36, %8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %44 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %55

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.mem_address*, %struct.mem_address** %3, align 8
  %51 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @aff_combination_remove_elt(%struct.affine_tree_combination* %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %47
  ret void
}

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @aff_combination_remove_elt(%struct.affine_tree_combination*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
