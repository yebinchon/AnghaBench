; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_preprocess_constraints.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_preprocess_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8** }
%struct.operand_alternative = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@recog_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@recog_op_alt = common dso_local global %struct.operand_alternative** null, align 8
@NO_REGS = common dso_local global i8* null, align 8
@reg_class_subunion = common dso_local global i8*** null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@ADDRESS = common dso_local global i32 0, align 4
@SCRATCH = common dso_local global i32 0, align 4
@GENERAL_REGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preprocess_constraints() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.operand_alternative*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %22, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.operand_alternative**, %struct.operand_alternative*** @recog_op_alt, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.operand_alternative*, %struct.operand_alternative** %12, i64 %14
  %16 = load %struct.operand_alternative*, %struct.operand_alternative** %15, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 1), align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 64
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(%struct.operand_alternative* %16, i32 0, i32 %20)
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %7

25:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %337, %25
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %340

30:                                               ; preds = %26
  %31 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %4, align 8
  %36 = load %struct.operand_alternative**, %struct.operand_alternative*** @recog_op_alt, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.operand_alternative*, %struct.operand_alternative** %36, i64 %38
  %40 = load %struct.operand_alternative*, %struct.operand_alternative** %39, align 8
  store %struct.operand_alternative* %40, %struct.operand_alternative** %3, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %333, %30
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 1), align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %336

45:                                               ; preds = %41
  %46 = load i8*, i8** @NO_REGS, align 8
  %47 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %47, i64 %49
  %51 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %50, i32 0, i32 12
  store i8* %46, i8** %51, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %53, i64 %55
  %57 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %56, i32 0, i32 0
  store i8* %52, i8** %57, align 8
  %58 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %58, i64 %60
  %62 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %61, i32 0, i32 1
  store i32 -1, i32* %62, align 8
  %63 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %63, i64 %65
  %67 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %66, i32 0, i32 2
  store i32 -1, i32* %67, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %45
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 44
  br i1 %76, label %77, label %83

77:                                               ; preds = %72, %45
  %78 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %78, i64 %80
  %82 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %81, i32 0, i32 3
  store i32 1, i32* %82, align 8
  br label %333

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %325, %143, %83
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %5, align 1
  %87 = load i8, i8* %5, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 35
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %103, %90
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %4, align 8
  %94 = load i8, i8* %93, align 1
  store i8 %94, i8* %5, align 1
  br label %95

95:                                               ; preds = %91
  %96 = load i8, i8* %5, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 44
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8, i8* %5, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i1 [ false, %95 ], [ %102, %99 ]
  br i1 %104, label %91, label %105

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %105, %84
  %107 = load i8, i8* %5, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 44
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i8, i8* %5, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110, %106
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %4, align 8
  br label %332

117:                                              ; preds = %110
  %118 = load i8, i8* %5, align 1
  %119 = sext i8 %118 to i32
  switch i32 %119, label %255 [
    i32 61, label %120
    i32 43, label %120
    i32 42, label %120
    i32 37, label %120
    i32 69, label %120
    i32 70, label %120
    i32 71, label %120
    i32 72, label %120
    i32 115, label %120
    i32 105, label %120
    i32 110, label %120
    i32 73, label %120
    i32 74, label %120
    i32 75, label %120
    i32 76, label %120
    i32 77, label %120
    i32 78, label %120
    i32 79, label %120
    i32 80, label %120
    i32 63, label %121
    i32 33, label %129
    i32 38, label %137
    i32 48, label %143
    i32 49, label %143
    i32 50, label %143
    i32 51, label %143
    i32 52, label %143
    i32 53, label %143
    i32 54, label %143
    i32 55, label %143
    i32 56, label %143
    i32 57, label %143
    i32 109, label %167
    i32 60, label %173
    i32 62, label %179
    i32 86, label %185
    i32 111, label %191
    i32 88, label %197
    i32 112, label %203
    i32 103, label %233
    i32 114, label %233
  ]

120:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  br label %325

121:                                              ; preds = %117
  %122 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %122, i64 %124
  %126 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 6
  store i32 %128, i32* %126, align 4
  br label %325

