; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-mat.c_lambda_matrix_inverse_hard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-mat.c_lambda_matrix_inverse_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32)* @lambda_matrix_inverse_hard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lambda_matrix_inverse_hard(i32** %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32** @lambda_matrix_new(i32 %16, i32 %17)
  store i32** %18, i32*** %8, align 8
  %19 = load i32**, i32*** %4, align 8
  %20 = load i32**, i32*** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @lambda_matrix_copy(i32** %19, i32** %20, i32 %21, i32 %22)
  %24 = load i32**, i32*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @lambda_matrix_id(i32** %24, i32 %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %131, %3
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %134

31:                                               ; preds = %27
  %32 = load i32**, i32*** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %59, %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i32**, i32*** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @lambda_matrix_col_negate(i32** %50, i32 %51, i32 %52)
  %54 = load i32**, i32*** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @lambda_matrix_col_negate(i32** %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %38

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %129, %62
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @lambda_vector_first_nz(i32* %64, i32 %65, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %130

71:                                               ; preds = %63
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @lambda_vector_min_nz(i32* %72, i32 %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32**, i32*** %8, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @lambda_matrix_col_exchange(i32** %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32**, i32*** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @lambda_matrix_col_exchange(i32** %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %126, %71
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %129

92:                                               ; preds = %88
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 -1, %97
  store i32 %98, i32* %13, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 1
  br i1 %104, label %105, label %113

105:                                              ; preds = %92
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = sdiv i32 %111, %110
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %105, %92
  %114 = load i32**, i32*** %8, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @lambda_matrix_col_add(i32** %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32**, i32*** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @lambda_matrix_col_add(i32** %120, i32 %121, i32 %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %88

129:                                              ; preds = %88
  br label %63

130:                                              ; preds = %63
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %27

134:                                              ; preds = %27
  store i32 1, i32* %11, align 4
  %135 = load i32, i32* %6, align 4
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %230, %134
  %138 = load i32, i32* %10, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %233

140:                                              ; preds = %137
  %141 = load i32**, i32*** %8, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  store i32* %145, i32** %7, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @gcc_assert(i32 %151)
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %14, align 4
  %155 = mul nsw i32 %153, %154
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 1
  br i1 %157, label %158, label %193

158:                                              ; preds = %140
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %169, %158
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load i32**, i32*** %5, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @lambda_matrix_col_mc(i32** %164, i32 %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %163
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %159

172:                                              ; preds = %159
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %185, %172
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = load i32**, i32*** %5, align 8
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @lambda_matrix_col_mc(i32** %180, i32 %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %175

188:                                              ; preds = %175
  store i32 1, i32* %14, align 4
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 1, i32* %192, align 4
  br label %193

193:                                              ; preds = %188, %140
  %194 = load i32, i32* %10, align 4
  %195 = sub nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %226, %193
  %197 = load i32, i32* %9, align 4
  %198 = icmp sge i32 %197, 0
  br i1 %198, label %199, label %229

199:                                              ; preds = %196
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %225

206:                                              ; preds = %199
  %207 = load i32*, i32** %7, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %15, align 4
  %213 = load i32**, i32*** %8, align 8
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %15, align 4
  %218 = call i32 @lambda_matrix_col_add(i32** %213, i32 %214, i32 %215, i32 %216, i32 %217)
  %219 = load i32**, i32*** %5, align 8
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %15, align 4
  %224 = call i32 @lambda_matrix_col_add(i32** %219, i32 %220, i32 %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %206, %199
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %9, align 4
  br label %196

229:                                              ; preds = %196
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %10, align 4
  br label %137

233:                                              ; preds = %137
  %234 = load i32, i32* %11, align 4
  ret i32 %234
}

declare dso_local i32** @lambda_matrix_new(i32, i32) #1

declare dso_local i32 @lambda_matrix_copy(i32**, i32**, i32, i32) #1

declare dso_local i32 @lambda_matrix_id(i32**, i32) #1

declare dso_local i32 @lambda_matrix_col_negate(i32**, i32, i32) #1

declare dso_local i32 @lambda_vector_first_nz(i32*, i32, i32) #1

declare dso_local i32 @lambda_vector_min_nz(i32*, i32, i32) #1

declare dso_local i32 @lambda_matrix_col_exchange(i32**, i32, i32, i32) #1

declare dso_local i32 @lambda_matrix_col_add(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @lambda_matrix_col_mc(i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
