; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_convert_for_initialization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_convert_for_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOP_EXPR = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i32 0, align 4
@FUNCTION_TYPE = common dso_local global i32 0, align 4
@METHOD_TYPE = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i32 0, align 4
@warningcount = common dso_local global i32 0, align 4
@errorcount = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"in passing argument %P of %q+D\00", align 1
@CONV_IMPLICIT = common dso_local global i32 0, align 4
@CONV_FORCE_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_for_initialization(i64 %0, i64 %1, i64 %2, i32 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @TREE_CODE(i64 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @TREE_CODE(i64 %23)
  %25 = load i32, i32* @NOP_EXPR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %7
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @TREE_TYPE(i64 %28)
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @TREE_OPERAND(i64 %30, i32 0)
  %32 = call i64 @TREE_TYPE(i64 %31)
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @REFERENCE_TYPE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* %11, align 8
  %40 = call i64 @TREE_OPERAND(i64 %39, i32 0)
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %38, %34, %27, %7
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @error_mark_node, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @error_mark_node, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @TREE_CODE(i64 %50)
  %52 = load i32, i32* @TREE_LIST, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i64, i64* %11, align 8
  %56 = call i64 @TREE_VALUE(i64 %55)
  %57 = load i64, i64* @error_mark_node, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %45, %41
  %60 = load i64, i64* @error_mark_node, align 8
  store i64 %60, i64* %8, align 8
  br label %191

61:                                               ; preds = %54, %49
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @TREE_TYPE(i64 %62)
  %64 = call i32 @TREE_CODE(i64 %63)
  %65 = load i32, i32* @ARRAY_TYPE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @TREE_CODE(i64 %68)
  %70 = load i32, i32* @ARRAY_TYPE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @TREE_CODE(i64 %73)
  %75 = load i32, i32* @REFERENCE_TYPE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %106, label %77

77:                                               ; preds = %72
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @TREE_TYPE(i64 %78)
  %80 = call i32 @TREE_CODE(i64 %79)
  %81 = load i32, i32* @ARRAY_TYPE, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %106, label %83

83:                                               ; preds = %77, %67, %61
  %84 = load i64, i64* %11, align 8
  %85 = call i64 @TREE_TYPE(i64 %84)
  %86 = call i32 @TREE_CODE(i64 %85)
  %87 = load i32, i32* @FUNCTION_TYPE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @TREE_CODE(i64 %90)
  %92 = load i32, i32* @REFERENCE_TYPE, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %106, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %10, align 8
  %96 = call i64 @TREE_TYPE(i64 %95)
  %97 = call i32 @TREE_CODE(i64 %96)
  %98 = load i32, i32* @FUNCTION_TYPE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94, %83
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @TREE_TYPE(i64 %101)
  %103 = call i32 @TREE_CODE(i64 %102)
  %104 = load i32, i32* @METHOD_TYPE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100, %94, %89, %77, %72
  %107 = load i64, i64* %11, align 8
  %108 = call i64 @decay_conversion(i64 %107)
  store i64 %108, i64* %11, align 8
  br label %109

109:                                              ; preds = %106, %100
  %110 = load i64, i64* %11, align 8
  %111 = call i64 @TREE_TYPE(i64 %110)
  store i64 %111, i64* %17, align 8
  %112 = load i64, i64* %17, align 8
  %113 = call i32 @TREE_CODE(i64 %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @ERROR_MARK, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i64, i64* @error_mark_node, align 8
  store i64 %118, i64* %8, align 8
  br label %191

119:                                              ; preds = %109
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @REFERENCE_TYPE, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %156

123:                                              ; preds = %119
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %124 = load i64, i64* %14, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @warningcount, align 4
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* @errorcount, align 4
  store i32 %128, i32* %20, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = load i32, i32* @NULL_TREE, align 4
  %133 = call i64 @initialize_reference(i64 %130, i64 %131, i32 %132, i32* null)
  store i64 %133, i64* %11, align 8
  %134 = load i64, i64* %14, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %129
  %137 = load i32, i32* @warningcount, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* %15, align 4
  %142 = load i64, i64* %14, align 8
  %143 = call i32 @warning(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %141, i64 %142)
  br label %153

144:                                              ; preds = %136
  %145 = load i32, i32* @errorcount, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32, i32* %15, align 4
  %150 = load i64, i64* %14, align 8
  %151 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %149, i64 %150)
  br label %152

152:                                              ; preds = %148, %144
  br label %153

153:                                              ; preds = %152, %140
  br label %154

154:                                              ; preds = %153, %129
  %155 = load i64, i64* %11, align 8
  store i64 %155, i64* %8, align 8
  br label %191

156:                                              ; preds = %119
  %157 = load i64, i64* %9, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i64, i64* %9, align 8
  %161 = call i64 @require_complete_type(i64 %160)
  store i64 %161, i64* %9, align 8
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* @error_mark_node, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i64, i64* @error_mark_node, align 8
  store i64 %167, i64* %8, align 8
  br label %191

168:                                              ; preds = %162
  %169 = load i64, i64* %17, align 8
  %170 = call i64 @non_reference(i64 %169)
  store i64 %170, i64* %17, align 8
  %171 = load i64, i64* %10, align 8
  %172 = call i64 @complete_type(i64 %171)
  store i64 %172, i64* %10, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call i64 @IS_AGGR_TYPE(i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %168
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i32, i32* @CONV_IMPLICIT, align 4
  %180 = load i32, i32* @CONV_FORCE_TEMP, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %12, align 4
  %183 = call i64 @ocp_convert(i64 %177, i64 %178, i32 %181, i32 %182)
  store i64 %183, i64* %8, align 8
  br label %191

184:                                              ; preds = %168
  %185 = load i64, i64* %10, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i8*, i8** %13, align 8
  %188 = load i64, i64* %14, align 8
  %189 = load i32, i32* %15, align 4
  %190 = call i64 @convert_for_assignment(i64 %185, i64 %186, i8* %187, i64 %188, i32 %189)
  store i64 %190, i64* %8, align 8
  br label %191

191:                                              ; preds = %184, %176, %166, %154, %117, %59
  %192 = load i64, i64* %8, align 8
  ret i64 %192
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @decay_conversion(i64) #1

declare dso_local i64 @initialize_reference(i64, i64, i32, i32*) #1

declare dso_local i32 @warning(i32, i8*, i32, i64) #1

declare dso_local i32 @error(i8*, i32, i64) #1

declare dso_local i64 @require_complete_type(i64) #1

declare dso_local i64 @non_reference(i64) #1

declare dso_local i64 @complete_type(i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @ocp_convert(i64, i64, i32, i32) #1

declare dso_local i64 @convert_for_assignment(i64, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