129:                                              ; preds = %117
  %130 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %130, i64 %132
  %134 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 600
  store i32 %136, i32* %134, align 4
  br label %325

137:                                              ; preds = %117
  %138 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %139 = load i32, i32* %2, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %138, i64 %140
  %142 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %141, i32 0, i32 5
  store i32 1, i32* %142, align 8
  br label %325

143:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  %144 = load i8*, i8** %4, align 8
  %145 = call i32 @strtoul(i8* %144, i8** %6, i32 10)
  %146 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %146, i64 %148
  %150 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %149, i32 0, i32 1
  store i32 %145, i32* %150, align 8
  %151 = load i32, i32* %1, align 4
  %152 = load %struct.operand_alternative**, %struct.operand_alternative*** @recog_op_alt, align 8
  %153 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %154 = load i32, i32* %2, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %153, i64 %155
  %157 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.operand_alternative*, %struct.operand_alternative** %152, i64 %159
  %161 = load %struct.operand_alternative*, %struct.operand_alternative** %160, align 8
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %161, i64 %163
  %165 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %164, i32 0, i32 2
  store i32 %151, i32* %165, align 4
  %166 = load i8*, i8** %6, align 8
  store i8* %166, i8** %4, align 8
  br label %84

167:                                              ; preds = %117
  %168 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %168, i64 %170
  %172 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %171, i32 0, i32 6
  store i32 1, i32* %172, align 4
  br label %325

173:                                              ; preds = %117
  %174 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %175 = load i32, i32* %2, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %174, i64 %176
  %178 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %177, i32 0, i32 7
  store i32 1, i32* %178, align 8
  br label %325

179:                                              ; preds = %117
  %180 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %181 = load i32, i32* %2, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %180, i64 %182
  %184 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %183, i32 0, i32 8
  store i32 1, i32* %184, align 4
  br label %325

185:                                              ; preds = %117
  %186 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %187 = load i32, i32* %2, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %186, i64 %188
  %190 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %189, i32 0, i32 9
  store i32 1, i32* %190, align 8
  br label %325

191:                                              ; preds = %117
  %192 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %193 = load i32, i32* %2, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %192, i64 %194
  %196 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %195, i32 0, i32 10
  store i32 1, i32* %196, align 4
  br label %325

197:                                              ; preds = %117
  %198 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %199 = load i32, i32* %2, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %198, i64 %200
  %202 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %201, i32 0, i32 3
  store i32 1, i32* %202, align 8
  br label %325

203:                                              ; preds = %117
  %204 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %205 = load i32, i32* %2, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %204, i64 %206
  %208 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %207, i32 0, i32 11
  store i32 1, i32* %208, align 8
  %209 = load i8***, i8**** @reg_class_subunion, align 8
  %210 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %211 = load i32, i32* %2, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %210, i64 %212
  %214 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %213, i32 0, i32 12
  %215 = load i8*, i8** %214, align 8
  %216 = ptrtoint i8* %215 to i32
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8**, i8*** %209, i64 %217
  %219 = load i8**, i8*** %218, align 8
  %220 = load i32, i32* @VOIDmode, align 4
  %221 = load i32, i32* @ADDRESS, align 4
  %222 = load i32, i32* @SCRATCH, align 4
  %223 = call i64 @base_reg_class(i32 %220, i32 %221, i32 %222)
  %224 = trunc i64 %223 to i32
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %219, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %229 = load i32, i32* %2, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %228, i64 %230
  %232 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %231, i32 0, i32 12
  store i8* %227, i8** %232, align 8
  br label %325

233:                                              ; preds = %117, %117
  %234 = load i8***, i8**** @reg_class_subunion, align 8
  %235 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %236 = load i32, i32* %2, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %235, i64 %237
  %239 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %238, i32 0, i32 12
  %240 = load i8*, i8** %239, align 8
  %241 = ptrtoint i8* %240 to i32
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8**, i8*** %234, i64 %242
  %244 = load i8**, i8*** %243, align 8
  %245 = load i64, i64* @GENERAL_REGS, align 8
  %246 = trunc i64 %245 to i32
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %244, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %251 = load i32, i32* %2, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %250, i64 %252
  %254 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %253, i32 0, i32 12
  store i8* %249, i8** %254, align 8
  br label %325

