; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_sprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_sprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@target_percent = common dso_local global i32 0, align 4
@implicit_built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_STRCPY = common dso_local global i64 0, align 8
@target_percent_s = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@BUILT_IN_SPRINTF = common dso_local global i64 0, align 8
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @fold_builtin_sprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_sprintf(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %10, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* @POINTER_TYPE, align 4
  %16 = load i32, i32* @POINTER_TYPE, align 4
  %17 = load i32, i32* @VOID_TYPE, align 4
  %18 = call i32 (i64, i32, i32, i32, ...) @validate_arglist(i64 %14, i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* @POINTER_TYPE, align 4
  %23 = load i32, i32* @POINTER_TYPE, align 4
  %24 = load i32, i32* @POINTER_TYPE, align 4
  %25 = load i32, i32* @VOID_TYPE, align 4
  %26 = call i32 (i64, i32, i32, i32, ...) @validate_arglist(i64 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = load i64, i64* @NULL_TREE, align 8
  store i64 %29, i64* %3, align 8
  br label %164

30:                                               ; preds = %20, %2
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @TREE_VALUE(i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @TREE_CHAIN(i64 %33)
  %35 = call i64 @TREE_VALUE(i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @TREE_CHAIN(i64 %36)
  %38 = call i64 @TREE_CHAIN(i64 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i8* @c_getstr(i64 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i64, i64* @NULL_TREE, align 8
  store i64 %44, i64* %3, align 8
  br label %164

45:                                               ; preds = %30
  %46 = load i64, i64* @NULL_TREE, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* @NULL_TREE, align 8
  store i64 %47, i64* %7, align 8
  %48 = call i32 (...) @init_target_chars()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i64 0, i64* %3, align 8
  br label %164

51:                                               ; preds = %45
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* @target_percent, align 4
  %54 = call i32* @strchr(i8* %52, i32 %53)
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %89

56:                                               ; preds = %51
  %57 = load i64*, i64** @implicit_built_in_decls, align 8
  %58 = load i64, i64* @BUILT_IN_STRCPY, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i64, i64* @NULL_TREE, align 8
  store i64 %64, i64* %3, align 8
  br label %164

65:                                               ; preds = %56
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* @NULL_TREE, align 8
  store i64 %69, i64* %3, align 8
  br label %164

70:                                               ; preds = %65
  %71 = load i64, i64* @NULL_TREE, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @build_tree_list(i64 %71, i64 %72)
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* @NULL_TREE, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i64 @tree_cons(i64 %74, i64 %75, i64 %76)
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @build_function_call_expr(i64 %78, i64 %79)
  store i64 %80, i64* %6, align 8
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %70
  %84 = load i64, i64* @NULL_TREE, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = call i64 @build_int_cst(i64 %84, i32 %86)
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %83, %70
  br label %141

89:                                               ; preds = %51
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %140

92:                                               ; preds = %89
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* @target_percent_s, align 4
  %95 = call i64 @strcmp(i8* %93, i32 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %140

97:                                               ; preds = %92
  %98 = load i64*, i64** @implicit_built_in_decls, align 8
  %99 = load i64, i64* @BUILT_IN_STRCPY, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %97
  %105 = load i64, i64* @NULL_TREE, align 8
  store i64 %105, i64* %3, align 8
  br label %164

106:                                              ; preds = %97
  %107 = load i64, i64* %4, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* @NULL_TREE, align 8
  store i64 %110, i64* %3, align 8
  br label %164

111:                                              ; preds = %106
  %112 = load i64, i64* %4, align 8
  %113 = call i64 @TREE_VALUE(i64 %112)
  store i64 %113, i64* %13, align 8
  %114 = load i64, i64* @NULL_TREE, align 8
  %115 = load i64, i64* %13, align 8
  %116 = call i64 @build_tree_list(i64 %114, i64 %115)
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* @NULL_TREE, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %4, align 8
  %120 = call i64 @tree_cons(i64 %117, i64 %118, i64 %119)
  store i64 %120, i64* %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %136, label %123

123:                                              ; preds = %111
  %124 = load i64, i64* %13, align 8
  %125 = call i64 @c_strlen(i64 %124, i32 1)
  store i64 %125, i64* %7, align 8
  %126 = load i64, i64* %7, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i64, i64* %7, align 8
  %130 = call i64 @TREE_CODE(i64 %129)
  %131 = load i64, i64* @INTEGER_CST, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %128, %123
  %134 = load i64, i64* @NULL_TREE, align 8
  store i64 %134, i64* %3, align 8
  br label %164

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %111
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %4, align 8
  %139 = call i64 @build_function_call_expr(i64 %137, i64 %138)
  store i64 %139, i64* %6, align 8
  br label %140

140:                                              ; preds = %136, %92, %89
  br label %141

141:                                              ; preds = %140, %88
  %142 = load i64, i64* %6, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  %145 = load i64, i64* %7, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load i64*, i64** @implicit_built_in_decls, align 8
  %149 = load i64, i64* @BUILT_IN_SPRINTF, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @TREE_TYPE(i64 %151)
  %153 = call i64 @TREE_TYPE(i64 %152)
  %154 = load i64, i64* %7, align 8
  %155 = call i64 @fold_convert(i64 %153, i64 %154)
  store i64 %155, i64* %7, align 8
  %156 = load i32, i32* @COMPOUND_EXPR, align 4
  %157 = load i64, i64* %7, align 8
  %158 = call i64 @TREE_TYPE(i64 %157)
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* %7, align 8
  %161 = call i64 @build2(i32 %156, i64 %158, i64 %159, i64 %160)
  store i64 %161, i64* %3, align 8
  br label %164

162:                                              ; preds = %144, %141
  %163 = load i64, i64* %6, align 8
  store i64 %163, i64* %3, align 8
  br label %164

164:                                              ; preds = %162, %147, %133, %109, %104, %68, %63, %50, %43, %28
  %165 = load i64, i64* %3, align 8
  ret i64 %165
}

declare dso_local i32 @validate_arglist(i64, i32, i32, i32, ...) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i8* @c_getstr(i64) #1

declare dso_local i32 @init_target_chars(...) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
