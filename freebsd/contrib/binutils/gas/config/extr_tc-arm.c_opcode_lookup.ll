; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_opcode_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_opcode_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.asm_opcode = type { i32 }
%struct.asm_cond = type { i8* }

@cpu_variant = common dso_local global i32 0, align 4
@fpu_neon_ext_v1 = common dso_local global i32 0, align 4
@unified_syntax = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FAIL = common dso_local global i64 0, align 8
@arm_ops_hsh = common dso_local global i32 0, align 4
@OT_odd_infix_0 = common dso_local global i32 0, align 4
@COND_ALWAYS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"conditional infixes are deprecated in unified syntax\00", align 1
@arm_cond_hsh = common dso_local global i32 0, align 4
@thumb_mode = common dso_local global i32 0, align 4
@BAD_COND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.asm_opcode* (i8**)* @opcode_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.asm_opcode* @opcode_lookup(i8** %0) #0 {
  %2 = alloca %struct.asm_opcode*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.asm_opcode*, align 8
  %8 = alloca %struct.asm_cond*, align 8
  %9 = alloca [2 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %12 = load i32, i32* @cpu_variant, align 4
  %13 = load i32, i32* @fpu_neon_ext_v1, align 4
  %14 = call i64 @ARM_CPU_HAS_FEATURE(i32 %12, i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %40, %1
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @unified_syntax, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %22
  br label %43

39:                                               ; preds = %33, %30
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  br label %17

43:                                               ; preds = %38, %17
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store %struct.asm_opcode* null, %struct.asm_opcode** %2, align 8
  br label %326

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %54, label %115

54:                                               ; preds = %48
  store i32 2, i32* %11, align 4
  %55 = load i64, i64* @unified_syntax, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 119
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %76

64:                                               ; preds = %57, %54
  %65 = load i64, i64* @unified_syntax, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 110
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %75

74:                                               ; preds = %67, %64
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75, %63
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 3, i32 0), align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8**, i8*** %3, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 46
  br i1 %88, label %89, label %96

89:                                               ; preds = %76
  %90 = load i8**, i8*** %3, align 8
  %91 = call i64 @parse_neon_type(%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 3), i8** %90)
  %92 = load i64, i64* @FAIL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store %struct.asm_opcode* null, %struct.asm_opcode** %2, align 8
  br label %326

95:                                               ; preds = %89
  br label %114

96:                                               ; preds = %76
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load i8*, i8** %4, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 32
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  store %struct.asm_opcode* null, %struct.asm_opcode** %2, align 8
  br label %326

113:                                              ; preds = %104, %96
  br label %114

114:                                              ; preds = %113, %95
  br label %118

115:                                              ; preds = %48
  %116 = load i8*, i8** %4, align 8
  %117 = load i8**, i8*** %3, align 8
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %115, %114
  %119 = load i32, i32* @arm_ops_hsh, align 4
  %120 = load i8*, i8** %5, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = call i8* @hash_find_n(i32 %119, i8* %120, i32 %126)
  %128 = bitcast i8* %127 to %struct.asm_opcode*
  store %struct.asm_opcode* %128, %struct.asm_opcode** %7, align 8
  %129 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %130 = icmp ne %struct.asm_opcode* %129, null
  br i1 %130, label %131, label %165

131:                                              ; preds = %118
  %132 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %133 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @OT_odd_infix_0, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i8*, i8** @COND_ALWAYS, align 8
  store i8* %138, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %139 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  store %struct.asm_opcode* %139, %struct.asm_opcode** %2, align 8
  br label %326

