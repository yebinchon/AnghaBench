; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_move_fixed_address_to_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_move_fixed_address_to_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_address = type { i32 }
%struct.affine_tree_combination = type { i32, i32*, i32* }

@NULL_TREE = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_address*, %struct.affine_tree_combination*)* @move_fixed_address_to_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_fixed_address_to_symbol(%struct.mem_address* %0, %struct.affine_tree_combination* %1) #0 {
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

8:                                                ; preds = %43, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %11 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %46

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
  br label %43

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
  %33 = call i64 @TREE_CODE(i32 %32)
  %34 = load i64, i64* @ADDR_EXPR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @TREE_OPERAND(i32 %37, i32 0)
  %39 = call i64 @fixed_address_object_p(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36, %24
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %8

46:                                               ; preds = %41, %8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %49 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %61

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @TREE_OPERAND(i32 %54, i32 0)
  %56 = load %struct.mem_address*, %struct.mem_address** %3, align 8
  %57 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @aff_combination_remove_elt(%struct.affine_tree_combination* %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %52
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @fixed_address_object_p(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @aff_combination_remove_elt(%struct.affine_tree_combination*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
