; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_template_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_template_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TFF_TEMPLATE_HEADER = common dso_local global i32 0, align 4
@cxx_pp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"template\00", align 1
@TFF_DECL_SPECIFIERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@TYPE_DECL = common dso_local global i64 0, align 8
@TFF_CLASS_KEY_OR_ENUM = common dso_local global i32 0, align 4
@TFF_TEMPLATE_NAME = common dso_local global i32 0, align 4
@VAR_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @dump_template_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_template_decl(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @DECL_TEMPLATE_PARMS(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TFF_TEMPLATE_HEADER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @nreverse(i64 %17)
  store i64 %18, i64* %5, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %58, %16
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @INNERMOST_TEMPLATE_PARMS(i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @TREE_VEC_LENGTH(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @cxx_pp, align 4
  %28 = call i32 @pp_cxx_identifier(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @cxx_pp, align 4
  %30 = call i32 @pp_cxx_begin_template_argument_list(i32 %29)
  %31 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %50, %22
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @cxx_pp, align 4
  %43 = call i32 @pp_separate_with_comma(i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @TREE_VEC_ELT(i64 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dump_template_parameter(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %34

53:                                               ; preds = %34
  %54 = load i32, i32* @cxx_pp, align 4
  %55 = call i32 @pp_cxx_end_template_argument_list(i32 %54)
  %56 = load i32, i32* @cxx_pp, align 4
  %57 = call i32 @pp_cxx_whitespace(i32 %56)
  br label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @TREE_CHAIN(i64 %59)
  store i64 %60, i64* %6, align 8
  br label %19

61:                                               ; preds = %19
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @nreverse(i64 %62)
  %64 = load i64, i64* %3, align 8
  %65 = call i64 @DECL_TEMPLATE_TEMPLATE_PARM_P(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @cxx_pp, align 4
  %69 = call i32 @pp_cxx_identifier(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %70, %2
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @DECL_TEMPLATE_RESULT(i64 %72)
  %74 = call i64 @TREE_CODE(i32 %73)
  %75 = load i64, i64* @TYPE_DECL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @TREE_TYPE(i64 %78)
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @TFF_CLASS_KEY_OR_ENUM, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = load i32, i32* @TFF_TEMPLATE_NAME, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i32, i32* @TFF_CLASS_KEY_OR_ENUM, align 4
  br label %93

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = or i32 %85, %94
  %96 = call i32 @dump_type(i32 %79, i32 %95)
  br label %144

97:                                               ; preds = %71
  %98 = load i64, i64* %3, align 8
  %99 = call i32 @DECL_TEMPLATE_RESULT(i64 %98)
  %100 = call i64 @TREE_CODE(i32 %99)
  %101 = load i64, i64* @VAR_DECL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i64, i64* %3, align 8
  %105 = call i32 @DECL_TEMPLATE_RESULT(i64 %104)
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @TFF_TEMPLATE_NAME, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @dump_decl(i32 %105, i32 %108)
  br label %143

110:                                              ; preds = %97
  %111 = load i64, i64* %3, align 8
  %112 = call i32 @TREE_TYPE(i64 %111)
  %113 = call i32 @gcc_assert(i32 %112)
  %114 = load i64, i64* %3, align 8
  %115 = call i32 @NEXT_CODE(i64 %114)
  switch i32 %115, label %122 [
    i32 128, label %116
    i32 129, label %116
  ]

116:                                              ; preds = %110, %110
  %117 = load i64, i64* %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @TFF_TEMPLATE_NAME, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @dump_function_decl(i64 %117, i32 %120)
  br label %142

122:                                              ; preds = %110
  %123 = load i64, i64* %3, align 8
  %124 = call i32 @TREE_TYPE(i64 %123)
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @TFF_CLASS_KEY_OR_ENUM, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, %127
  %129 = load i32, i32* @TFF_TEMPLATE_NAME, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i32, i32* @TFF_CLASS_KEY_OR_ENUM, align 4
  br label %138

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i32 [ %136, %135 ], [ 0, %137 ]
  %140 = or i32 %130, %139
  %141 = call i32 @dump_type(i32 %124, i32 %140)
  br label %142

142:                                              ; preds = %138, %116
  br label %143

143:                                              ; preds = %142, %103
  br label %144

144:                                              ; preds = %143, %93
  ret void
}

declare dso_local i64 @DECL_TEMPLATE_PARMS(i64) #1

declare dso_local i64 @nreverse(i64) #1

declare dso_local i64 @INNERMOST_TEMPLATE_PARMS(i64) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i32 @pp_cxx_identifier(i32, i8*) #1

declare dso_local i32 @pp_cxx_begin_template_argument_list(i32) #1

declare dso_local i32 @pp_separate_with_comma(i32) #1

declare dso_local i32 @dump_template_parameter(i32, i32) #1

declare dso_local i32 @TREE_VEC_ELT(i64, i32) #1

declare dso_local i32 @pp_cxx_end_template_argument_list(i32) #1

declare dso_local i32 @pp_cxx_whitespace(i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @DECL_TEMPLATE_TEMPLATE_PARM_P(i64) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_TEMPLATE_RESULT(i64) #1

declare dso_local i32 @dump_type(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @dump_decl(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @NEXT_CODE(i64) #1

declare dso_local i32 @dump_function_decl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