140:                                              ; preds = %131
  %141 = load i64, i64* @unified_syntax, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %145 = call i32 @as_warn(i32 %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i8*, i8** %5, align 8
  %148 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %149 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @OT_odd_infix_0, align 4
  %152 = sub nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %147, i64 %153
  store i8* %154, i8** %6, align 8
  %155 = load i32, i32* @arm_cond_hsh, align 4
  %156 = load i8*, i8** %6, align 8
  %157 = call i8* @hash_find_n(i32 %155, i8* %156, i32 2)
  %158 = bitcast i8* %157 to %struct.asm_cond*
  store %struct.asm_cond* %158, %struct.asm_cond** %8, align 8
  %159 = load %struct.asm_cond*, %struct.asm_cond** %8, align 8
  %160 = call i32 @assert(%struct.asm_cond* %159)
  %161 = load %struct.asm_cond*, %struct.asm_cond** %8, align 8
  %162 = getelementptr inbounds %struct.asm_cond, %struct.asm_cond* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  store i8* %163, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %164 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  store %struct.asm_opcode* %164, %struct.asm_opcode** %2, align 8
  br label %326

165:                                              ; preds = %118
  %166 = load i8*, i8** %4, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = icmp slt i64 %170, 3
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store %struct.asm_opcode* null, %struct.asm_opcode** %2, align 8
  br label %326

173:                                              ; preds = %165
  %174 = load i8*, i8** %4, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 -2
  store i8* %175, i8** %6, align 8
  %176 = load i32, i32* @arm_cond_hsh, align 4
  %177 = load i8*, i8** %6, align 8
  %178 = call i8* @hash_find_n(i32 %176, i8* %177, i32 2)
  %179 = bitcast i8* %178 to %struct.asm_cond*
  store %struct.asm_cond* %179, %struct.asm_cond** %8, align 8
  %180 = load i32, i32* @arm_ops_hsh, align 4
  %181 = load i8*, i8** %5, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = load i8*, i8** %5, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  %188 = call i8* @hash_find_n(i32 %180, i8* %181, i32 %187)
  %189 = bitcast i8* %188 to %struct.asm_opcode*
  store %struct.asm_opcode* %189, %struct.asm_opcode** %7, align 8
  %190 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %191 = icmp ne %struct.asm_opcode* %190, null
  br i1 %191, label %192, label %224

192:                                              ; preds = %173
  %193 = load %struct.asm_cond*, %struct.asm_cond** %8, align 8
  %194 = icmp ne %struct.asm_cond* %193, null
  br i1 %194, label %195, label %224

195:                                              ; preds = %192
  %196 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %197 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  switch i32 %198, label %222 [
    i32 134, label %199
    i32 136, label %200
    i32 135, label %200
    i32 130, label %200
    i32 132, label %205
    i32 131, label %205
    i32 133, label %205
    i32 129, label %210
    i32 128, label %210
  ]

199:                                              ; preds = %195
  br label %223

200:                                              ; preds = %195, %195, %195
  %201 = load i64, i64* @unified_syntax, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  store %struct.asm_opcode* null, %struct.asm_opcode** %2, align 8
  br label %326

204:                                              ; preds = %200
  br label %205

205:                                              ; preds = %195, %195, %195, %204
  %206 = load %struct.asm_cond*, %struct.asm_cond** %8, align 8
  %207 = getelementptr inbounds %struct.asm_cond, %struct.asm_cond* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  store i8* %208, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %209 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  store %struct.asm_opcode* %209, %struct.asm_opcode** %2, align 8
  br label %326

210:                                              ; preds = %195, %195
  %211 = load i32, i32* @thumb_mode, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load %struct.asm_cond*, %struct.asm_cond** %8, align 8
  %215 = getelementptr inbounds %struct.asm_cond, %struct.asm_cond* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  store i8* %216, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  br label %220

217:                                              ; preds = %210
  %218 = load i32, i32* @BAD_COND, align 4
  store i32 %218, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 2), align 8
  %219 = load i8*, i8** @COND_ALWAYS, align 8
  store i8* %219, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  br label %220

220:                                              ; preds = %217, %213
  %221 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  store %struct.asm_opcode* %221, %struct.asm_opcode** %2, align 8
  br label %326

222:                                              ; preds = %195
  store %struct.asm_opcode* null, %struct.asm_opcode** %2, align 8
  br label %326

223:                                              ; preds = %199
  br label %224

224:                                              ; preds = %223, %192, %173
  %225 = load i8*, i8** %4, align 8
  %226 = load i8*, i8** %5, align 8
  %227 = ptrtoint i8* %225 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = icmp slt i64 %229, 6
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  store %struct.asm_opcode* null, %struct.asm_opcode** %2, align 8
  br label %326

232:                                              ; preds = %224
  %233 = load i8*, i8** %5, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 3
  store i8* %234, i8** %6, align 8
  %235 = load i32, i32* @arm_cond_hsh, align 4
  %236 = load i8*, i8** %6, align 8
  %237 = call i8* @hash_find_n(i32 %235, i8* %236, i32 2)
  %238 = bitcast i8* %237 to %struct.asm_cond*
  store %struct.asm_cond* %238, %struct.asm_cond** %8, align 8
  %239 = load %struct.asm_cond*, %struct.asm_cond** %8, align 8
  %240 = icmp ne %struct.asm_cond* %239, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %232
  store %struct.asm_opcode* null, %struct.asm_opcode** %2, align 8
  br label %326

