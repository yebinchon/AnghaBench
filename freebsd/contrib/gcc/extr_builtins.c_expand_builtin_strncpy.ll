; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_strncpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_strncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@BIGGEST_ALIGNMENT = common dso_local global i32 0, align 4
@builtin_strncpy_read_str = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@ptr_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @expand_builtin_strncpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_strncpy(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @get_callee_fndecl(i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @TREE_OPERAND(i64 %19, i32 1)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @POINTER_TYPE, align 4
  %23 = load i32, i32* @POINTER_TYPE, align 4
  %24 = load i32, i32* @INTEGER_TYPE, align 4
  %25 = load i32, i32* @VOID_TYPE, align 4
  %26 = call i64 @validate_arglist(i64 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %133

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @TREE_CHAIN(i64 %29)
  %31 = call i64 @TREE_VALUE(i64 %30)
  %32 = call i64 @c_strlen(i64 %31, i32 1)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @TREE_CHAIN(i64 %33)
  %35 = call i64 @TREE_CHAIN(i64 %34)
  %36 = call i64 @TREE_VALUE(i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @fold_builtin_strncpy(i64 %37, i64 %38, i64 %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %49, %43
  %45 = load i64, i64* %12, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @COMPOUND_EXPR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @TREE_OPERAND(i64 %50, i32 0)
  %52 = load i32, i32* @const0_rtx, align 4
  %53 = load i32, i32* @VOIDmode, align 4
  %54 = load i32, i32* @EXPAND_NORMAL, align 4
  %55 = call i32 @expand_expr(i64 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @TREE_OPERAND(i64 %56, i32 1)
  store i64 %57, i64* %12, align 8
  br label %44

58:                                               ; preds = %44
  %59 = load i64, i64* %12, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @EXPAND_NORMAL, align 4
  %63 = call i32 @expand_expr(i64 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %134

64:                                               ; preds = %28
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @host_integerp(i64 %65, i32 1)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @host_integerp(i64 %72, i32 1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71, %68, %64
  store i32 0, i32* %4, align 4
  br label %134

76:                                               ; preds = %71
  %77 = load i32, i32* @PLUS_EXPR, align 4
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @ssize_int(i32 1)
  %80 = call i64 @size_binop(i32 %77, i64 %78, i32 %79)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @tree_int_cst_lt(i64 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %132

85:                                               ; preds = %76
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @TREE_VALUE(i64 %86)
  store i64 %87, i64* %13, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %90 = call i32 @get_pointer_alignment(i64 %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @TREE_CHAIN(i64 %91)
  %93 = call i64 @TREE_VALUE(i64 %92)
  %94 = call i8* @c_getstr(i64 %93)
  store i8* %94, i8** %15, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %85
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @host_integerp(i64 %101, i32 1)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @tree_low_cst(i64 %105, i32 1)
  %107 = load i32, i32* @builtin_strncpy_read_str, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @can_store_by_pieces(i32 %106, i32 %107, i8* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %104, %100, %97, %85
  store i32 0, i32* %4, align 4
  br label %134

113:                                              ; preds = %104
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @get_memory_rtx(i64 %114, i64 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @tree_low_cst(i64 %118, i32 1)
  %120 = load i32, i32* @builtin_strncpy_read_str, align 4
  %121 = load i8*, i8** %15, align 8
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @store_by_pieces(i32 %117, i32 %119, i32 %120, i8* %121, i32 %122, i32 0)
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @XEXP(i32 %124, i32 0)
  %126 = load i32, i32* @NULL_RTX, align 4
  %127 = call i32 @force_operand(i32 %125, i32 %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* @ptr_mode, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @convert_memory_address(i32 %128, i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %4, align 4
  br label %134

132:                                              ; preds = %76
  br label %133

133:                                              ; preds = %132, %3
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %113, %112, %75, %58
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @get_callee_fndecl(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @validate_arglist(i64, i32, i32, i32, i32) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @fold_builtin_strncpy(i64, i64, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @expand_expr(i64, i32, i32, i32) #1

declare dso_local i32 @host_integerp(i64, i32) #1

declare dso_local i64 @size_binop(i32, i64, i32) #1

declare dso_local i32 @ssize_int(i32) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

declare dso_local i32 @get_pointer_alignment(i64, i32) #1

declare dso_local i8* @c_getstr(i64) #1

declare dso_local i32 @can_store_by_pieces(i32, i32, i8*, i32) #1

declare dso_local i32 @tree_low_cst(i64, i32) #1

declare dso_local i32 @get_memory_rtx(i64, i64) #1

declare dso_local i32 @store_by_pieces(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @force_operand(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @convert_memory_address(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
