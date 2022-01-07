; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_dependent_type_p_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_dependent_type_p_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMPLATE_TYPE_PARM = common dso_local global i64 0, align 8
@TEMPLATE_TEMPLATE_PARM = common dso_local global i64 0, align 8
@TYPENAME_TYPE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@METHOD_TYPE = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@BOUND_TEMPLATE_TEMPLATE_PARM = common dso_local global i64 0, align 8
@TYPEOF_TYPE = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @dependent_type_p_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dependent_type_p_r(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @TREE_CODE(i64 %6)
  %8 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @TEMPLATE_TEMPLATE_PARM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 1, i32* %2, align 4
  br label %169

16:                                               ; preds = %10
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @TYPENAME_TYPE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %169

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @TYPE_MAIN_VARIANT(i64 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @TYPE_PTR_TO_MEMBER_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @TYPE_PTRMEM_CLASS_TYPE(i64 %29)
  %31 = call i32 @dependent_type_p(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %34)
  %36 = call i32 @dependent_type_p(i64 %35)
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ true, %28 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %169

41:                                               ; preds = %22
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @TREE_CODE(i64 %42)
  %44 = load i64, i64* @POINTER_TYPE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @REFERENCE_TYPE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46, %41
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  %54 = call i32 @dependent_type_p(i64 %53)
  store i32 %54, i32* %2, align 4
  br label %169

55:                                               ; preds = %46
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @TREE_CODE(i64 %56)
  %58 = load i64, i64* @FUNCTION_TYPE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %3, align 8
  %62 = call i64 @TREE_CODE(i64 %61)
  %63 = load i64, i64* @METHOD_TYPE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %60, %55
  %66 = load i64, i64* %3, align 8
  %67 = call i64 @TREE_TYPE(i64 %66)
  %68 = call i32 @dependent_type_p(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %2, align 4
  br label %169

71:                                               ; preds = %65
  %72 = load i64, i64* %3, align 8
  %73 = call i64 @TYPE_ARG_TYPES(i64 %72)
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %84, %71
  %75 = load i64, i64* %5, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @TREE_VALUE(i64 %78)
  %80 = call i32 @dependent_type_p(i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 1, i32* %2, align 4
  br label %169

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @TREE_CHAIN(i64 %85)
  store i64 %86, i64* %5, align 8
  br label %74

87:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %169

88:                                               ; preds = %60
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %3, align 8
  %92 = call i64 @TREE_CODE(i64 %91)
  %93 = load i64, i64* @ARRAY_TYPE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = load i64, i64* %3, align 8
  %97 = call i64 @TYPE_DOMAIN(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i64, i64* %3, align 8
  %101 = call i64 @TYPE_DOMAIN(i64 %100)
  %102 = call i64 @TYPE_MAX_VALUE(i64 %101)
  %103 = call i64 @value_dependent_expression_p(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %3, align 8
  %107 = call i64 @TYPE_DOMAIN(i64 %106)
  %108 = call i64 @TYPE_MAX_VALUE(i64 %107)
  %109 = call i32 @type_dependent_expression_p(i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105, %99
  store i32 1, i32* %2, align 4
  br label %169

112:                                              ; preds = %105, %95
  %113 = load i64, i64* %3, align 8
  %114 = call i64 @TREE_TYPE(i64 %113)
  %115 = call i32 @dependent_type_p(i64 %114)
  store i32 %115, i32* %2, align 4
  br label %169

116:                                              ; preds = %90
  %117 = load i64, i64* %3, align 8
  %118 = call i64 @TREE_CODE(i64 %117)
  %119 = load i64, i64* @BOUND_TEMPLATE_TEMPLATE_PARM, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 1, i32* %2, align 4
  br label %169

122:                                              ; preds = %116
  %123 = load i64, i64* %3, align 8
  %124 = call i64 @CLASS_TYPE_P(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = load i64, i64* %3, align 8
  %128 = call i64 @CLASSTYPE_TEMPLATE_INFO(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i64, i64* %3, align 8
  %132 = call i32 @CLASSTYPE_TI_ARGS(i64 %131)
  %133 = call i32 @INNERMOST_TEMPLATE_ARGS(i32 %132)
  %134 = call i64 @any_dependent_template_arguments_p(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i32 1, i32* %2, align 4
  br label %169

137:                                              ; preds = %130, %126, %122
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %3, align 8
  %140 = call i64 @TREE_CODE(i64 %139)
  %141 = load i64, i64* @TYPEOF_TYPE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 1, i32* %2, align 4
  br label %169

144:                                              ; preds = %138
  %145 = load i64, i64* %3, align 8
  %146 = call i64 @TYPE_CONTEXT(i64 %145)
  store i64 %146, i64* %4, align 8
  %147 = load i64, i64* %4, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load i64, i64* %4, align 8
  %151 = call i64 @TYPE_P(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i64, i64* %4, align 8
  %155 = call i32 @dependent_type_p(i64 %154)
  store i32 %155, i32* %2, align 4
  br label %169

156:                                              ; preds = %149, %144
  %157 = load i64, i64* %4, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load i64, i64* %4, align 8
  %161 = call i64 @TREE_CODE(i64 %160)
  %162 = load i64, i64* @FUNCTION_DECL, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i64, i64* %4, align 8
  %166 = call i32 @type_dependent_expression_p(i64 %165)
  store i32 %166, i32* %2, align 4
  br label %169

167:                                              ; preds = %159, %156
  br label %168

168:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %164, %153, %143, %136, %121, %112, %111, %87, %82, %70, %51, %38, %21, %15
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TYPE_PTR_TO_MEMBER_P(i64) #1

declare dso_local i32 @dependent_type_p(i64) #1

declare dso_local i64 @TYPE_PTRMEM_CLASS_TYPE(i64) #1

declare dso_local i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_DOMAIN(i64) #1

declare dso_local i64 @value_dependent_expression_p(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i32 @type_dependent_expression_p(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INFO(i64) #1

declare dso_local i64 @any_dependent_template_arguments_p(i32) #1

declare dso_local i32 @INNERMOST_TEMPLATE_ARGS(i32) #1

declare dso_local i32 @CLASSTYPE_TI_ARGS(i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