242:                                              ; preds = %232
  %243 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %244 = load i8*, i8** %6, align 8
  %245 = call i32 @memcpy(i8* %243, i8* %244, i32 2)
  %246 = load i8*, i8** %6, align 8
  %247 = load i8*, i8** %6, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 2
  %249 = load i8*, i8** %4, align 8
  %250 = load i8*, i8** %6, align 8
  %251 = ptrtoint i8* %249 to i64
  %252 = ptrtoint i8* %250 to i64
  %253 = sub i64 %251, %252
  %254 = sub nsw i64 %253, 2
  %255 = trunc i64 %254 to i32
  %256 = call i32 @memmove(i8* %246, i8* %248, i32 %255)
  %257 = load i32, i32* @arm_ops_hsh, align 4
  %258 = load i8*, i8** %5, align 8
  %259 = load i8*, i8** %4, align 8
  %260 = load i8*, i8** %5, align 8
  %261 = ptrtoint i8* %259 to i64
  %262 = ptrtoint i8* %260 to i64
  %263 = sub i64 %261, %262
  %264 = sub nsw i64 %263, 2
  %265 = trunc i64 %264 to i32
  %266 = call i8* @hash_find_n(i32 %257, i8* %258, i32 %265)
  %267 = bitcast i8* %266 to %struct.asm_opcode*
  store %struct.asm_opcode* %267, %struct.asm_opcode** %7, align 8
  %268 = load i8*, i8** %6, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 2
  %270 = load i8*, i8** %6, align 8
  %271 = load i8*, i8** %4, align 8
  %272 = load i8*, i8** %6, align 8
  %273 = ptrtoint i8* %271 to i64
  %274 = ptrtoint i8* %272 to i64
  %275 = sub i64 %273, %274
  %276 = sub nsw i64 %275, 2
  %277 = trunc i64 %276 to i32
  %278 = call i32 @memmove(i8* %269, i8* %270, i32 %277)
  %279 = load i8*, i8** %6, align 8
  %280 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %281 = call i32 @memcpy(i8* %279, i8* %280, i32 2)
  %282 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %283 = icmp ne %struct.asm_opcode* %282, null
  br i1 %283, label %284, label %325

284:                                              ; preds = %242
  %285 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %286 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = icmp eq i32 %287, 136
  br i1 %288, label %304, label %289

289:                                              ; preds = %284
  %290 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %291 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, 135
  br i1 %293, label %304, label %294

294:                                              ; preds = %289
  %295 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %296 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 133
  br i1 %298, label %304, label %299

299:                                              ; preds = %294
  %300 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %301 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 134
  br i1 %303, label %304, label %325

304:                                              ; preds = %299, %294, %289, %284
  %305 = load i64, i64* @unified_syntax, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %320

307:                                              ; preds = %304
  %308 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %309 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %310, 136
  br i1 %311, label %317, label %312

312:                                              ; preds = %307
  %313 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  %314 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 135
  br i1 %316, label %317, label %320

317:                                              ; preds = %312, %307
  %318 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %319 = call i32 @as_warn(i32 %318)
  br label %320

320:                                              ; preds = %317, %312, %304
  %321 = load %struct.asm_cond*, %struct.asm_cond** %8, align 8
  %322 = getelementptr inbounds %struct.asm_cond, %struct.asm_cond* %321, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  store i8* %323, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %324 = load %struct.asm_opcode*, %struct.asm_opcode** %7, align 8
  store %struct.asm_opcode* %324, %struct.asm_opcode** %2, align 8
  br label %326

325:                                              ; preds = %299, %242
  store %struct.asm_opcode* null, %struct.asm_opcode** %2, align 8
  br label %326

326:                                              ; preds = %325, %320, %241, %231, %222, %220, %205, %203, %172, %146, %137, %112, %94, %47
  %327 = load %struct.asm_opcode*, %struct.asm_opcode** %2, align 8
  ret %struct.asm_opcode* %327
}

declare dso_local i64 @ARM_CPU_HAS_FEATURE(i32, i32) #1

declare dso_local i64 @parse_neon_type(%struct.TYPE_3__*, i8**) #1

declare dso_local i8* @hash_find_n(i32, i8*, i32) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @assert(%struct.asm_cond*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
