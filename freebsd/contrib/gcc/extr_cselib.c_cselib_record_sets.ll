; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_record_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_record_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set = type { i8*, i8*, i8*, i8* }

@MAX_SETS = common dso_local global i32 0, align 4
@COND_EXEC = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@cselib_record_memory = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@cselib_invalidate_rtx_note_stores = common dso_local global i32 0, align 4
@pc_rtx = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cselib_record_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cselib_record_sets(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %15 = load i32, i32* @MAX_SETS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca %struct.set, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i8* @PATTERN(i8* %19)
  store i8* %20, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @PATTERN(i8* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @GET_CODE(i8* %23)
  %25 = load i64, i64* @COND_EXEC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @COND_EXEC_TEST(i8* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @COND_EXEC_CODE(i8* %30)
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %27, %1
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @GET_CODE(i8* %33)
  %35 = load i64, i64* @SET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @SET_SRC(i8* %38)
  %40 = getelementptr inbounds %struct.set, %struct.set* %18, i64 0
  %41 = getelementptr inbounds %struct.set, %struct.set* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @SET_DEST(i8* %42)
  %44 = getelementptr inbounds %struct.set, %struct.set* %18, i64 0
  %45 = getelementptr inbounds %struct.set, %struct.set* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 16
  store i32 1, i32* %3, align 4
  br label %87

46:                                               ; preds = %32
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @GET_CODE(i8* %47)
  %49 = load i64, i64* @PARALLEL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @XVECLEN(i8* %52, i32 0)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %82, %51
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i8* @XVECEXP(i8* %59, i32 0, i32 %60)
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @GET_CODE(i8* %62)
  %64 = load i64, i64* @SET, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %58
  %67 = load i8*, i8** %9, align 8
  %68 = call i8* @SET_SRC(i8* %67)
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %70
  %72 = getelementptr inbounds %struct.set, %struct.set* %71, i32 0, i32 3
  store i8* %68, i8** %72, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i8* @SET_DEST(i8* %73)
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %76
  %78 = getelementptr inbounds %struct.set, %struct.set* %77, i32 0, i32 2
  store i8* %74, i8** %78, align 16
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %66, %58
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %4, align 4
  br label %55

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85, %46
  br label %87

87:                                               ; preds = %86, %37
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %167, %87
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %3, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %170

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %94
  %96 = getelementptr inbounds %struct.set, %struct.set* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 16
  store i8* %97, i8** %10, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %99
  %101 = getelementptr inbounds %struct.set, %struct.set* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 16
  %103 = call i64 @GET_CODE(i8* %102)
  %104 = load i64, i64* @STRICT_LOW_PART, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %92
  %107 = load i8*, i8** %10, align 8
  %108 = call i8* @XEXP(i8* %107, i32 0)
  store i8* %108, i8** %10, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %110
  %112 = getelementptr inbounds %struct.set, %struct.set* %111, i32 0, i32 2
  store i8* %108, i8** %112, align 16
  br label %113

113:                                              ; preds = %106, %92
  %114 = load i8*, i8** %10, align 8
  %115 = call i64 @REG_P(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** %10, align 8
  %119 = call i64 @MEM_P(i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %166

121:                                              ; preds = %117
  %122 = load i64, i64* @cselib_record_memory, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %166

124:                                              ; preds = %121, %113
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %126
  %128 = getelementptr inbounds %struct.set, %struct.set* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %11, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %124
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @GET_MODE(i8* %133)
  %135 = load i8*, i8** %8, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = call i8* @gen_rtx_IF_THEN_ELSE(i32 %134, i8* %135, i8* %136, i8* %137)
  store i8* %138, i8** %11, align 8
  br label %139

139:                                              ; preds = %132, %124
  %140 = load i8*, i8** %11, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = call i32 @GET_MODE(i8* %141)
  %143 = call i8* @cselib_lookup(i8* %140, i32 %142, i32 1)
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %145
  %147 = getelementptr inbounds %struct.set, %struct.set* %146, i32 0, i32 1
  store i8* %143, i8** %147, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = call i64 @MEM_P(i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %139
  %152 = load i8*, i8** %10, align 8
  %153 = call i8* @XEXP(i8* %152, i32 0)
  %154 = load i32, i32* @Pmode, align 4
  %155 = call i8* @cselib_lookup(i8* %153, i32 %154, i32 1)
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %157
  %159 = getelementptr inbounds %struct.set, %struct.set* %158, i32 0, i32 0
  store i8* %155, i8** %159, align 16
  br label %165

160:                                              ; preds = %139
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %162
  %164 = getelementptr inbounds %struct.set, %struct.set* %163, i32 0, i32 0
  store i8* null, i8** %164, align 16
  br label %165

165:                                              ; preds = %160, %151
  br label %166

166:                                              ; preds = %165, %121, %117
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %4, align 4
  br label %88

170:                                              ; preds = %88
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* @cselib_invalidate_rtx_note_stores, align 4
  %173 = call i32 @note_stores(i8* %171, i32 %172, i32* null)
  %174 = load i32, i32* %3, align 4
  %175 = icmp sge i32 %174, 2
  br i1 %175, label %176, label %235

176:                                              ; preds = %170
  %177 = load i8*, i8** %7, align 8
  %178 = call i64 @asm_noperands(i8* %177)
  %179 = icmp sge i64 %178, 0
  br i1 %179, label %180, label %235

180:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %231, %180
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %3, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %234

185:                                              ; preds = %181
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %187
  %189 = getelementptr inbounds %struct.set, %struct.set* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 16
  store i8* %190, i8** %12, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = call i64 @REG_P(i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %185
  %195 = load i8*, i8** %12, align 8
  %196 = call i64 @MEM_P(i8* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %230

198:                                              ; preds = %194, %185
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %201

201:                                              ; preds = %226, %198
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %3, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %229

205:                                              ; preds = %201
  %206 = load i8*, i8** %12, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %208
  %210 = getelementptr inbounds %struct.set, %struct.set* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 16
  %212 = call i64 @rtx_equal_p(i8* %206, i8* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %205
  %215 = load i8*, i8** @pc_rtx, align 8
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %217
  %219 = getelementptr inbounds %struct.set, %struct.set* %218, i32 0, i32 2
  store i8* %215, i8** %219, align 16
  %220 = load i8*, i8** @pc_rtx, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %222
  %224 = getelementptr inbounds %struct.set, %struct.set* %223, i32 0, i32 2
  store i8* %220, i8** %224, align 16
  br label %225

225:                                              ; preds = %214, %205
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %13, align 4
  br label %201

229:                                              ; preds = %201
  br label %230

230:                                              ; preds = %229, %194
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %4, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %4, align 4
  br label %181

234:                                              ; preds = %181
  br label %235

235:                                              ; preds = %234, %176, %170
  store i32 0, i32* %4, align 4
  br label %236

236:                                              ; preds = %270, %235
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* %3, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %273

240:                                              ; preds = %236
  %241 = load i32, i32* %4, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %242
  %244 = getelementptr inbounds %struct.set, %struct.set* %243, i32 0, i32 2
  %245 = load i8*, i8** %244, align 16
  store i8* %245, i8** %14, align 8
  %246 = load i8*, i8** %14, align 8
  %247 = call i64 @REG_P(i8* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %240
  %250 = load i8*, i8** %14, align 8
  %251 = call i64 @MEM_P(i8* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %269

253:                                              ; preds = %249
  %254 = load i64, i64* @cselib_record_memory, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %253, %240
  %257 = load i8*, i8** %14, align 8
  %258 = load i32, i32* %4, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %259
  %261 = getelementptr inbounds %struct.set, %struct.set* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = load i32, i32* %4, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.set, %struct.set* %18, i64 %264
  %266 = getelementptr inbounds %struct.set, %struct.set* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 16
  %268 = call i32 @cselib_record_set(i8* %257, i8* %262, i8* %267)
  br label %269

269:                                              ; preds = %256, %253, %249
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %4, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %4, align 4
  br label %236

273:                                              ; preds = %236
  %274 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %274)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @PATTERN(i8*) #2

declare dso_local i64 @GET_CODE(i8*) #2

declare dso_local i8* @COND_EXEC_TEST(i8*) #2

declare dso_local i8* @COND_EXEC_CODE(i8*) #2

declare dso_local i8* @SET_SRC(i8*) #2

declare dso_local i8* @SET_DEST(i8*) #2

declare dso_local i32 @XVECLEN(i8*, i32) #2

declare dso_local i8* @XVECEXP(i8*, i32, i32) #2

declare dso_local i8* @XEXP(i8*, i32) #2

declare dso_local i64 @REG_P(i8*) #2

declare dso_local i64 @MEM_P(i8*) #2

declare dso_local i8* @gen_rtx_IF_THEN_ELSE(i32, i8*, i8*, i8*) #2

declare dso_local i32 @GET_MODE(i8*) #2

declare dso_local i8* @cselib_lookup(i8*, i32, i32) #2

declare dso_local i32 @note_stores(i8*, i32, i32*) #2

declare dso_local i64 @asm_noperands(i8*) #2

declare dso_local i64 @rtx_equal_p(i8*, i8*) #2

declare dso_local i32 @cselib_record_set(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
