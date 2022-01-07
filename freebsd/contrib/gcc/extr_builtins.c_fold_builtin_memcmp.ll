; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_memcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@integer_minus_one_node = common dso_local global i32 0, align 4
@unsigned_char_type_node = common dso_local global i32 0, align 4
@ptr_mode = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fold_builtin_memcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_memcmp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @POINTER_TYPE, align 4
  %16 = load i32, i32* @POINTER_TYPE, align 4
  %17 = load i32, i32* @INTEGER_TYPE, align 4
  %18 = load i32, i32* @VOID_TYPE, align 4
  %19 = call i32 @validate_arglist(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %132

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @TREE_VALUE(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @TREE_CHAIN(i32 %25)
  %27 = call i32 @TREE_VALUE(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @TREE_CHAIN(i32 %28)
  %30 = call i32 @TREE_CHAIN(i32 %29)
  %31 = call i32 @TREE_VALUE(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @integer_zerop(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load i32, i32* @integer_type_node, align 4
  %37 = load i32, i32* @integer_zero_node, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @omit_two_operands(i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %132

41:                                               ; preds = %22
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @operand_equal_p(i32 %42, i32 %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @integer_type_node, align 4
  %48 = load i32, i32* @integer_zero_node, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @omit_one_operand(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %132

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  %53 = call i8* @c_getstr(i32 %52)
  store i8* %53, i8** %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i8* @c_getstr(i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @host_integerp(i32 %56, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %51
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %96

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = add nsw i64 %68, 1
  %70 = call i64 @compare_tree_int(i32 %66, i64 %69)
  %71 = icmp sle i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = add nsw i64 %75, 1
  %77 = call i64 @compare_tree_int(i32 %73, i64 %76)
  %78 = icmp sle i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @tree_low_cst(i32 %82, i32 1)
  %84 = call i32 @memcmp(i8* %80, i8* %81, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @integer_one_node, align 4
  store i32 %88, i32* %2, align 4
  br label %132

89:                                               ; preds = %79
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @integer_minus_one_node, align 4
  store i32 %93, i32* %2, align 4
  br label %132

94:                                               ; preds = %89
  %95 = load i32, i32* @integer_zero_node, align 4
  store i32 %95, i32* %2, align 4
  br label %132

96:                                               ; preds = %72, %65, %62, %59, %51
  %97 = load i32, i32* %6, align 4
  %98 = call i64 @host_integerp(i32 %97, i32 1)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %131

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @tree_low_cst(i32 %101, i32 1)
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %131

104:                                              ; preds = %100
  %105 = load i32, i32* @unsigned_char_type_node, align 4
  %106 = call i32 @build_type_variant(i32 %105, i32 1, i32 0)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @ptr_mode, align 4
  %109 = call i32 @build_pointer_type_for_mode(i32 %107, i32 %108, i32 1)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* @integer_type_node, align 4
  %111 = load i32, i32* @INDIRECT_REF, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @fold_convert(i32 %113, i32 %114)
  %116 = call i32 @build1(i32 %111, i32 %112, i32 %115)
  %117 = call i32 @fold_convert(i32 %110, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* @integer_type_node, align 4
  %119 = load i32, i32* @INDIRECT_REF, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @fold_convert(i32 %121, i32 %122)
  %124 = call i32 @build1(i32 %119, i32 %120, i32 %123)
  %125 = call i32 @fold_convert(i32 %118, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* @MINUS_EXPR, align 4
  %127 = load i32, i32* @integer_type_node, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @fold_build2(i32 %126, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %2, align 4
  br label %132

131:                                              ; preds = %100, %96
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %104, %94, %92, %87, %46, %35, %21
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i32 @omit_two_operands(i32, i32, i32, i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @omit_one_operand(i32, i32, i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i64 @host_integerp(i32, i32) #1

declare dso_local i64 @compare_tree_int(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @build_type_variant(i32, i32, i32) #1

declare dso_local i32 @build_pointer_type_for_mode(i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
