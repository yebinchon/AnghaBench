; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_addr_to_parts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_addr_to_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.affine_tree_combination = type { i32, i32, i32*, i64, i64* }
%struct.mem_address = type { i8*, i8*, i8*, i8*, i8* }

@NULL_TREE = common dso_local global i8* null, align 8
@sizetype = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.affine_tree_combination*, %struct.mem_address*)* @addr_to_parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_to_parts(%struct.affine_tree_combination* %0, %struct.mem_address* %1) #0 {
  %3 = alloca %struct.affine_tree_combination*, align 8
  %4 = alloca %struct.mem_address*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.affine_tree_combination* %0, %struct.affine_tree_combination** %3, align 8
  store %struct.mem_address* %1, %struct.mem_address** %4, align 8
  %7 = load i8*, i8** @NULL_TREE, align 8
  %8 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %9 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** @NULL_TREE, align 8
  %11 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %12 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @NULL_TREE, align 8
  %14 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %15 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @NULL_TREE, align 8
  %17 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %18 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %20 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32, i32* @sizetype, align 4
  %25 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %26 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @build_int_cst_type(i32 %24, i32 %27)
  %29 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %30 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %35

31:                                               ; preds = %2
  %32 = load i8*, i8** @NULL_TREE, align 8
  %33 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %34 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %37 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %38 = call i32 @move_fixed_address_to_symbol(%struct.mem_address* %36, %struct.affine_tree_combination* %37)
  %39 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %40 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %41 = call i32 @most_expensive_mult_to_index(%struct.mem_address* %39, %struct.affine_tree_combination* %40)
  %42 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %43 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %48 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %49 = call i32 @move_pointer_to_base(%struct.mem_address* %47, %struct.affine_tree_combination* %48)
  br label %50

50:                                               ; preds = %46, %35
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %93, %50
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %54 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %51
  %58 = load i32, i32* @sizetype, align 4
  %59 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %60 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %59, i32 0, i32 4
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @fold_convert(i32 %58, i64 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %68 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %89

75:                                               ; preds = %57
  %76 = load i32, i32* @MULT_EXPR, align 4
  %77 = load i32, i32* @sizetype, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @sizetype, align 4
  %80 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %81 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @build_int_cst_type(i32 %79, i32 %86)
  %88 = call i32 @fold_build2(i32 %76, i32 %77, i32 %78, i8* %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %75, %57
  %90 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @add_to_parts(%struct.mem_address* %90, i32 %91)
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %51

96:                                               ; preds = %51
  %97 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %98 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %103 = load i32, i32* @sizetype, align 4
  %104 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %3, align 8
  %105 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @fold_convert(i32 %103, i64 %106)
  %108 = call i32 @add_to_parts(%struct.mem_address* %102, i32 %107)
  br label %109

109:                                              ; preds = %101, %96
  ret void
}

declare dso_local i8* @build_int_cst_type(i32, i32) #1

declare dso_local i32 @move_fixed_address_to_symbol(%struct.mem_address*, %struct.affine_tree_combination*) #1

declare dso_local i32 @most_expensive_mult_to_index(%struct.mem_address*, %struct.affine_tree_combination*) #1

declare dso_local i32 @move_pointer_to_base(%struct.mem_address*, %struct.affine_tree_combination*) #1

declare dso_local i32 @fold_convert(i32, i64) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i8*) #1

declare dso_local i32 @add_to_parts(%struct.mem_address*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
