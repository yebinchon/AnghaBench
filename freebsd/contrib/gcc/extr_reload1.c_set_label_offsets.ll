; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_set_label_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_set_label_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elim_table = type { i32, i32, i32 }

@offsets_known_at = common dso_local global i32* null, align 8
@first_label_num = common dso_local global i64 0, align 8
@NUM_ELIMINABLE_REGS = common dso_local global i32 0, align 4
@reg_eliminate = common dso_local global %struct.elim_table* null, align 8
@offsets_at = common dso_local global i32** null, align 8
@REG_LABEL = common dso_local global i32 0, align 4
@pc_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @set_label_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_label_offsets(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.elim_table*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GET_CODE(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %273 [
    i32 132, label %14
    i32 136, label %22
    i32 133, label %139
    i32 134, label %144
    i32 137, label %144
    i32 131, label %164
    i32 138, label %164
    i32 139, label %164
    i32 128, label %186
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @LABEL_REF_NONLOCAL_P(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %274

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @XEXP(i32 %20, i32 0)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %3, %19
  %23 = load i32*, i32** @offsets_known_at, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @CODE_LABEL_NUMBER(i32 %24)
  %26 = load i64, i64* @first_label_num, align 8
  %27 = sub i64 %25, %26
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %75, label %31

31:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %65, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @NUM_ELIMINABLE_REGS, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %40, i64 %42
  %44 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  br label %53

46:                                               ; preds = %36
  %47 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %47, i64 %49
  %51 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = phi i32 [ %45, %39 ], [ %52, %46 ]
  %55 = load i32**, i32*** @offsets_at, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @CODE_LABEL_NUMBER(i32 %56)
  %58 = load i64, i64* @first_label_num, align 8
  %59 = sub i64 %57, %58
  %60 = getelementptr inbounds i32*, i32** %55, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %54, i32* %64, align 4
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %32

68:                                               ; preds = %32
  %69 = load i32*, i32** @offsets_known_at, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @CODE_LABEL_NUMBER(i32 %70)
  %72 = load i64, i64* @first_label_num, align 8
  %73 = sub i64 %71, %72
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32 1, i32* %74, align 4
  br label %138

75:                                               ; preds = %22
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @prev_nonnote_insn(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @BARRIER_P(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @set_offsets_for_label(i32 %88)
  br label %137

90:                                               ; preds = %83, %79, %75
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %133, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @NUM_ELIMINABLE_REGS, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %136

95:                                               ; preds = %91
  %96 = load i32**, i32*** @offsets_at, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i64 @CODE_LABEL_NUMBER(i32 %97)
  %99 = load i64, i64* @first_label_num, align 8
  %100 = sub i64 %98, %99
  %101 = getelementptr inbounds i32*, i32** %96, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %95
  %110 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %110, i64 %112
  %114 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  br label %123

116:                                              ; preds = %95
  %117 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %117, i64 %119
  %121 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  br label %123

123:                                              ; preds = %116, %109
  %124 = phi i32 [ %115, %109 ], [ %122, %116 ]
  %125 = icmp ne i32 %106, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %128 = load i32, i32* %9, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %127, i64 %129
  %131 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %126, %123
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %91

136:                                              ; preds = %91
  br label %137

137:                                              ; preds = %136, %87
  br label %138

138:                                              ; preds = %137, %68
  br label %274

139:                                              ; preds = %3
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @PATTERN(i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  call void @set_label_offsets(i32 %141, i32 %142, i32 %143)
  br label %144

144:                                              ; preds = %3, %3, %139
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @REG_NOTES(i32 %145)
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %160, %144
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @REG_NOTE_KIND(i32 %151)
  %153 = load i32, i32* @REG_LABEL, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @XEXP(i32 %156, i32 0)
  %158 = load i32, i32* %5, align 4
  call void @set_label_offsets(i32 %157, i32 %158, i32 1)
  br label %159

159:                                              ; preds = %155, %150
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @XEXP(i32 %161, i32 1)
  store i32 %162, i32* %8, align 4
  br label %147

163:                                              ; preds = %147
  br label %274

164:                                              ; preds = %3, %3, %3
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %182, %164
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp eq i32 %168, 139
  %170 = zext i1 %169 to i32
  %171 = call i32 @XVECLEN(i32 %167, i32 %170)
  %172 = icmp ult i32 %166, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %165
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %175, 139
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @XVECEXP(i32 %174, i32 %177, i32 %178)
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* %6, align 4
  call void @set_label_offsets(i32 %179, i32 %180, i32 %181)
  br label %182

182:                                              ; preds = %173
  %183 = load i32, i32* %9, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %165

185:                                              ; preds = %165
  br label %274

186:                                              ; preds = %3
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @SET_DEST(i32 %187)
  %189 = load i32, i32* @pc_rtx, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %274

192:                                              ; preds = %186
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @SET_SRC(i32 %193)
  %195 = call i32 @GET_CODE(i32 %194)
  switch i32 %195, label %247 [
    i32 130, label %196
    i32 129, label %196
    i32 132, label %197
    i32 135, label %202
  ]

196:                                              ; preds = %192, %192
  br label %274

197:                                              ; preds = %192
  %198 = load i32, i32* %4, align 4
  %199 = call i32 @SET_SRC(i32 %198)
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* %6, align 4
  call void @set_label_offsets(i32 %199, i32 %200, i32 %201)
  br label %274

202:                                              ; preds = %192
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @SET_SRC(i32 %203)
  %205 = call i32 @XEXP(i32 %204, i32 1)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @GET_CODE(i32 %206)
  %208 = icmp eq i32 %207, 132
  br i1 %208, label %209, label %214

209:                                              ; preds = %202
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @XEXP(i32 %210, i32 0)
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* %6, align 4
  call void @set_label_offsets(i32 %211, i32 %212, i32 %213)
  br label %224

214:                                              ; preds = %202
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @GET_CODE(i32 %215)
  %217 = icmp ne i32 %216, 130
  br i1 %217, label %218, label %223

218:                                              ; preds = %214
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @GET_CODE(i32 %219)
  %221 = icmp ne i32 %220, 129
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  br label %248

223:                                              ; preds = %218, %214
  br label %224

224:                                              ; preds = %223, %209
  %225 = load i32, i32* %4, align 4
  %226 = call i32 @SET_SRC(i32 %225)
  %227 = call i32 @XEXP(i32 %226, i32 2)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @GET_CODE(i32 %228)
  %230 = icmp eq i32 %229, 132
  br i1 %230, label %231, label %236

231:                                              ; preds = %224
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @XEXP(i32 %232, i32 0)
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* %6, align 4
  call void @set_label_offsets(i32 %233, i32 %234, i32 %235)
  br label %246

236:                                              ; preds = %224
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @GET_CODE(i32 %237)
  %239 = icmp ne i32 %238, 130
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @GET_CODE(i32 %241)
  %243 = icmp ne i32 %242, 129
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  br label %248

245:                                              ; preds = %240, %236
  br label %246

246:                                              ; preds = %245, %231
  br label %274

247:                                              ; preds = %192
  br label %248

248:                                              ; preds = %247, %244, %222
  %249 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %249, %struct.elim_table** %10, align 8
  br label %250

250:                                              ; preds = %269, %248
  %251 = load %struct.elim_table*, %struct.elim_table** %10, align 8
  %252 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %253 = load i32, i32* @NUM_ELIMINABLE_REGS, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %252, i64 %254
  %256 = icmp ult %struct.elim_table* %251, %255
  br i1 %256, label %257, label %272

257:                                              ; preds = %250
  %258 = load %struct.elim_table*, %struct.elim_table** %10, align 8
  %259 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.elim_table*, %struct.elim_table** %10, align 8
  %262 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %260, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %257
  %266 = load %struct.elim_table*, %struct.elim_table** %10, align 8
  %267 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %266, i32 0, i32 0
  store i32 0, i32* %267, align 4
  br label %268

268:                                              ; preds = %265, %257
  br label %269

269:                                              ; preds = %268
  %270 = load %struct.elim_table*, %struct.elim_table** %10, align 8
  %271 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %270, i32 1
  store %struct.elim_table* %271, %struct.elim_table** %10, align 8
  br label %250

272:                                              ; preds = %250
  br label %274

273:                                              ; preds = %3
  br label %274

274:                                              ; preds = %18, %138, %163, %185, %191, %196, %197, %246, %273, %272
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @LABEL_REF_NONLOCAL_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @CODE_LABEL_NUMBER(i32) #1

declare dso_local i32 @prev_nonnote_insn(i32) #1

declare dso_local i32 @BARRIER_P(i32) #1

declare dso_local i32 @set_offsets_for_label(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @REG_NOTES(i32) #1

declare dso_local i32 @REG_NOTE_KIND(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
