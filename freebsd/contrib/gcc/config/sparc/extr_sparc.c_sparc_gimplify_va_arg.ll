; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_gimplify_va_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_gimplify_va_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@TARGET_ARCH64 = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@is_gimple_val = common dso_local global i32 0, align 4
@fb_rvalue = common dso_local global i32 0, align 4
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"va_arg_tmp\00", align 1
@implicit_built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_MEMCPY = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @sparc_gimplify_va_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_gimplify_va_arg(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @build_pointer_type(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TYPE_MODE(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @pass_by_reference(i32* null, i32 %22, i32 %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  %27 = load i32, i32* @UNITS_PER_WORD, align 4
  store i32 %27, i32* %10, align 4
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %63

28:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @int_size_in_bytes(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @UNITS_PER_WORD, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* @UNITS_PER_WORD, align 4
  %36 = sub nsw i32 0, %35
  %37 = and i32 %34, %36
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %38 = load i64, i64* @TARGET_ARCH64, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @TYPE_ALIGN(i32 %41)
  %43 = load i32, i32* @BITS_PER_WORD, align 4
  %44 = mul i32 2, %43
  %45 = icmp uge i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @UNITS_PER_WORD, align 4
  %48 = mul nsw i32 2, %47
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @AGGREGATE_TYPE_P(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @UNITS_PER_WORD, align 4
  store i32 %57, i32* %10, align 4
  store i32 %57, i32* %9, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %49
  br label %62

62:                                               ; preds = %61, %28
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load i32, i32* @PLUS_EXPR, align 4
  %69 = load i32, i32* @ptr_type_node, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @ssize_int(i32 %72)
  %74 = call i32 @build2(i32 %68, i32 %69, i32 %70, i32 %73)
  %75 = call i32 @fold(i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* @BIT_AND_EXPR, align 4
  %77 = load i32, i32* @ptr_type_node, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @ssize_int(i32 %80)
  %82 = call i32 @build2(i32 %76, i32 %77, i32 %78, i32 %81)
  %83 = call i32 @fold(i32 %82)
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %67, %63
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* @is_gimple_val, align 4
  %88 = load i32, i32* @fb_rvalue, align 4
  %89 = call i32 @gimplify_expr(i32* %13, i32* %85, i32* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %12, align 4
  %91 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* @PLUS_EXPR, align 4
  %99 = load i32, i32* @ptr_type_node, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32 @ssize_int(i32 %103)
  %105 = call i32 @build2(i32 %98, i32 %99, i32 %100, i32 %104)
  %106 = call i32 @fold(i32 %105)
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %97, %93, %84
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @build_pointer_type(i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @fold_convert(i32 %112, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @build_va_arg_indirect_ref(i32 %115)
  store i32 %116, i32* %12, align 4
  br label %155

117:                                              ; preds = %107
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %117
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @TYPE_ALIGN(i32 %121)
  %123 = load i32, i32* @BITS_PER_WORD, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %150

125:                                              ; preds = %120
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @create_tmp_var(i32 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @build_fold_addr_expr(i32 %128)
  store i32 %129, i32* %17, align 4
  %130 = load i32*, i32** @implicit_built_in_decls, align 8
  %131 = load i64, i64* @BUILT_IN_MEMCPY, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @NULL_TREE, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @NULL_TREE, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @NULL_TREE, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @size_int(i32 %139)
  %141 = load i32, i32* @NULL_TREE, align 4
  %142 = call i32 @tree_cons(i32 %138, i32 %140, i32 %141)
  %143 = call i32 @tree_cons(i32 %136, i32 %137, i32 %142)
  %144 = call i32 @tree_cons(i32 %134, i32 %135, i32 %143)
  %145 = call i32 @build_function_call_expr(i32 %133, i32 %144)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @gimplify_and_add(i32 %146, i32* %147)
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %12, align 4
  br label %154

150:                                              ; preds = %120, %117
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @fold_convert(i32 %151, i32 %152)
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %150, %125
  br label %155

155:                                              ; preds = %154, %110
  %156 = load i32, i32* @PLUS_EXPR, align 4
  %157 = load i32, i32* @ptr_type_node, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @ssize_int(i32 %159)
  %161 = call i32 @build2(i32 %156, i32 %157, i32 %158, i32 %160)
  %162 = call i32 @fold(i32 %161)
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* @MODIFY_EXPR, align 4
  %164 = load i32, i32* @ptr_type_node, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @build2(i32 %163, i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @gimplify_and_add(i32 %168, i32* %169)
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @build_va_arg_indirect_ref(i32 %171)
  ret i32 %172
}

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i64 @pass_by_reference(i32*, i32, i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @int_size_in_bytes(i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i32) #1

declare dso_local i32 @fold(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @ssize_int(i32) #1

declare dso_local i32 @gimplify_expr(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @build_va_arg_indirect_ref(i32) #1

declare dso_local i32 @create_tmp_var(i32, i8*) #1

declare dso_local i32 @build_fold_addr_expr(i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @size_int(i32) #1

declare dso_local i32 @gimplify_and_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
