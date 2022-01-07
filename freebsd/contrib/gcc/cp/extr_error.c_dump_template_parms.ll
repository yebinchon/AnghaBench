; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_template_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_template_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@TFF_TEMPLATE_NAME = common dso_local global i32 0, align 4
@TFF_CLASS_KEY_OR_ENUM = common dso_local global i32 0, align 4
@cxx_pp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"<template parameter error>\00", align 1
@TREE_LIST = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@TFF_DECL_SPECIFIERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @dump_template_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_template_parms(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @TI_ARGS(i64 %19)
  br label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @NULL_TREE, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i64 [ %20, %18 ], [ %22, %21 ]
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TFF_TEMPLATE_NAME, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %153

33:                                               ; preds = %27, %23
  %34 = load i32, i32* @TFF_CLASS_KEY_OR_ENUM, align 4
  %35 = load i32, i32* @TFF_TEMPLATE_NAME, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @cxx_pp, align 4
  %41 = call i32 @pp_cxx_begin_template_argument_list(i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @TMPL_ARGS_HAVE_MULTIPLE_LEVELS(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @TREE_VEC_LENGTH(i64 %53)
  %55 = sub nsw i32 %54, 1
  %56 = call i64 @TREE_VEC_ELT(i64 %52, i32 %55)
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %51, %47
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @TREE_VEC_LENGTH(i64 %58)
  store i32 %59, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %84, %57
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @TREE_VEC_ELT(i64 %65, i32 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @cxx_pp, align 4
  %72 = call i32 @pp_separate_with_comma(i32 %71)
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @cxx_pp, align 4
  %78 = call i32 @pp_identifier(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %83

79:                                               ; preds = %73
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @dump_template_argument(i64 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %60

87:                                               ; preds = %60
  br label %150

88:                                               ; preds = %44, %33
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %149

91:                                               ; preds = %88
  %92 = load i64, i64* %4, align 8
  %93 = call i64 @TI_TEMPLATE(i64 %92)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i64 @DECL_TEMPLATE_PARMS(i64 %94)
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @TREE_CODE(i64 %96)
  %98 = load i64, i64* @TREE_LIST, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i64, i64* %12, align 8
  %102 = call i64 @TREE_VALUE(i64 %101)
  br label %105

103:                                              ; preds = %91
  %104 = load i64, i64* @NULL_TREE, align 8
  br label %105

105:                                              ; preds = %103, %100
  %106 = phi i64 [ %102, %100 ], [ %104, %103 ]
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @TREE_VEC_LENGTH(i64 %110)
  br label %113

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %109
  %114 = phi i32 [ %111, %109 ], [ 0, %112 ]
  store i32 %114, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %115

115:                                              ; preds = %145, %113
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %115
  %120 = load i64, i64* %12, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i64 @TREE_VEC_ELT(i64 %120, i32 %121)
  %123 = load i64, i64* @error_mark_node, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @cxx_pp, align 4
  %127 = call i32 @pp_identifier(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %145

128:                                              ; preds = %119
  %129 = load i64, i64* %12, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i64 @TREE_VEC_ELT(i64 %129, i32 %130)
  %132 = call i64 @TREE_VALUE(i64 %131)
  store i64 %132, i64* %15, align 8
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i32, i32* @cxx_pp, align 4
  %137 = call i32 @pp_separate_with_comma(i32 %136)
  br label %138

138:                                              ; preds = %135, %128
  %139 = load i64, i64* %15, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  %144 = call i32 @dump_decl(i64 %139, i32 %143)
  br label %145

145:                                              ; preds = %138, %125
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %115

148:                                              ; preds = %115
  br label %149

149:                                              ; preds = %148, %88
  br label %150

150:                                              ; preds = %149, %87
  %151 = load i32, i32* @cxx_pp, align 4
  %152 = call i32 @pp_cxx_end_template_argument_list(i32 %151)
  br label %153

153:                                              ; preds = %150, %32
  ret void
}

declare dso_local i64 @TI_ARGS(i64) #1

declare dso_local i32 @pp_cxx_begin_template_argument_list(i32) #1

declare dso_local i64 @TMPL_ARGS_HAVE_MULTIPLE_LEVELS(i64) #1

declare dso_local i64 @TREE_VEC_ELT(i64, i32) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i32 @pp_separate_with_comma(i32) #1

declare dso_local i32 @pp_identifier(i32, i8*) #1

declare dso_local i32 @dump_template_argument(i64, i32) #1

declare dso_local i64 @TI_TEMPLATE(i64) #1

declare dso_local i64 @DECL_TEMPLATE_PARMS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @dump_decl(i64, i32) #1

declare dso_local i32 @pp_cxx_end_template_argument_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
