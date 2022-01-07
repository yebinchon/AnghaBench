; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_function_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_function_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"ISO C++ forbids calling %<::main%> from within program\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"must use %<.*%> or %<->*%> to call pointer-to-member function in %<%E (...)%>\00", align 1
@POINTER_TYPE = common dso_local global i64 0, align 8
@METHOD_TYPE = common dso_local global i64 0, align 8
@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"%qE cannot be used as a function\00", align 1
@LOOKUP_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_function_call(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* @NULL_TREE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @objc_rewrite_function_call(i64 %14, i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @NOP_EXPR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @TREE_TYPE(i64 %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @TREE_OPERAND(i64 %24, i32 0)
  %26 = call i64 @TREE_TYPE(i64 %25)
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @TREE_OPERAND(i64 %29, i32 0)
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %28, %21, %2
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @FUNCTION_DECL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @DECL_NAME(i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @mark_used(i64 %39)
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* @pedantic, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @DECL_MAIN_P(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @pedwarn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44, %36
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @DECL_INLINE(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @inline_conversion(i64 %55)
  store i64 %56, i64* %4, align 8
  br label %60

57:                                               ; preds = %50
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @build_addr_func(i64 %58)
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %57, %54
  br label %65

61:                                               ; preds = %31
  %62 = load i64, i64* @NULL_TREE, align 8
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @build_addr_func(i64 %63)
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %61, %60
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @error_mark_node, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i64, i64* @error_mark_node, align 8
  store i64 %70, i64* %3, align 8
  br label %163

71:                                               ; preds = %65
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @TREE_TYPE(i64 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @TYPE_PTRMEMFUNC_P(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* @error_mark_node, align 8
  store i64 %80, i64* %3, align 8
  br label %163

81:                                               ; preds = %71
  %82 = load i64, i64* %6, align 8
  %83 = call i64 @TREE_CODE(i64 %82)
  %84 = load i64, i64* @POINTER_TYPE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i64, i64* %6, align 8
  %88 = call i64 @TREE_TYPE(i64 %87)
  %89 = call i64 @TREE_CODE(i64 %88)
  %90 = load i64, i64* @METHOD_TYPE, align 8
  %91 = icmp eq i64 %89, %90
  br label %92

92:                                               ; preds = %86, %81
  %93 = phi i1 [ false, %81 ], [ %91, %86 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @TREE_CODE(i64 %95)
  %97 = load i64, i64* @POINTER_TYPE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @TREE_CODE(i64 %100)
  %102 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %99, %92
  %105 = load i64, i64* %6, align 8
  %106 = call i64 @TREE_TYPE(i64 %105)
  %107 = call i64 @TREE_CODE(i64 %106)
  %108 = load i64, i64* @FUNCTION_TYPE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %104, %99
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* %4, align 8
  %115 = call i64 @TREE_CODE(i64 %114)
  %116 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %119)
  %121 = load i64, i64* @error_mark_node, align 8
  store i64 %121, i64* %3, align 8
  br label %163

122:                                              ; preds = %113, %110, %104
  %123 = load i64, i64* %6, align 8
  %124 = call i64 @TREE_TYPE(i64 %123)
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @TYPE_ARG_TYPES(i64 %125)
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i32, i32* @LOOKUP_NORMAL, align 4
  %130 = load i64, i64* %4, align 8
  %131 = call i64 @TREE_TYPE(i64 %130)
  %132 = call i64 @TREE_CODE(i64 %131)
  %133 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @convert_arguments(i32 %126, i64 %127, i64 %128, i32 %129, i32 %135)
  store i64 %136, i64* %8, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* @error_mark_node, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %122
  %141 = load i64, i64* @error_mark_node, align 8
  store i64 %141, i64* %3, align 8
  br label %163

142:                                              ; preds = %122
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @TYPE_ATTRIBUTES(i64 %143)
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %6, align 8
  %147 = call i32 @TYPE_ARG_TYPES(i64 %146)
  %148 = call i32 @check_function_arguments(i32 %144, i64 %145, i32 %147)
  %149 = load i64, i64* %4, align 8
  %150 = call i64 @TREE_TYPE(i64 %149)
  %151 = call i64 @TREE_CODE(i64 %150)
  %152 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %142
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* %4, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i64 @build_block_call(i64 %155, i64 %156, i64 %157)
  store i64 %158, i64* %3, align 8
  br label %163

159:                                              ; preds = %142
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i64 @build_cxx_call(i64 %160, i64 %161)
  store i64 %162, i64* %3, align 8
  br label %163

163:                                              ; preds = %159, %154, %140, %118, %77, %69
  %164 = load i64, i64* %3, align 8
  ret i64 %164
}

declare dso_local i64 @objc_rewrite_function_call(i64, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i32 @mark_used(i64) #1

declare dso_local i64 @DECL_MAIN_P(i64) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i64 @DECL_INLINE(i64) #1

declare dso_local i64 @inline_conversion(i64) #1

declare dso_local i64 @build_addr_func(i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @convert_arguments(i32, i64, i64, i32, i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i64) #1

declare dso_local i32 @check_function_arguments(i32, i64, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i64) #1

declare dso_local i64 @build_block_call(i64, i64, i64) #1

declare dso_local i64 @build_cxx_call(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
