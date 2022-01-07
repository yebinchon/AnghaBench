; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_stxcpy_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_stxcpy_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@BUILT_IN_STRCPY_CHK = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@BUILT_IN_STPCPY_CHK = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_MEMCPY_CHK = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@BUILT_IN_STPCPY = common dso_local global i64 0, align 8
@BUILT_IN_STRCPY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fold_builtin_stxcpy_chk(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @POINTER_TYPE, align 4
  %19 = load i32, i32* @POINTER_TYPE, align 4
  %20 = load i32, i32* @INTEGER_TYPE, align 4
  %21 = load i32, i32* @VOID_TYPE, align 4
  %22 = call i32 @validate_arglist(i64 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %176

25:                                               ; preds = %5
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @TREE_VALUE(i64 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @TREE_CHAIN(i64 %28)
  %30 = call i64 @TREE_VALUE(i64 %29)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @TREE_CHAIN(i64 %31)
  %33 = call i64 @TREE_CHAIN(i64 %32)
  %34 = call i64 @TREE_VALUE(i64 %33)
  store i64 %34, i64* %14, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @BUILT_IN_STRCPY_CHK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %25
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @operand_equal_p(i64 %39, i64 %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @TREE_TYPE(i64 %44)
  %46 = call i64 @TREE_TYPE(i64 %45)
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @fold_convert(i64 %46, i64 %47)
  store i64 %48, i64* %6, align 8
  br label %176

49:                                               ; preds = %38, %25
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @host_integerp(i64 %50, i32 1)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i64 0, i64* %6, align 8
  br label %176

54:                                               ; preds = %49
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @integer_all_onesp(i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %149, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %13, align 8
  %60 = call i64 @c_strlen(i64 %59, i32 1)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @host_integerp(i64 %64, i32 1)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %140, label %67

67:                                               ; preds = %63, %58
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @NULL_TREE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @host_integerp(i64 %72, i32 1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %139, label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @BUILT_IN_STPCPY_CHK, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i64 0, i64* %6, align 8
  br label %176

83:                                               ; preds = %79
  %84 = load i64*, i64** @built_in_decls, align 8
  %85 = load i32, i32* @BUILT_IN_STRCPY_CHK, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %16, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  store i64 0, i64* %6, align 8
  br label %176

92:                                               ; preds = %83
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i64 @build_function_call_expr(i64 %93, i64 %94)
  store i64 %95, i64* %6, align 8
  br label %176

96:                                               ; preds = %75
  %97 = load i64, i64* %15, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i64, i64* %15, align 8
  %101 = call i64 @TREE_SIDE_EFFECTS(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %96
  store i64 0, i64* %6, align 8
  br label %176

104:                                              ; preds = %99
  %105 = load i64*, i64** @built_in_decls, align 8
  %106 = load i64, i64* @BUILT_IN_MEMCPY_CHK, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %16, align 8
  %109 = load i64, i64* %16, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  store i64 0, i64* %6, align 8
  br label %176

112:                                              ; preds = %104
  %113 = load i32, i32* @PLUS_EXPR, align 4
  %114 = load i64, i64* %15, align 8
  %115 = call i32 @ssize_int(i32 1)
  %116 = call i64 @size_binop(i32 %113, i64 %114, i32 %115)
  store i64 %116, i64* %15, align 8
  %117 = load i64, i64* @NULL_TREE, align 8
  %118 = load i64, i64* %14, align 8
  %119 = call i64 @build_tree_list(i64 %117, i64 %118)
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* @NULL_TREE, align 8
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i64 @tree_cons(i64 %120, i64 %121, i64 %122)
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* @NULL_TREE, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i64 @tree_cons(i64 %124, i64 %125, i64 %126)
  store i64 %127, i64* %8, align 8
  %128 = load i64, i64* @NULL_TREE, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i64 @tree_cons(i64 %128, i64 %129, i64 %130)
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %7, align 8
  %133 = call i64 @TREE_TYPE(i64 %132)
  %134 = call i64 @TREE_TYPE(i64 %133)
  %135 = load i64, i64* %16, align 8
  %136 = load i64, i64* %8, align 8
  %137 = call i64 @build_function_call_expr(i64 %135, i64 %136)
  %138 = call i64 @fold_convert(i64 %134, i64 %137)
  store i64 %138, i64* %6, align 8
  br label %176

139:                                              ; preds = %71
  br label %142

140:                                              ; preds = %63
  %141 = load i64, i64* %15, align 8
  store i64 %141, i64* %9, align 8
  br label %142

142:                                              ; preds = %140, %139
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %14, align 8
  %145 = call i32 @tree_int_cst_lt(i64 %143, i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  store i64 0, i64* %6, align 8
  br label %176

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %54
  %150 = load i64, i64* @NULL_TREE, align 8
  %151 = load i64, i64* %13, align 8
  %152 = call i64 @build_tree_list(i64 %150, i64 %151)
  store i64 %152, i64* %8, align 8
  %153 = load i64, i64* @NULL_TREE, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call i64 @tree_cons(i64 %153, i64 %154, i64 %155)
  store i64 %156, i64* %8, align 8
  %157 = load i64*, i64** @built_in_decls, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @BUILT_IN_STPCPY_CHK, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = load i64, i64* @BUILT_IN_STPCPY, align 8
  br label %165

163:                                              ; preds = %149
  %164 = load i64, i64* @BUILT_IN_STRCPY, align 8
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i64 [ %162, %161 ], [ %164, %163 ]
  %167 = getelementptr inbounds i64, i64* %157, i64 %166
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %16, align 8
  %169 = load i64, i64* %16, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %165
  store i64 0, i64* %6, align 8
  br label %176

172:                                              ; preds = %165
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* %8, align 8
  %175 = call i64 @build_function_call_expr(i64 %173, i64 %174)
  store i64 %175, i64* %6, align 8
  br label %176

176:                                              ; preds = %172, %171, %147, %112, %111, %103, %92, %91, %82, %53, %43, %24
  %177 = load i64, i64* %6, align 8
  ret i64 %177
}

declare dso_local i32 @validate_arglist(i64, i32, i32, i32, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @operand_equal_p(i64, i64, i32) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @host_integerp(i64, i32) #1

declare dso_local i32 @integer_all_onesp(i64) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @size_binop(i32, i64, i32) #1

declare dso_local i32 @ssize_int(i32) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i32 @tree_int_cst_lt(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
