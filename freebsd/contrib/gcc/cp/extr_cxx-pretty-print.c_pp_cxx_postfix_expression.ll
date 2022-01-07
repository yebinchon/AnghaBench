; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_postfix_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_postfix_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }

@ADDR_EXPR = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i32 0, align 4
@POINTER_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"dynamic_cast\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"static_cast\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"reinterpret_cast\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"const_cast\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"typeid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32)* @pp_cxx_postfix_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_postfix_expression(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TREE_CODE(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %213 [
    i32 146, label %13
    i32 143, label %13
    i32 144, label %115
    i32 128, label %115
    i32 135, label %115
    i32 138, label %115
    i32 137, label %115
    i32 136, label %115
    i32 141, label %115
    i32 130, label %115
    i32 132, label %115
    i32 140, label %119
    i32 131, label %119
    i32 133, label %119
    i32 142, label %119
    i32 139, label %159
    i32 129, label %168
    i32 134, label %189
    i32 145, label %207
  ]

13:                                               ; preds = %2, %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @TREE_OPERAND(i32 %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_OPERAND(i32 %16, i32 1)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TREE_CODE(i32 %21)
  %23 = load i32, i32* @ADDR_EXPR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @TREE_OPERAND(i32 %26, i32 0)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @TREE_CODE(i32 %29)
  %31 = icmp ne i32 %30, 137
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %93

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 146
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @AGGR_INIT_VIA_CTOR_P(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @TREE_OPERAND(i32 %45, i32 2)
  br label %50

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @TREE_VALUE(i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i32 [ %46, %44 ], [ %49, %47 ]
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %57, %50
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @TREE_CODE(i32 %53)
  %55 = load i32, i32* @NOP_EXPR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @TREE_OPERAND(i32 %58, i32 0)
  store i32 %59, i32* %9, align 4
  br label %52

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @TREE_CODE(i32 %61)
  %63 = load i32, i32* @ADDR_EXPR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @TREE_OPERAND(i32 %66, i32 0)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @TREE_TYPE(i32 %69)
  %71 = call i32 @TREE_CODE(i32 %70)
  %72 = load i32, i32* @POINTER_TYPE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %76 = load i32, i32* %9, align 4
  call void @pp_cxx_postfix_expression(%struct.TYPE_20__* %75, i32 %76)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = call i32 @pp_cxx_dot(%struct.TYPE_20__* %77)
  br label %84

79:                                               ; preds = %68
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %81 = load i32, i32* %9, align 4
  call void @pp_cxx_postfix_expression(%struct.TYPE_20__* %80, i32 %81)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = call i32 @pp_cxx_arrow(%struct.TYPE_20__* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @TREE_CHAIN(i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @TREE_TYPE(i32 %87)
  %89 = call i32 @strip_pointer_operator(i32 %88)
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %33
  br label %93

93:                                               ; preds = %92, %32
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %95 = load i32, i32* %6, align 4
  call void @pp_cxx_postfix_expression(%struct.TYPE_20__* %94, i32 %95)
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @pp_cxx_call_argument_list(%struct.TYPE_20__* %99, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 146
  br i1 %103, label %104, label %114

104:                                              ; preds = %93
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @AGGR_INIT_VIA_CTOR_P(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = call i32 @pp_cxx_separate_with(%struct.TYPE_20__* %109, i8 signext 44)
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @TREE_OPERAND(i32 %112, i32 2)
  call void @pp_cxx_postfix_expression(%struct.TYPE_20__* %111, i32 %113)
  br label %114

114:                                              ; preds = %108, %104, %93
  br label %218

115:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @pp_cxx_primary_expression(%struct.TYPE_20__* %116, i32 %117)
  br label %218

119:                                              ; preds = %2, %2, %2, %2
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, 140
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %124 = call i32 @pp_cxx_identifier(%struct.TYPE_20__* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %142

125:                                              ; preds = %119
  %126 = load i32, i32* %5, align 4
  %127 = icmp eq i32 %126, 131
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = call i32 @pp_cxx_identifier(%struct.TYPE_20__* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %141

131:                                              ; preds = %125
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 133
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %136 = call i32 @pp_cxx_identifier(%struct.TYPE_20__* %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %140

137:                                              ; preds = %131
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %139 = call i32 @pp_cxx_identifier(%struct.TYPE_20__* %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %128
  br label %142

142:                                              ; preds = %141, %122
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %144 = call i32 @pp_cxx_begin_template_argument_list(%struct.TYPE_20__* %143)
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @TREE_TYPE(i32 %146)
  %148 = call i32 @pp_cxx_type_id(%struct.TYPE_20__* %145, i32 %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %150 = call i32 @pp_cxx_end_template_argument_list(%struct.TYPE_20__* %149)
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %152 = call i32 @pp_left_paren(%struct.TYPE_20__* %151)
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @TREE_OPERAND(i32 %154, i32 0)
  %156 = call i32 @pp_cxx_expression(%struct.TYPE_20__* %153, i32 %155)
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %158 = call i32 @pp_right_paren(%struct.TYPE_20__* %157)
  br label %218

159:                                              ; preds = %2
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @TREE_TYPE(i32 %161)
  %163 = call i32 @pp_cxx_type_id(%struct.TYPE_20__* %160, i32 %162)
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %165 = call i32 @pp_left_paren(%struct.TYPE_20__* %164)
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %167 = call i32 @pp_right_paren(%struct.TYPE_20__* %166)
  br label %218

168:                                              ; preds = %2
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @TREE_OPERAND(i32 %169, i32 0)
  store i32 %170, i32* %4, align 4
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %172 = call i32 @pp_cxx_identifier(%struct.TYPE_20__* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %174 = call i32 @pp_left_paren(%struct.TYPE_20__* %173)
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @TYPE_P(i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %168
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @pp_cxx_type_id(%struct.TYPE_20__* %179, i32 %180)
  br label %186

182:                                              ; preds = %168
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @pp_cxx_expression(%struct.TYPE_20__* %183, i32 %184)
  br label %186

186:                                              ; preds = %182, %178
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %188 = call i32 @pp_right_paren(%struct.TYPE_20__* %187)
  br label %218

189:                                              ; preds = %2
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @TREE_OPERAND(i32 %191, i32 0)
  call void @pp_cxx_postfix_expression(%struct.TYPE_20__* %190, i32 %192)
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %194 = call i32 @pp_cxx_dot(%struct.TYPE_20__* %193)
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @TREE_OPERAND(i32 %196, i32 1)
  %198 = call i32 @pp_cxx_qualified_id(%struct.TYPE_20__* %195, i32 %197)
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %200 = call i32 @pp_cxx_colon_colon(%struct.TYPE_20__* %199)
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %202 = call i32 @pp_complement(%struct.TYPE_20__* %201)
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @TREE_OPERAND(i32 %204, i32 2)
  %206 = call i32 @pp_cxx_unqualified_id(%struct.TYPE_20__* %203, i32 %205)
  br label %218

207:                                              ; preds = %2
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %209 = load i32, i32* %4, align 4
  %210 = call i32 @TREE_OPERAND(i32 %209, i32 0)
  call void @pp_cxx_postfix_expression(%struct.TYPE_20__* %208, i32 %210)
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %212 = call i32 @pp_cxx_arrow(%struct.TYPE_20__* %211)
  br label %218

213:                                              ; preds = %2
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %215 = call i32 @pp_c_base(%struct.TYPE_20__* %214)
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @pp_c_postfix_expression(i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %213, %207, %189, %186, %159, %142, %115, %114
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i32) #1

declare dso_local i32 @AGGR_INIT_VIA_CTOR_P(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_cxx_dot(%struct.TYPE_20__*) #1

declare dso_local i32 @pp_cxx_arrow(%struct.TYPE_20__*) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @strip_pointer_operator(i32) #1

declare dso_local i32 @pp_cxx_call_argument_list(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pp_cxx_separate_with(%struct.TYPE_20__*, i8 signext) #1

declare dso_local i32 @pp_cxx_primary_expression(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pp_cxx_identifier(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @pp_cxx_begin_template_argument_list(%struct.TYPE_20__*) #1

declare dso_local i32 @pp_cxx_type_id(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pp_cxx_end_template_argument_list(%struct.TYPE_20__*) #1

declare dso_local i32 @pp_left_paren(%struct.TYPE_20__*) #1

declare dso_local i32 @pp_cxx_expression(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pp_right_paren(%struct.TYPE_20__*) #1

declare dso_local i32 @TYPE_P(i32) #1

declare dso_local i32 @pp_cxx_qualified_id(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pp_cxx_colon_colon(%struct.TYPE_20__*) #1

declare dso_local i32 @pp_complement(%struct.TYPE_20__*) #1

declare dso_local i32 @pp_cxx_unqualified_id(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pp_c_postfix_expression(i32, i32) #1

declare dso_local i32 @pp_c_base(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
