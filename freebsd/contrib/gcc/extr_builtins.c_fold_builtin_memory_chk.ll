; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_memory_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_memory_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_MEMCPY = common dso_local global i64 0, align 8
@BUILT_IN_MEMPCPY = common dso_local global i64 0, align 8
@BUILT_IN_MEMMOVE = common dso_local global i64 0, align 8
@BUILT_IN_MEMSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fold_builtin_memory_chk(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
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
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* @POINTER_TYPE, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @INTEGER_TYPE, align 4
  br label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @POINTER_TYPE, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load i32, i32* @INTEGER_TYPE, align 4
  %29 = load i32, i32* @INTEGER_TYPE, align 4
  %30 = load i32, i32* @VOID_TYPE, align 4
  %31 = call i32 @validate_arglist(i64 %18, i32 %19, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %174

34:                                               ; preds = %26
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @TREE_VALUE(i64 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @TREE_CHAIN(i64 %37)
  %39 = call i64 @TREE_VALUE(i64 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @TREE_CHAIN(i64 %40)
  %42 = call i64 @TREE_CHAIN(i64 %41)
  %43 = call i64 @TREE_VALUE(i64 %42)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @TREE_CHAIN(i64 %44)
  %46 = call i64 @TREE_CHAIN(i64 %45)
  %47 = call i64 @TREE_CHAIN(i64 %46)
  %48 = call i64 @TREE_VALUE(i64 %47)
  store i64 %48, i64* %15, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 128
  br i1 %50, label %51, label %82

51:                                               ; preds = %34
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @operand_equal_p(i64 %52, i64 %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 129
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @TREE_TYPE(i64 %60)
  %62 = call i64 @TREE_TYPE(i64 %61)
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %14, align 8
  %65 = call i64 @omit_one_operand(i64 %62, i64 %63, i64 %64)
  store i64 %65, i64* %6, align 8
  br label %174

66:                                               ; preds = %56
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @TREE_TYPE(i64 %67)
  %69 = load i64, i64* %14, align 8
  %70 = call i64 @fold_convert(i64 %68, i64 %69)
  store i64 %70, i64* %17, align 8
  %71 = load i32, i32* @PLUS_EXPR, align 4
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @TREE_TYPE(i64 %72)
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %17, align 8
  %76 = call i64 @fold_build2(i32 %71, i64 %73, i64 %74, i64 %75)
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @TREE_TYPE(i64 %77)
  %79 = call i64 @TREE_TYPE(i64 %78)
  %80 = load i64, i64* %17, align 8
  %81 = call i64 @fold_convert(i64 %79, i64 %80)
  store i64 %81, i64* %6, align 8
  br label %174

82:                                               ; preds = %51, %34
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @host_integerp(i64 %83, i32 1)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i64 0, i64* %6, align 8
  br label %174

87:                                               ; preds = %82
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @integer_all_onesp(i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %131, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @host_integerp(i64 %92, i32 1)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %122, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @NULL_TREE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @host_integerp(i64 %100, i32 1)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 129
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i64*, i64** @built_in_decls, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 131
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %16, align 8
  %113 = load i64, i64* %16, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  store i64 0, i64* %6, align 8
  br label %174

116:                                              ; preds = %109
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call i64 @build_function_call_expr(i64 %117, i64 %118)
  store i64 %119, i64* %6, align 8
  br label %174

120:                                              ; preds = %106, %103
  store i64 0, i64* %6, align 8
  br label %174

121:                                              ; preds = %99
  br label %124

122:                                              ; preds = %91
  %123 = load i64, i64* %14, align 8
  store i64 %123, i64* %9, align 8
  br label %124

124:                                              ; preds = %122, %121
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i64 @tree_int_cst_lt(i64 %125, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i64 0, i64* %6, align 8
  br label %174

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %87
  %132 = load i64, i64* @NULL_TREE, align 8
  %133 = load i64, i64* %14, align 8
  %134 = call i64 @build_tree_list(i64 %132, i64 %133)
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* @NULL_TREE, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %8, align 8
  %138 = call i64 @tree_cons(i64 %135, i64 %136, i64 %137)
  store i64 %138, i64* %8, align 8
  %139 = load i64, i64* @NULL_TREE, align 8
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* %8, align 8
  %142 = call i64 @tree_cons(i64 %139, i64 %140, i64 %141)
  store i64 %142, i64* %8, align 8
  %143 = load i64, i64* @NULL_TREE, align 8
  store i64 %143, i64* %16, align 8
  %144 = load i32, i32* %11, align 4
  switch i32 %144, label %165 [
    i32 131, label %145
    i32 129, label %150
    i32 130, label %155
    i32 128, label %160
  ]

145:                                              ; preds = %131
  %146 = load i64*, i64** @built_in_decls, align 8
  %147 = load i64, i64* @BUILT_IN_MEMCPY, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %16, align 8
  br label %166

150:                                              ; preds = %131
  %151 = load i64*, i64** @built_in_decls, align 8
  %152 = load i64, i64* @BUILT_IN_MEMPCPY, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %16, align 8
  br label %166

155:                                              ; preds = %131
  %156 = load i64*, i64** @built_in_decls, align 8
  %157 = load i64, i64* @BUILT_IN_MEMMOVE, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %16, align 8
  br label %166

160:                                              ; preds = %131
  %161 = load i64*, i64** @built_in_decls, align 8
  %162 = load i64, i64* @BUILT_IN_MEMSET, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %16, align 8
  br label %166

165:                                              ; preds = %131
  br label %166

166:                                              ; preds = %165, %160, %155, %150, %145
  %167 = load i64, i64* %16, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %166
  store i64 0, i64* %6, align 8
  br label %174

170:                                              ; preds = %166
  %171 = load i64, i64* %16, align 8
  %172 = load i64, i64* %8, align 8
  %173 = call i64 @build_function_call_expr(i64 %171, i64 %172)
  store i64 %173, i64* %6, align 8
  br label %174

174:                                              ; preds = %170, %169, %129, %120, %116, %115, %86, %66, %59, %33
  %175 = load i64, i64* %6, align 8
  ret i64 %175
}

declare dso_local i32 @validate_arglist(i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @operand_equal_p(i64, i64, i32) #1

declare dso_local i64 @omit_one_operand(i64, i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i32 @host_integerp(i64, i32) #1

declare dso_local i32 @integer_all_onesp(i64) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
