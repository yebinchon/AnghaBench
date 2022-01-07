; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_sprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_sprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_percent = common dso_local global i32 0, align 4
@implicit_built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_STRCPY = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@target_percent_s = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @expand_builtin_sprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_builtin_sprintf(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %169

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @TREE_VALUE(i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @TREE_TYPE(i64 %24)
  %26 = call i32 @POINTER_TYPE_P(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  br label %169

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @TREE_CHAIN(i64 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i64 0, i64* %4, align 8
  br label %169

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @TREE_VALUE(i64 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @TREE_TYPE(i64 %38)
  %40 = call i32 @POINTER_TYPE_P(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  br label %169

43:                                               ; preds = %35
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @TREE_CHAIN(i64 %44)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i8* @c_getstr(i64 %46)
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i64 0, i64* %4, align 8
  br label %169

51:                                               ; preds = %43
  %52 = call i32 (...) @init_target_chars()
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i64 0, i64* %4, align 8
  br label %169

55:                                               ; preds = %51
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @target_percent, align 4
  %58 = call i64 @strchr(i8* %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %55
  %61 = load i64*, i64** @implicit_built_in_decls, align 8
  %62 = load i64, i64* @BUILT_IN_STRCPY, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %12, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67, %60
  store i64 0, i64* %4, align 8
  br label %169

71:                                               ; preds = %67
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @build_function_call_expr(i64 %72, i64 %73)
  %75 = load i64, i64* @const0_rtx, align 8
  %76 = load i32, i32* @VOIDmode, align 4
  %77 = load i32, i32* @EXPAND_NORMAL, align 4
  %78 = call i64 @expand_expr(i64 %74, i64 %75, i32 %76, i32 %77)
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @const0_rtx, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i64, i64* @const0_rtx, align 8
  store i64 %83, i64* %4, align 8
  br label %169

84:                                               ; preds = %71
  %85 = load i64, i64* @NULL_TREE, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = call i64 @build_int_cst(i64 %85, i32 %87)
  store i64 %88, i64* %13, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @EXPAND_NORMAL, align 4
  %93 = call i64 @expand_expr(i64 %89, i64 %90, i32 %91, i32 %92)
  store i64 %93, i64* %4, align 8
  br label %169

94:                                               ; preds = %55
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* @target_percent_s, align 4
  %97 = call i64 @strcmp(i8* %95, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %167

99:                                               ; preds = %94
  %100 = load i64*, i64** @implicit_built_in_decls, align 8
  %101 = load i64, i64* @BUILT_IN_STRCPY, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %14, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  store i64 0, i64* %4, align 8
  br label %169

107:                                              ; preds = %99
  %108 = load i64, i64* %5, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64, i64* %5, align 8
  %112 = call i64 @TREE_CHAIN(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %107
  store i64 0, i64* %4, align 8
  br label %169

115:                                              ; preds = %110
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @TREE_VALUE(i64 %116)
  store i64 %117, i64* %15, align 8
  %118 = load i64, i64* %15, align 8
  %119 = call i32 @TREE_TYPE(i64 %118)
  %120 = call i32 @POINTER_TYPE_P(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  store i64 0, i64* %4, align 8
  br label %169

123:                                              ; preds = %115
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* @const0_rtx, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load i64, i64* %15, align 8
  %129 = call i64 @c_strlen(i64 %128, i32 1)
  store i64 %129, i64* %16, align 8
  %130 = load i64, i64* %16, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i64, i64* %16, align 8
  %134 = call i64 @TREE_CODE(i64 %133)
  %135 = load i64, i64* @INTEGER_CST, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132, %127
  store i64 0, i64* %4, align 8
  br label %169

138:                                              ; preds = %132
  br label %141

139:                                              ; preds = %123
  %140 = load i64, i64* @NULL_TREE, align 8
  store i64 %140, i64* %16, align 8
  br label %141

141:                                              ; preds = %139, %138
  %142 = load i64, i64* @NULL_TREE, align 8
  %143 = load i64, i64* %15, align 8
  %144 = call i64 @build_tree_list(i64 %142, i64 %143)
  store i64 %144, i64* %5, align 8
  %145 = load i64, i64* @NULL_TREE, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i64, i64* %5, align 8
  %148 = call i64 @tree_cons(i64 %145, i64 %146, i64 %147)
  store i64 %148, i64* %5, align 8
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* %5, align 8
  %151 = call i64 @build_function_call_expr(i64 %149, i64 %150)
  %152 = load i64, i64* @const0_rtx, align 8
  %153 = load i32, i32* @VOIDmode, align 4
  %154 = load i32, i32* @EXPAND_NORMAL, align 4
  %155 = call i64 @expand_expr(i64 %151, i64 %152, i32 %153, i32 %154)
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @const0_rtx, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %141
  %160 = load i64, i64* @const0_rtx, align 8
  store i64 %160, i64* %4, align 8
  br label %169

161:                                              ; preds = %141
  %162 = load i64, i64* %16, align 8
  %163 = load i64, i64* %6, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @EXPAND_NORMAL, align 4
  %166 = call i64 @expand_expr(i64 %162, i64 %163, i32 %164, i32 %165)
  store i64 %166, i64* %4, align 8
  br label %169

167:                                              ; preds = %94
  br label %168

168:                                              ; preds = %167
  store i64 0, i64* %4, align 8
  br label %169

169:                                              ; preds = %168, %161, %159, %137, %122, %114, %106, %84, %82, %70, %54, %50, %42, %34, %28, %20
  %170 = load i64, i64* %4, align 8
  ret i64 %170
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i8* @c_getstr(i64) #1

declare dso_local i32 @init_target_chars(...) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i64 @expand_expr(i64, i64, i32, i32) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
