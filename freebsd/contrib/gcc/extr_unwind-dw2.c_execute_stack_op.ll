; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2.c_execute_stack_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2.c_execute_stack_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct._Unwind_Context*, i32)* @execute_stack_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_stack_op(i8* %0, i8* %1, %struct._Unwind_Context* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._Unwind_Context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct._Unwind_Context* %2, %struct._Unwind_Context** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  store i32 %25, i32* %26, align 16
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %420, %4
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %421

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %407 [
    i32 212, label %37
    i32 211, label %37
    i32 200, label %37
    i32 189, label %37
    i32 186, label %37
    i32 185, label %37
    i32 184, label %37
    i32 183, label %37
    i32 182, label %37
    i32 181, label %37
    i32 210, label %37
    i32 209, label %37
    i32 208, label %37
    i32 207, label %37
    i32 206, label %37
    i32 205, label %37
    i32 204, label %37
    i32 203, label %37
    i32 202, label %37
    i32 201, label %37
    i32 199, label %37
    i32 198, label %37
    i32 197, label %37
    i32 196, label %37
    i32 195, label %37
    i32 194, label %37
    i32 193, label %37
    i32 192, label %37
    i32 191, label %37
    i32 190, label %37
    i32 188, label %37
    i32 187, label %37
    i32 267, label %40
    i32 230, label %45
    i32 231, label %50
    i32 228, label %55
    i32 229, label %60
    i32 226, label %65
    i32 227, label %70
    i32 224, label %75
    i32 225, label %80
    i32 222, label %85
    i32 223, label %88
    i32 167, label %92
    i32 166, label %92
    i32 155, label %92
    i32 144, label %92
    i32 141, label %92
    i32 140, label %92
    i32 139, label %92
    i32 138, label %92
    i32 137, label %92
    i32 136, label %92
    i32 165, label %92
    i32 164, label %92
    i32 163, label %92
    i32 162, label %92
    i32 161, label %92
    i32 160, label %92
    i32 159, label %92
    i32 158, label %92
    i32 157, label %92
    i32 156, label %92
    i32 154, label %92
    i32 153, label %92
    i32 152, label %92
    i32 151, label %92
    i32 150, label %92
    i32 149, label %92
    i32 148, label %92
    i32 147, label %92
    i32 146, label %92
    i32 145, label %92
    i32 143, label %92
    i32 142, label %92
    i32 135, label %97
    i32 264, label %103
    i32 263, label %103
    i32 252, label %103
    i32 241, label %103
    i32 238, label %103
    i32 237, label %103
    i32 236, label %103
    i32 235, label %103
    i32 234, label %103
    i32 233, label %103
    i32 262, label %103
    i32 261, label %103
    i32 260, label %103
    i32 259, label %103
    i32 258, label %103
    i32 257, label %103
    i32 256, label %103
    i32 255, label %103
    i32 254, label %103
    i32 253, label %103
    i32 251, label %103
    i32 250, label %103
    i32 249, label %103
    i32 248, label %103
    i32 247, label %103
    i32 246, label %103
    i32 245, label %103
    i32 244, label %103
    i32 243, label %103
    i32 242, label %103
    i32 240, label %103
    i32 239, label %103
    i32 232, label %112
    i32 217, label %122
    i32 218, label %130
    i32 170, label %135
    i32 171, label %153
    i32 129, label %163
    i32 134, label %187
    i32 221, label %222
    i32 220, label %222
    i32 268, label %222
    i32 175, label %222
    i32 173, label %222
    i32 168, label %222
    i32 266, label %283
    i32 219, label %283
    i32 179, label %283
    i32 178, label %283
    i32 177, label %283
    i32 172, label %283
    i32 169, label %283
    i32 133, label %283
    i32 132, label %283
    i32 131, label %283
    i32 128, label %283
    i32 213, label %283
    i32 215, label %283
    i32 216, label %283
    i32 180, label %283
    i32 214, label %283
    i32 176, label %283
    i32 130, label %377
    i32 265, label %386
    i32 174, label %406
  ]

37:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %38 = load i32, i32* %11, align 4
  %39 = sub i32 %38, 212
  store i32 %39, i32* %12, align 4
  br label %409

40:                                               ; preds = %31
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @read_pointer(i8* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 8
  store i8* %44, i8** %5, align 8
  br label %409

45:                                               ; preds = %31
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @read_1u(i8* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %5, align 8
  br label %409

50:                                               ; preds = %31
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @read_1s(i8* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %5, align 8
  br label %409

55:                                               ; preds = %31
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @read_2u(i8* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %59, i8** %5, align 8
  br label %409

60:                                               ; preds = %31
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @read_2s(i8* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %64, i8** %5, align 8
  br label %409

65:                                               ; preds = %31
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @read_4u(i8* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  store i8* %69, i8** %5, align 8
  br label %409

70:                                               ; preds = %31
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @read_4s(i8* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %74, i8** %5, align 8
  br label %409

75:                                               ; preds = %31
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @read_8u(i8* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  store i8* %79, i8** %5, align 8
  br label %409

80:                                               ; preds = %31
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @read_8s(i8* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 8
  store i8* %84, i8** %5, align 8
  br label %409

85:                                               ; preds = %31
  %86 = load i8*, i8** %5, align 8
  %87 = call i8* @read_uleb128(i8* %86, i32* %12)
  store i8* %87, i8** %5, align 8
  br label %409

88:                                               ; preds = %31
  %89 = load i8*, i8** %5, align 8
  %90 = call i8* @read_sleb128(i8* %89, i32* %16)
  store i8* %90, i8** %5, align 8
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %12, align 4
  br label %409

92:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %93 = load %struct._Unwind_Context*, %struct._Unwind_Context** %7, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sub i32 %94, 167
  %96 = call i32 @_Unwind_GetGR(%struct._Unwind_Context* %93, i32 %95)
  store i32 %96, i32* %12, align 4
  br label %409

97:                                               ; preds = %31
  %98 = load i8*, i8** %5, align 8
  %99 = call i8* @read_uleb128(i8* %98, i32* %13)
  store i8* %99, i8** %5, align 8
  %100 = load %struct._Unwind_Context*, %struct._Unwind_Context** %7, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @_Unwind_GetGR(%struct._Unwind_Context* %100, i32 %101)
  store i32 %102, i32* %12, align 4
  br label %409

103:                                              ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %104 = load i8*, i8** %5, align 8
  %105 = call i8* @read_sleb128(i8* %104, i32* %15)
  store i8* %105, i8** %5, align 8
  %106 = load %struct._Unwind_Context*, %struct._Unwind_Context** %7, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sub i32 %107, 264
  %109 = call i32 @_Unwind_GetGR(%struct._Unwind_Context* %106, i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %12, align 4
  br label %409

112:                                              ; preds = %31
  %113 = load i8*, i8** %5, align 8
  %114 = call i8* @read_uleb128(i8* %113, i32* %13)
  store i8* %114, i8** %5, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i8* @read_sleb128(i8* %115, i32* %15)
  store i8* %116, i8** %5, align 8
  %117 = load %struct._Unwind_Context*, %struct._Unwind_Context** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @_Unwind_GetGR(%struct._Unwind_Context* %117, i32 %118)
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, i32* %12, align 4
  br label %409

122:                                              ; preds = %31
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @gcc_assert(i32 %123)
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %12, align 4
  br label %409

130:                                              ; preds = %31
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @gcc_assert(i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %420

135:                                              ; preds = %31
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %5, align 8
  %138 = load i8, i8* %136, align 1
  %139 = zext i8 %138 to i32
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %10, align 4
  %142 = sub nsw i32 %141, 1
  %143 = icmp slt i32 %140, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @gcc_assert(i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %12, align 4
  br label %409

153:                                              ; preds = %31
  %154 = load i32, i32* %10, align 4
  %155 = icmp sge i32 %154, 2
  %156 = zext i1 %155 to i32
  %157 = call i32 @gcc_assert(i32 %156)
  %158 = load i32, i32* %10, align 4
  %159 = sub nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %12, align 4
  br label %409

163:                                              ; preds = %31
  %164 = load i32, i32* %10, align 4
  %165 = icmp sge i32 %164, 2
  %166 = zext i1 %165 to i32
  %167 = call i32 @gcc_assert(i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %10, align 4
  %174 = sub nsw i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %10, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %180
  store i32 %177, i32* %181, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %10, align 4
  %184 = sub nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %185
  store i32 %182, i32* %186, align 4
  br label %420

187:                                              ; preds = %31
  %188 = load i32, i32* %10, align 4
  %189 = icmp sge i32 %188, 3
  %190 = zext i1 %189 to i32
  %191 = call i32 @gcc_assert(i32 %190)
  %192 = load i32, i32* %10, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %18, align 4
  %197 = load i32, i32* %10, align 4
  %198 = sub nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %19, align 4
  %202 = load i32, i32* %10, align 4
  %203 = sub nsw i32 %202, 3
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %10, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %210
  store i32 %207, i32* %211, align 4
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* %10, align 4
  %214 = sub nsw i32 %213, 2
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %215
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %10, align 4
  %219 = sub nsw i32 %218, 3
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %220
  store i32 %217, i32* %221, align 4
  br label %420

222:                                              ; preds = %31, %31, %31, %31, %31, %31
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @gcc_assert(i32 %223)
  %225 = load i32, i32* %10, align 4
  %226 = sub nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %11, align 4
  switch i32 %231, label %280 [
    i32 221, label %232
    i32 220, label %238
    i32 268, label %261
    i32 175, label %268
    i32 173, label %271
    i32 168, label %274
  ]

232:                                              ; preds = %222
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  store i8* %235, i8** %21, align 8
  %236 = load i8*, i8** %21, align 8
  %237 = call i32 @read_pointer(i8* %236)
  store i32 %237, i32* %12, align 4
  br label %282

238:                                              ; preds = %222
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = inttoptr i64 %240 to i8*
  store i8* %241, i8** %22, align 8
  %242 = load i8*, i8** %5, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %5, align 8
  %244 = load i8, i8* %242, align 1
  %245 = zext i8 %244 to i32
  switch i32 %245, label %258 [
    i32 1, label %246
    i32 2, label %249
    i32 4, label %252
    i32 8, label %255
  ]

246:                                              ; preds = %238
  %247 = load i8*, i8** %22, align 8
  %248 = call i32 @read_1u(i8* %247)
  store i32 %248, i32* %12, align 4
  br label %260

249:                                              ; preds = %238
  %250 = load i8*, i8** %22, align 8
  %251 = call i32 @read_2u(i8* %250)
  store i32 %251, i32* %12, align 4
  br label %260

252:                                              ; preds = %238
  %253 = load i8*, i8** %22, align 8
  %254 = call i32 @read_4u(i8* %253)
  store i32 %254, i32* %12, align 4
  br label %260

255:                                              ; preds = %238
  %256 = load i8*, i8** %22, align 8
  %257 = call i32 @read_8u(i8* %256)
  store i32 %257, i32* %12, align 4
  br label %260

258:                                              ; preds = %238
  %259 = call i32 (...) @gcc_unreachable()
  br label %260

260:                                              ; preds = %258, %255, %252, %249, %246
  br label %282

261:                                              ; preds = %222
  %262 = load i32, i32* %12, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* %12, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %12, align 4
  br label %267

267:                                              ; preds = %264, %261
  br label %282

268:                                              ; preds = %222
  %269 = load i32, i32* %12, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %12, align 4
  br label %282

271:                                              ; preds = %222
  %272 = load i32, i32* %12, align 4
  %273 = xor i32 %272, -1
  store i32 %273, i32* %12, align 4
  br label %282

274:                                              ; preds = %222
  %275 = load i8*, i8** %5, align 8
  %276 = call i8* @read_uleb128(i8* %275, i32* %14)
  store i8* %276, i8** %5, align 8
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %12, align 4
  br label %282

280:                                              ; preds = %222
  %281 = call i32 (...) @gcc_unreachable()
  br label %282

282:                                              ; preds = %280, %274, %271, %268, %267, %260, %232
  br label %409

283:                                              ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %284 = load i32, i32* %10, align 4
  %285 = icmp sge i32 %284, 2
  %286 = zext i1 %285 to i32
  %287 = call i32 @gcc_assert(i32 %286)
  %288 = load i32, i32* %10, align 4
  %289 = sub nsw i32 %288, 2
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %10, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  store i32 %293, i32* %24, align 4
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %23, align 4
  %299 = load i32, i32* %11, align 4
  switch i32 %299, label %374 [
    i32 266, label %300
    i32 219, label %304
    i32 179, label %308
    i32 178, label %312
    i32 177, label %316
    i32 172, label %320
    i32 169, label %324
    i32 133, label %328
    i32 132, label %332
    i32 131, label %336
    i32 128, label %340
    i32 213, label %344
    i32 215, label %349
    i32 216, label %354
    i32 180, label %359
    i32 214, label %364
    i32 176, label %369
  ]

300:                                              ; preds = %283
  %301 = load i32, i32* %24, align 4
  %302 = load i32, i32* %23, align 4
  %303 = and i32 %301, %302
  store i32 %303, i32* %12, align 4
  br label %376

304:                                              ; preds = %283
  %305 = load i32, i32* %24, align 4
  %306 = load i32, i32* %23, align 4
  %307 = sdiv i32 %305, %306
  store i32 %307, i32* %12, align 4
  br label %376

308:                                              ; preds = %283
  %309 = load i32, i32* %24, align 4
  %310 = load i32, i32* %23, align 4
  %311 = sub nsw i32 %309, %310
  store i32 %311, i32* %12, align 4
  br label %376

312:                                              ; preds = %283
  %313 = load i32, i32* %24, align 4
  %314 = load i32, i32* %23, align 4
  %315 = srem i32 %313, %314
  store i32 %315, i32* %12, align 4
  br label %376

316:                                              ; preds = %283
  %317 = load i32, i32* %24, align 4
  %318 = load i32, i32* %23, align 4
  %319 = mul nsw i32 %317, %318
  store i32 %319, i32* %12, align 4
  br label %376

320:                                              ; preds = %283
  %321 = load i32, i32* %24, align 4
  %322 = load i32, i32* %23, align 4
  %323 = or i32 %321, %322
  store i32 %323, i32* %12, align 4
  br label %376

324:                                              ; preds = %283
  %325 = load i32, i32* %24, align 4
  %326 = load i32, i32* %23, align 4
  %327 = add nsw i32 %325, %326
  store i32 %327, i32* %12, align 4
  br label %376

328:                                              ; preds = %283
  %329 = load i32, i32* %24, align 4
  %330 = load i32, i32* %23, align 4
  %331 = shl i32 %329, %330
  store i32 %331, i32* %12, align 4
  br label %376

332:                                              ; preds = %283
  %333 = load i32, i32* %24, align 4
  %334 = load i32, i32* %23, align 4
  %335 = ashr i32 %333, %334
  store i32 %335, i32* %12, align 4
  br label %376

336:                                              ; preds = %283
  %337 = load i32, i32* %24, align 4
  %338 = load i32, i32* %23, align 4
  %339 = ashr i32 %337, %338
  store i32 %339, i32* %12, align 4
  br label %376

340:                                              ; preds = %283
  %341 = load i32, i32* %24, align 4
  %342 = load i32, i32* %23, align 4
  %343 = xor i32 %341, %342
  store i32 %343, i32* %12, align 4
  br label %376

344:                                              ; preds = %283
  %345 = load i32, i32* %23, align 4
  %346 = load i32, i32* %24, align 4
  %347 = icmp sle i32 %345, %346
  %348 = zext i1 %347 to i32
  store i32 %348, i32* %12, align 4
  br label %376

349:                                              ; preds = %283
  %350 = load i32, i32* %23, align 4
  %351 = load i32, i32* %24, align 4
  %352 = icmp sge i32 %350, %351
  %353 = zext i1 %352 to i32
  store i32 %353, i32* %12, align 4
  br label %376

354:                                              ; preds = %283
  %355 = load i32, i32* %23, align 4
  %356 = load i32, i32* %24, align 4
  %357 = icmp eq i32 %355, %356
  %358 = zext i1 %357 to i32
  store i32 %358, i32* %12, align 4
  br label %376

359:                                              ; preds = %283
  %360 = load i32, i32* %23, align 4
  %361 = load i32, i32* %24, align 4
  %362 = icmp slt i32 %360, %361
  %363 = zext i1 %362 to i32
  store i32 %363, i32* %12, align 4
  br label %376

364:                                              ; preds = %283
  %365 = load i32, i32* %23, align 4
  %366 = load i32, i32* %24, align 4
  %367 = icmp sgt i32 %365, %366
  %368 = zext i1 %367 to i32
  store i32 %368, i32* %12, align 4
  br label %376

369:                                              ; preds = %283
  %370 = load i32, i32* %23, align 4
  %371 = load i32, i32* %24, align 4
  %372 = icmp ne i32 %370, %371
  %373 = zext i1 %372 to i32
  store i32 %373, i32* %12, align 4
  br label %376

374:                                              ; preds = %283
  %375 = call i32 (...) @gcc_unreachable()
  br label %376

376:                                              ; preds = %374, %369, %364, %359, %354, %349, %344, %340, %336, %332, %328, %324, %320, %316, %312, %308, %304, %300
  br label %409

377:                                              ; preds = %31
  %378 = load i8*, i8** %5, align 8
  %379 = call i32 @read_2s(i8* %378)
  store i32 %379, i32* %15, align 4
  %380 = load i8*, i8** %5, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 2
  store i8* %381, i8** %5, align 8
  %382 = load i32, i32* %15, align 4
  %383 = load i8*, i8** %5, align 8
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  store i8* %385, i8** %5, align 8
  br label %420

386:                                              ; preds = %31
  %387 = load i32, i32* %10, align 4
  %388 = call i32 @gcc_assert(i32 %387)
  %389 = load i32, i32* %10, align 4
  %390 = sub nsw i32 %389, 1
  store i32 %390, i32* %10, align 4
  %391 = load i8*, i8** %5, align 8
  %392 = call i32 @read_2s(i8* %391)
  store i32 %392, i32* %15, align 4
  %393 = load i8*, i8** %5, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 2
  store i8* %394, i8** %5, align 8
  %395 = load i32, i32* %10, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %386
  %401 = load i32, i32* %15, align 4
  %402 = load i8*, i8** %5, align 8
  %403 = sext i32 %401 to i64
  %404 = getelementptr inbounds i8, i8* %402, i64 %403
  store i8* %404, i8** %5, align 8
  br label %405

405:                                              ; preds = %400, %386
  br label %420

406:                                              ; preds = %31
  br label %420

407:                                              ; preds = %31
  %408 = call i32 (...) @gcc_unreachable()
  br label %409

409:                                              ; preds = %407, %376, %282, %153, %135, %122, %112, %103, %97, %92, %88, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %37
  %410 = load i32, i32* %10, align 4
  %411 = sext i32 %410 to i64
  %412 = icmp ult i64 %411, 64
  %413 = zext i1 %412 to i32
  %414 = call i32 @gcc_assert(i32 %413)
  %415 = load i32, i32* %12, align 4
  %416 = load i32, i32* %10, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %10, align 4
  %418 = sext i32 %416 to i64
  %419 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %418
  store i32 %415, i32* %419, align 4
  br label %420

420:                                              ; preds = %409, %406, %405, %377, %187, %163, %130
  br label %27

421:                                              ; preds = %27
  %422 = load i32, i32* %10, align 4
  %423 = call i32 @gcc_assert(i32 %422)
  %424 = load i32, i32* %10, align 4
  %425 = sub nsw i32 %424, 1
  store i32 %425, i32* %10, align 4
  %426 = load i32, i32* %10, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %427
  %429 = load i32, i32* %428, align 4
  ret i32 %429
}

declare dso_local i32 @read_pointer(i8*) #1

declare dso_local i32 @read_1u(i8*) #1

declare dso_local i32 @read_1s(i8*) #1

declare dso_local i32 @read_2u(i8*) #1

declare dso_local i32 @read_2s(i8*) #1

declare dso_local i32 @read_4u(i8*) #1

declare dso_local i32 @read_4s(i8*) #1

declare dso_local i32 @read_8u(i8*) #1

declare dso_local i32 @read_8s(i8*) #1

declare dso_local i8* @read_uleb128(i8*, i32*) #1

declare dso_local i8* @read_sleb128(i8*, i32*) #1

declare dso_local i32 @_Unwind_GetGR(%struct._Unwind_Context*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
