; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@cxx_pp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"<unresolved overloaded function type>\00", align 1
@TFF_CHASE_TYPEDEF = common dso_local global i32 0, align 4
@TFF_DECL_SPECIFIERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"typename\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"__typeof__\00", align 1
@TFF_EXPR_IN_PARENS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"<type error>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @dump_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_type(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %181

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TYPE_PTRMEMFUNC_P(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %117

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @TREE_CODE(i64 %16)
  switch i32 %17, label %174 [
    i32 130, label %18
    i32 136, label %21
    i32 149, label %25
    i32 137, label %29
    i32 142, label %33
    i32 131, label %33
    i32 152, label %33
    i32 133, label %37
    i32 140, label %56
    i32 146, label %56
    i32 148, label %63
    i32 143, label %63
    i32 128, label %63
    i32 155, label %63
    i32 153, label %63
    i32 129, label %63
    i32 139, label %67
    i32 154, label %81
    i32 138, label %98
    i32 157, label %116
    i32 144, label %116
    i32 156, label %116
    i32 141, label %116
    i32 145, label %116
    i32 150, label %118
    i32 147, label %118
    i32 135, label %125
    i32 132, label %146
    i32 134, label %158
    i32 151, label %178
  ]

18:                                               ; preds = %15
  %19 = load i32, i32* @cxx_pp, align 4
  %20 = call i32 @pp_identifier(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %181

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dump_parameters(i64 %22, i32 %23)
  br label %181

25:                                               ; preds = %15
  %26 = load i32, i32* @cxx_pp, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @pp_cxx_tree_identifier(i32 %26, i64 %27)
  br label %181

29:                                               ; preds = %15
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @BINFO_TYPE(i64 %30)
  %32 = load i32, i32* %4, align 4
  call void @dump_type(i64 %31, i32 %32)
  br label %181

33:                                               ; preds = %15, %15, %15
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dump_aggr_type(i64 %34, i32 %35)
  br label %181

37:                                               ; preds = %15
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @TFF_CHASE_TYPEDEF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @DECL_ORIGINAL_TYPE(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @DECL_ORIGINAL_TYPE(i64 %47)
  br label %52

49:                                               ; preds = %42
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @TREE_TYPE(i64 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i64 [ %48, %46 ], [ %51, %49 ]
  %54 = load i32, i32* %4, align 4
  call void @dump_type(i64 %53, i32 %54)
  br label %181

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %15, %15, %55
  %57 = load i64, i64* %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @dump_decl(i64 %57, i32 %61)
  br label %181

63:                                               ; preds = %15, %15, %15, %15, %15, %15
  %64 = load i32, i32* @cxx_pp, align 4
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @pp_type_specifier_seq(i32 %64, i64 %65)
  br label %181

67:                                               ; preds = %15
  %68 = load i64, i64* %3, align 8
  %69 = call i64 @TYPE_IDENTIFIER(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* @cxx_pp, align 4
  %73 = load i64, i64* %3, align 8
  %74 = call i64 @TYPE_IDENTIFIER(i64 %73)
  %75 = call i32 @pp_cxx_tree_identifier(i32 %72, i64 %74)
  br label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @cxx_pp, align 4
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @pp_cxx_canonical_template_parameter(i32 %77, i64 %78)
  br label %80

80:                                               ; preds = %76, %71
  br label %181

81:                                               ; preds = %15
  %82 = load i64, i64* %3, align 8
  %83 = call i64 @TYPE_TI_ARGS(i64 %82)
  store i64 %83, i64* %5, align 8
  %84 = load i32, i32* @cxx_pp, align 4
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @pp_cxx_cv_qualifier_seq(i32 %84, i64 %85)
  %87 = load i32, i32* @cxx_pp, align 4
  %88 = load i64, i64* %3, align 8
  %89 = call i64 @TYPE_IDENTIFIER(i64 %88)
  %90 = call i32 @pp_cxx_tree_identifier(i32 %87, i64 %89)
  %91 = load i32, i32* @cxx_pp, align 4
  %92 = call i32 @pp_cxx_begin_template_argument_list(i32 %91)
  %93 = load i64, i64* %5, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @dump_template_argument_list(i64 %93, i32 %94)
  %96 = load i32, i32* @cxx_pp, align 4
  %97 = call i32 @pp_cxx_end_template_argument_list(i32 %96)
  br label %181

98:                                               ; preds = %15
  %99 = load i32, i32* @cxx_pp, align 4
  %100 = load i64, i64* %3, align 8
  %101 = call i32 @pp_cxx_cv_qualifier_seq(i32 %99, i64 %100)
  %102 = load i64, i64* %3, align 8
  %103 = call i64 @TYPE_IDENTIFIER(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load i32, i32* @cxx_pp, align 4
  %107 = load i64, i64* %3, align 8
  %108 = call i64 @TYPE_IDENTIFIER(i64 %107)
  %109 = call i32 @pp_cxx_tree_identifier(i32 %106, i64 %108)
  br label %115

110:                                              ; preds = %98
  %111 = load i32, i32* @cxx_pp, align 4
  %112 = load i64, i64* %3, align 8
  %113 = call i64 @TEMPLATE_TYPE_PARM_INDEX(i64 %112)
  %114 = call i32 @pp_cxx_canonical_template_parameter(i32 %111, i64 %113)
  br label %115

115:                                              ; preds = %110, %105
  br label %181

116:                                              ; preds = %15, %15, %15, %15, %15
  br label %117

117:                                              ; preds = %116, %14
  br label %118

118:                                              ; preds = %15, %15, %117
  %119 = load i64, i64* %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @dump_type_prefix(i64 %119, i32 %120)
  %122 = load i64, i64* %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @dump_type_suffix(i64 %122, i32 %123)
  br label %181

125:                                              ; preds = %15
  %126 = load i32, i32* @cxx_pp, align 4
  %127 = load i64, i64* %3, align 8
  %128 = call i32 @pp_cxx_cv_qualifier_seq(i32 %126, i64 %127)
  %129 = load i32, i32* @cxx_pp, align 4
  %130 = load i64, i64* %3, align 8
  %131 = call i32 @TYPENAME_IS_ENUM_P(i64 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %140

134:                                              ; preds = %125
  %135 = load i64, i64* %3, align 8
  %136 = call i32 @TYPENAME_IS_CLASS_P(i64 %135)
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  br label %140

140:                                              ; preds = %134, %133
  %141 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %133 ], [ %139, %134 ]
  %142 = call i32 @pp_cxx_identifier(i32 %129, i8* %141)
  %143 = load i64, i64* %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @dump_typename(i64 %143, i32 %144)
  br label %181

146:                                              ; preds = %15
  %147 = load i64, i64* %3, align 8
  %148 = call i64 @TYPE_CONTEXT(i64 %147)
  %149 = load i32, i32* %4, align 4
  call void @dump_type(i64 %148, i32 %149)
  %150 = load i32, i32* @cxx_pp, align 4
  %151 = call i32 @pp_cxx_colon_colon(i32 %150)
  %152 = load i32, i32* @cxx_pp, align 4
  %153 = call i32 @pp_cxx_identifier(i32 %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i64, i64* %3, align 8
  %155 = call i32 @TYPE_NAME(i64 %154)
  %156 = call i64 @DECL_NAME(i32 %155)
  %157 = load i32, i32* %4, align 4
  call void @dump_type(i64 %156, i32 %157)
  br label %181

158:                                              ; preds = %15
  %159 = load i32, i32* @cxx_pp, align 4
  %160 = call i32 @pp_cxx_identifier(i32 %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %161 = load i32, i32* @cxx_pp, align 4
  %162 = call i32 @pp_cxx_whitespace(i32 %161)
  %163 = load i32, i32* @cxx_pp, align 4
  %164 = call i32 @pp_cxx_left_paren(i32 %163)
  %165 = load i64, i64* %3, align 8
  %166 = call i32 @TYPEOF_TYPE_EXPR(i64 %165)
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @TFF_EXPR_IN_PARENS, align 4
  %169 = xor i32 %168, -1
  %170 = and i32 %167, %169
  %171 = call i32 @dump_expr(i32 %166, i32 %170)
  %172 = load i32, i32* @cxx_pp, align 4
  %173 = call i32 @pp_cxx_right_paren(i32 %172)
  br label %181

174:                                              ; preds = %15
  %175 = load i32, i32* @cxx_pp, align 4
  %176 = load i64, i64* %3, align 8
  %177 = call i32 @pp_unsupported_tree(i32 %175, i64 %176)
  br label %178

178:                                              ; preds = %15, %174
  %179 = load i32, i32* @cxx_pp, align 4
  %180 = call i32 @pp_identifier(i32 %179, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %181

181:                                              ; preds = %9, %178, %158, %146, %140, %118, %115, %81, %80, %63, %56, %52, %33, %29, %25, %21, %18
  ret void
}

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @pp_identifier(i32, i8*) #1

declare dso_local i32 @dump_parameters(i64, i32) #1

declare dso_local i32 @pp_cxx_tree_identifier(i32, i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i32 @dump_aggr_type(i64, i32) #1

declare dso_local i64 @DECL_ORIGINAL_TYPE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @dump_decl(i64, i32) #1

declare dso_local i32 @pp_type_specifier_seq(i32, i64) #1

declare dso_local i64 @TYPE_IDENTIFIER(i64) #1

declare dso_local i32 @pp_cxx_canonical_template_parameter(i32, i64) #1

declare dso_local i64 @TYPE_TI_ARGS(i64) #1

declare dso_local i32 @pp_cxx_cv_qualifier_seq(i32, i64) #1

declare dso_local i32 @pp_cxx_begin_template_argument_list(i32) #1

declare dso_local i32 @dump_template_argument_list(i64, i32) #1

declare dso_local i32 @pp_cxx_end_template_argument_list(i32) #1

declare dso_local i64 @TEMPLATE_TYPE_PARM_INDEX(i64) #1

declare dso_local i32 @dump_type_prefix(i64, i32) #1

declare dso_local i32 @dump_type_suffix(i64, i32) #1

declare dso_local i32 @pp_cxx_identifier(i32, i8*) #1

declare dso_local i32 @TYPENAME_IS_ENUM_P(i64) #1

declare dso_local i32 @TYPENAME_IS_CLASS_P(i64) #1

declare dso_local i32 @dump_typename(i64, i32) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

declare dso_local i32 @pp_cxx_colon_colon(i32) #1

declare dso_local i64 @DECL_NAME(i32) #1

declare dso_local i32 @TYPE_NAME(i64) #1

declare dso_local i32 @pp_cxx_whitespace(i32) #1

declare dso_local i32 @pp_cxx_left_paren(i32) #1

declare dso_local i32 @dump_expr(i32, i32) #1

declare dso_local i32 @TYPEOF_TYPE_EXPR(i64) #1

declare dso_local i32 @pp_cxx_right_paren(i32) #1

declare dso_local i32 @pp_unsupported_tree(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
