; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_value_dependent_expression_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_value_dependent_expression_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i32 0, align 4
@TREE_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @value_dependent_expression_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @processing_template_decl, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %162

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @DECL_P(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @type_dependent_expression_p(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %162

18:                                               ; preds = %13, %9
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TREE_CODE(i32 %19)
  switch i32 %20, label %114 [
    i32 140, label %21
    i32 134, label %22
    i32 142, label %23
    i32 133, label %29
    i32 141, label %45
    i32 135, label %45
    i32 143, label %45
    i32 138, label %45
    i32 145, label %45
    i32 136, label %72
    i32 147, label %72
    i32 137, label %84
    i32 144, label %87
    i32 146, label %100
    i32 139, label %101
  ]

21:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %162

22:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %162

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @DECL_TEMPLATE_PARM_P(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %162

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %162

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @DECL_INITIAL(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @TREE_TYPE(i32 %34)
  %36 = call i32 @INTEGRAL_OR_ENUMERATION_TYPE_P(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @DECL_INITIAL(i32 %39)
  %41 = call i32 @value_dependent_expression_p(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %162

44:                                               ; preds = %38, %33, %29
  store i32 0, i32* %2, align 4
  br label %162

45:                                               ; preds = %18, %18, %18, %18, %18
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @TREE_TYPE(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dependent_type_p(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %162

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @TREE_OPERAND(i32 %53, i32 0)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @INTEGRAL_OR_ENUMERATION_TYPE_P(i32 %58)
  %60 = call i32 @gcc_assert(i32 %59)
  store i32 0, i32* %2, align 4
  br label %162

61:                                               ; preds = %52
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @TREE_CODE(i32 %62)
  %64 = load i32, i32* @TREE_LIST, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @any_value_dependent_elements_p(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %162

69:                                               ; preds = %61
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @value_dependent_expression_p(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %162

72:                                               ; preds = %18, %18
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @TREE_OPERAND(i32 %73, i32 0)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @TYPE_P(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @dependent_type_p(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %162

81:                                               ; preds = %72
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @type_dependent_expression_p(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %162

84:                                               ; preds = %18
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @dependent_scope_ref_p(i32 %85, i32 (i32)* @value_dependent_expression_p)
  store i32 %86, i32* %2, align 4
  br label %162

87:                                               ; preds = %18
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @TREE_OPERAND(i32 %88, i32 0)
  %90 = call i32 @value_dependent_expression_p(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @TREE_OPERAND(i32 %93, i32 1)
  %95 = call i32 @value_dependent_expression_p(i32 %94)
  %96 = icmp ne i32 %95, 0
  br label %97

97:                                               ; preds = %92, %87
  %98 = phi i1 [ true, %87 ], [ %96, %92 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %2, align 4
  br label %162

100:                                              ; preds = %18
  store i32 1, i32* %2, align 4
  br label %162

101:                                              ; preds = %18
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @TREE_OPERAND(i32 %102, i32 0)
  %104 = call i32 @value_dependent_expression_p(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @TREE_OPERAND(i32 %107, i32 2)
  %109 = call i32 @value_dependent_expression_p(i32 %108)
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %106, %101
  %112 = phi i1 [ true, %101 ], [ %110, %106 ]
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %2, align 4
  br label %162

114:                                              ; preds = %18
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @TREE_CODE(i32 %115)
  %117 = call i32 @TREE_CODE_CLASS(i32 %116)
  switch i32 %117, label %159 [
    i32 129, label %118
    i32 128, label %118
    i32 131, label %122
    i32 132, label %122
    i32 130, label %135
  ]

118:                                              ; preds = %114, %114
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @TREE_OPERAND(i32 %119, i32 0)
  %121 = call i32 @value_dependent_expression_p(i32 %120)
  store i32 %121, i32* %2, align 4
  br label %162

122:                                              ; preds = %114, %114
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @TREE_OPERAND(i32 %123, i32 0)
  %125 = call i32 @value_dependent_expression_p(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @TREE_OPERAND(i32 %128, i32 1)
  %130 = call i32 @value_dependent_expression_p(i32 %129)
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %127, %122
  %133 = phi i1 [ true, %122 ], [ %131, %127 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %2, align 4
  br label %162

135:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %155, %135
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @TREE_CODE(i32 %138)
  %140 = call i32 @TREE_CODE_LENGTH(i32 %139)
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @TREE_OPERAND(i32 %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @TREE_OPERAND(i32 %148, i32 %149)
  %151 = call i32 @value_dependent_expression_p(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 1, i32* %2, align 4
  br label %162

154:                                              ; preds = %147, %142
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %5, align 4
  br label %136

158:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %162

159:                                              ; preds = %114
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %158, %153, %132, %118, %111, %100, %97, %84, %81, %78, %69, %66, %57, %51, %44, %43, %28, %27, %22, %21, %17, %8
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i32 @type_dependent_expression_p(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_TEMPLATE_PARM_P(i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i32 @INTEGRAL_OR_ENUMERATION_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @dependent_type_p(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @any_value_dependent_elements_p(i32) #1

declare dso_local i32 @TYPE_P(i32) #1

declare dso_local i32 @dependent_scope_ref_p(i32, i32 (i32)*) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @TREE_CODE_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
