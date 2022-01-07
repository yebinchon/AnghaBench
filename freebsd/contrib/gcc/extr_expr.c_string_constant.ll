; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_string_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_string_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64)* }

@ADDR_EXPR = common dso_local global i64 0, align 8
@STRING_CST = common dso_local global i64 0, align 8
@size_zero_node = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@sizetype = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@INTEGER_CST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @string_constant(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @STRIP_NOPS(i64 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @ADDR_EXPR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TREE_OPERAND(i64 %18, i32 0)
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @STRING_CST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i64, i64* @size_zero_node, align 8
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @TREE_OPERAND(i64 %26, i32 0)
  store i64 %27, i64* %3, align 8
  br label %217

28:                                               ; preds = %17
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @TREE_OPERAND(i64 %29, i32 0)
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @VAR_DECL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @TREE_OPERAND(i64 %35, i32 0)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* @size_zero_node, align 8
  store i64 %37, i64* %7, align 8
  br label %64

38:                                               ; preds = %28
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @TREE_OPERAND(i64 %39, i32 0)
  %41 = call i64 @TREE_CODE(i64 %40)
  %42 = load i64, i64* @ARRAY_REF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @TREE_OPERAND(i64 %45, i32 0)
  %47 = call i64 @TREE_OPERAND(i64 %46, i32 0)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @TREE_OPERAND(i64 %48, i32 0)
  %50 = call i64 @TREE_OPERAND(i64 %49, i32 1)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @STRING_CST, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @TREE_CODE(i64 %56)
  %58 = load i64, i64* @VAR_DECL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i64 0, i64* %3, align 8
  br label %217

61:                                               ; preds = %55, %44
  br label %63

62:                                               ; preds = %38
  store i64 0, i64* %3, align 8
  br label %217

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %34
  br label %65

65:                                               ; preds = %64
  br label %126

66:                                               ; preds = %2
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @TREE_CODE(i64 %67)
  %69 = load i64, i64* @PLUS_EXPR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %124

71:                                               ; preds = %66
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @TREE_OPERAND(i64 %72, i32 0)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i64 @TREE_OPERAND(i64 %74, i32 1)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @STRIP_NOPS(i64 %76)
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @STRIP_NOPS(i64 %78)
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @TREE_CODE(i64 %80)
  %82 = load i64, i64* @ADDR_EXPR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %71
  %85 = load i64, i64* %8, align 8
  %86 = call i64 @TREE_OPERAND(i64 %85, i32 0)
  %87 = call i64 @TREE_CODE(i64 %86)
  %88 = load i64, i64* @STRING_CST, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load i64, i64* %8, align 8
  %92 = call i64 @TREE_OPERAND(i64 %91, i32 0)
  %93 = call i64 @TREE_CODE(i64 %92)
  %94 = load i64, i64* @VAR_DECL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90, %84
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @TREE_OPERAND(i64 %97, i32 0)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %9, align 8
  store i64 %99, i64* %7, align 8
  br label %123

100:                                              ; preds = %90, %71
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @TREE_CODE(i64 %101)
  %103 = load i64, i64* @ADDR_EXPR, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load i64, i64* %9, align 8
  %107 = call i64 @TREE_OPERAND(i64 %106, i32 0)
  %108 = call i64 @TREE_CODE(i64 %107)
  %109 = load i64, i64* @STRING_CST, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load i64, i64* %9, align 8
  %113 = call i64 @TREE_OPERAND(i64 %112, i32 0)
  %114 = call i64 @TREE_CODE(i64 %113)
  %115 = load i64, i64* @VAR_DECL, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111, %105
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @TREE_OPERAND(i64 %118, i32 0)
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %8, align 8
  store i64 %120, i64* %7, align 8
  br label %122

121:                                              ; preds = %111, %100
  store i64 0, i64* %3, align 8
  br label %217

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122, %96
  br label %125

124:                                              ; preds = %66
  store i64 0, i64* %3, align 8
  br label %217

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %65
  %127 = load i64, i64* %6, align 8
  %128 = call i64 @TREE_CODE(i64 %127)
  %129 = load i64, i64* @STRING_CST, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i32, i32* @sizetype, align 4
  %133 = load i64, i64* %7, align 8
  %134 = call i64 @fold_convert(i32 %132, i64 %133)
  %135 = load i64*, i64** %5, align 8
  store i64 %134, i64* %135, align 8
  %136 = load i64, i64* %6, align 8
  store i64 %136, i64* %3, align 8
  br label %217

137:                                              ; preds = %126
  %138 = load i64, i64* %6, align 8
  %139 = call i64 @TREE_CODE(i64 %138)
  %140 = load i64, i64* @VAR_DECL, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %215

142:                                              ; preds = %137
  %143 = load i64, i64* %6, align 8
  %144 = call i64 @DECL_INITIAL(i64 %143)
  %145 = load i64, i64* @NULL_TREE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %142
  %148 = load i64, i64* %6, align 8
  %149 = call i64 @DECL_INITIAL(i64 %148)
  %150 = call i64 @TREE_CODE(i64 %149)
  %151 = load i64, i64* @STRING_CST, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147, %142
  store i64 0, i64* %3, align 8
  br label %217

154:                                              ; preds = %147
  %155 = load i64, i64* %6, align 8
  %156 = call i32 @TREE_READONLY(i64 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load i64, i64* %6, align 8
  %160 = call i64 @TREE_SIDE_EFFECTS(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %164 = load i64, i64* %6, align 8
  %165 = call i32 %163(i64 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %162, %158, %154
  store i64 0, i64* %3, align 8
  br label %217

168:                                              ; preds = %162
  %169 = load i64, i64* %6, align 8
  %170 = call i64 @DECL_SIZE_UNIT(i64 %169)
  %171 = load i64, i64* @NULL_TREE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %190, label %173

173:                                              ; preds = %168
  %174 = load i64, i64* %6, align 8
  %175 = call i64 @DECL_SIZE_UNIT(i64 %174)
  %176 = call i64 @TREE_CODE(i64 %175)
  %177 = load i64, i64* @INTEGER_CST, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %190, label %179

179:                                              ; preds = %173
  %180 = load i64, i64* %6, align 8
  %181 = call i64 @DECL_INITIAL(i64 %180)
  %182 = call i32 @TREE_STRING_LENGTH(i64 %181)
  store i32 %182, i32* %10, align 4
  %183 = icmp sle i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %179
  %185 = load i64, i64* %6, align 8
  %186 = call i64 @DECL_SIZE_UNIT(i64 %185)
  %187 = load i32, i32* %10, align 4
  %188 = call i64 @compare_tree_int(i64 %186, i32 %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184, %179, %173, %168
  store i64 0, i64* %3, align 8
  br label %217

191:                                              ; preds = %184
  %192 = load i32, i32* @sizetype, align 4
  %193 = load i64, i64* %7, align 8
  %194 = call i64 @fold_convert(i32 %192, i64 %193)
  store i64 %194, i64* %7, align 8
  %195 = load i64, i64* %6, align 8
  %196 = call i64 @DECL_SIZE_UNIT(i64 %195)
  %197 = load i32, i32* %10, align 4
  %198 = call i64 @compare_tree_int(i64 %196, i32 %197)
  %199 = icmp sgt i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %191
  %201 = load i64, i64* %7, align 8
  %202 = call i32 @host_integerp(i64 %201, i32 1)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load i64, i64* %7, align 8
  %206 = load i32, i32* %10, align 4
  %207 = call i64 @compare_tree_int(i64 %205, i32 %206)
  %208 = icmp sge i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204, %200
  store i64 0, i64* %3, align 8
  br label %217

210:                                              ; preds = %204, %191
  %211 = load i64, i64* %7, align 8
  %212 = load i64*, i64** %5, align 8
  store i64 %211, i64* %212, align 8
  %213 = load i64, i64* %6, align 8
  %214 = call i64 @DECL_INITIAL(i64 %213)
  store i64 %214, i64* %3, align 8
  br label %217

215:                                              ; preds = %137
  br label %216

216:                                              ; preds = %215
  store i64 0, i64* %3, align 8
  br label %217

217:                                              ; preds = %216, %210, %209, %190, %167, %153, %131, %124, %121, %62, %60, %23
  %218 = load i64, i64* %3, align 8
  ret i64 %218
}

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @fold_convert(i32, i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i32 @TREE_READONLY(i64) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @DECL_SIZE_UNIT(i64) #1

declare dso_local i32 @TREE_STRING_LENGTH(i64) #1

declare dso_local i64 @compare_tree_int(i64, i32) #1

declare dso_local i32 @host_integerp(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