255:                                              ; preds = %117
  %256 = load i8, i8* %5, align 1
  %257 = load i8*, i8** %4, align 8
  %258 = call i32 @EXTRA_MEMORY_CONSTRAINT(i8 signext %256, i8* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %262 = load i32, i32* %2, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %261, i64 %263
  %265 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %264, i32 0, i32 6
  store i32 1, i32* %265, align 4
  br label %325

266:                                              ; preds = %255
  %267 = load i8, i8* %5, align 1
  %268 = load i8*, i8** %4, align 8
  %269 = call i32 @EXTRA_ADDRESS_CONSTRAINT(i8 signext %267, i8* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %301

271:                                              ; preds = %266
  %272 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %273 = load i32, i32* %2, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %272, i64 %274
  %276 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %275, i32 0, i32 11
  store i32 1, i32* %276, align 8
  %277 = load i8***, i8**** @reg_class_subunion, align 8
  %278 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %279 = load i32, i32* %2, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %278, i64 %280
  %282 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %281, i32 0, i32 12
  %283 = load i8*, i8** %282, align 8
  %284 = ptrtoint i8* %283 to i32
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8**, i8*** %277, i64 %285
  %287 = load i8**, i8*** %286, align 8
  %288 = load i32, i32* @VOIDmode, align 4
  %289 = load i32, i32* @ADDRESS, align 4
  %290 = load i32, i32* @SCRATCH, align 4
  %291 = call i64 @base_reg_class(i32 %288, i32 %289, i32 %290)
  %292 = trunc i64 %291 to i32
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %287, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %297 = load i32, i32* %2, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %296, i64 %298
  %300 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %299, i32 0, i32 12
  store i8* %295, i8** %300, align 8
  br label %325

301:                                              ; preds = %266
  %302 = load i8***, i8**** @reg_class_subunion, align 8
  %303 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %304 = load i32, i32* %2, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %303, i64 %305
  %307 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %306, i32 0, i32 12
  %308 = load i8*, i8** %307, align 8
  %309 = ptrtoint i8* %308 to i32
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8**, i8*** %302, i64 %310
  %312 = load i8**, i8*** %311, align 8
  %313 = load i8, i8* %5, align 1
  %314 = load i8*, i8** %4, align 8
  %315 = call i64 @REG_CLASS_FROM_CONSTRAINT(i8 zeroext %313, i8* %314)
  %316 = trunc i64 %315 to i32
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8*, i8** %312, i64 %317
  %319 = load i8*, i8** %318, align 8
  %320 = load %struct.operand_alternative*, %struct.operand_alternative** %3, align 8
  %321 = load i32, i32* %2, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %320, i64 %322
  %324 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %323, i32 0, i32 12
  store i8* %319, i8** %324, align 8
  br label %325

325:                                              ; preds = %301, %271, %260, %233, %203, %197, %191, %185, %179, %173, %167, %137, %129, %121, %120
  %326 = load i8, i8* %5, align 1
  %327 = load i8*, i8** %4, align 8
  %328 = call i32 @CONSTRAINT_LEN(i8 signext %326, i8* %327)
  %329 = load i8*, i8** %4, align 8
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds i8, i8* %329, i64 %330
  store i8* %331, i8** %4, align 8
  br label %84

332:                                              ; preds = %114
  br label %333

333:                                              ; preds = %332, %77
  %334 = load i32, i32* %2, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %2, align 4
  br label %41

336:                                              ; preds = %41
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %1, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %1, align 4
  br label %26

340:                                              ; preds = %26
  ret void
}

declare dso_local i32 @memset(%struct.operand_alternative*, i32, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @base_reg_class(i32, i32, i32) #1

declare dso_local i32 @EXTRA_MEMORY_CONSTRAINT(i8 signext, i8*) #1

declare dso_local i32 @EXTRA_ADDRESS_CONSTRAINT(i8 signext, i8*) #1

declare dso_local i64 @REG_CLASS_FROM_CONSTRAINT(i8 zeroext, i8*) #1

declare dso_local i32 @CONSTRAINT_LEN(i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
