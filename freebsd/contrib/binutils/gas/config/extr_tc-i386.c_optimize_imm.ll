; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_optimize_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_optimize_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8, i32, i32*, i64*, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@i = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@Reg = common dso_local global i32 0, align 4
@Reg8 = common dso_local global i32 0, align 4
@Reg16 = common dso_local global i32 0, align 4
@Reg32 = common dso_local global i32 0, align 4
@Reg64 = common dso_local global i32 0, align 4
@flag_code = common dso_local global i64 0, align 8
@CODE_16BIT = common dso_local global i64 0, align 8
@DATA_PREFIX = common dso_local global i64 0, align 8
@Imm = common dso_local global i32 0, align 4
@Imm32 = common dso_local global i32 0, align 4
@Imm64 = common dso_local global i32 0, align 4
@Imm16 = common dso_local global i32 0, align 4
@Imm32S = common dso_local global i32 0, align 4
@Imm8 = common dso_local global i32 0, align 4
@Imm8S = common dso_local global i32 0, align 4
@current_templates = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @optimize_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimize_imm() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store i8 0, i8* %1, align 1
  %6 = load i8, i8* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i8, i8* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  store i8 %9, i8* %1, align 1
  br label %90

10:                                               ; preds = %0
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 5), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %72, %13
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %2, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @Reg, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %19
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @Reg8, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i8 -122, i8* %1, align 1
  br label %71

38:                                               ; preds = %28
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @Reg16, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i8 -128, i8* %1, align 1
  br label %70

48:                                               ; preds = %38
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @Reg32, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i8 -123, i8* %1, align 1
  br label %69

58:                                               ; preds = %48
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @Reg64, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i8 -127, i8* %1, align 1
  br label %68

68:                                               ; preds = %67, %58
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %47
  br label %71

71:                                               ; preds = %70, %37
  br label %73

72:                                               ; preds = %19
  br label %15

73:                                               ; preds = %71, %15
  br label %89

74:                                               ; preds = %10
  %75 = load i64, i64* @flag_code, align 8
  %76 = load i64, i64* @CODE_16BIT, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 3), align 8
  %80 = load i64, i64* @DATA_PREFIX, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = xor i32 %78, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  store i8 -128, i8* %1, align 1
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %319, %90
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %2, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %320

96:                                               ; preds = %92
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @Imm, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %319

105:                                              ; preds = %96
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %107 = load i32, i32* %2, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %267 [
    i32 131, label %114
    i32 132, label %265
    i32 130, label %265
  ]

114:                                              ; preds = %105
  %115 = load i8, i8* %1, align 1
  %116 = sext i8 %115 to i32
  switch i32 %116, label %159 [
    i32 133, label %117
    i32 128, label %127
    i32 134, label %141
  ]

117:                                              ; preds = %114
  %118 = load i32, i32* @Imm32, align 4
  %119 = load i32, i32* @Imm64, align 4
  %120 = or i32 %118, %119
  %121 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %122 = load i32, i32* %2, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %120
  store i32 %126, i32* %124, align 4
  br label %159

127:                                              ; preds = %114
  %128 = load i32, i32* @Imm16, align 4
  %129 = load i32, i32* @Imm32S, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @Imm32, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @Imm64, align 4
  %134 = or i32 %132, %133
  %135 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %134
  store i32 %140, i32* %138, align 4
  br label %159

141:                                              ; preds = %114
  %142 = load i32, i32* @Imm16, align 4
  %143 = load i32, i32* @Imm8, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @Imm8S, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @Imm32S, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @Imm32, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @Imm64, align 4
  %152 = or i32 %150, %151
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %154 = load i32, i32* %2, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %152
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %114, %141, %127, %117
  %160 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %161 = load i32, i32* %2, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @Imm16, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %198

168:                                              ; preds = %159
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %170 = load i32, i32* %2, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, -65536
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %168
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %181 = load i32, i32* %2, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 65535
  %189 = xor i32 %188, 32768
  %190 = sub nsw i32 %189, 32768
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  store i32 %190, i32* %197, align 4
  br label %198

198:                                              ; preds = %179, %168, %159
  %199 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %200 = load i32, i32* %2, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @Imm32, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %236

207:                                              ; preds = %198
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %209 = load i32, i32* %2, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, 0
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %236

218:                                              ; preds = %207
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %220 = load i32, i32* %2, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = xor i32 %226, -2147483648
  %228 = sub nsw i32 %227, -2147483648
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %230 = load i32, i32* %2, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  store i32 %228, i32* %235, align 4
  br label %236

236:                                              ; preds = %218, %207, %198
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %238 = load i32, i32* %2, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @smallest_imm_type(i32 %244)
  %246 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %247 = load i32, i32* %2, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %245
  store i32 %251, i32* %249, align 4
  %252 = load i8, i8* %1, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 129
  br i1 %254, label %255, label %264

255:                                              ; preds = %236
  %256 = load i32, i32* @Imm32, align 4
  %257 = xor i32 %256, -1
  %258 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %259 = load i32, i32* %2, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, %257
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %255, %236
  br label %318

265:                                              ; preds = %105, %105
  %266 = call i32 (...) @abort() #3
  unreachable

267:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current_templates, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  store %struct.TYPE_8__* %270, %struct.TYPE_8__** %5, align 8
  br label %271

271:                                              ; preds = %287, %267
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current_templates, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %274, align 8
  %276 = icmp ult %struct.TYPE_8__* %272, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %271
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %2, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %4, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %4, align 4
  br label %287

287:                                              ; preds = %277
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 1
  store %struct.TYPE_8__* %289, %struct.TYPE_8__** %5, align 8
  br label %271

290:                                              ; preds = %271
  %291 = load i8, i8* %1, align 1
  %292 = sext i8 %291 to i32
  switch i32 %292, label %303 [
    i32 129, label %293
    i32 133, label %297
    i32 128, label %299
    i32 134, label %301
  ]

293:                                              ; preds = %290
  %294 = load i32, i32* @Imm64, align 4
  %295 = load i32, i32* @Imm32S, align 4
  %296 = or i32 %294, %295
  store i32 %296, i32* %3, align 4
  br label %304

297:                                              ; preds = %290
  %298 = load i32, i32* @Imm32, align 4
  store i32 %298, i32* %3, align 4
  br label %304

299:                                              ; preds = %290
  %300 = load i32, i32* @Imm16, align 4
  store i32 %300, i32* %3, align 4
  br label %304

301:                                              ; preds = %290
  %302 = load i32, i32* @Imm8, align 4
  store i32 %302, i32* %3, align 4
  br label %304

303:                                              ; preds = %290
  store i32 0, i32* %3, align 4
  br label %304

304:                                              ; preds = %303, %301, %299, %297, %293
  %305 = load i32, i32* %3, align 4
  %306 = load i32, i32* %4, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = load i32, i32* %3, align 4
  %311 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %312 = load i32, i32* %2, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, %310
  store i32 %316, i32* %314, align 4
  br label %317

317:                                              ; preds = %309, %304
  br label %318

318:                                              ; preds = %317, %264
  br label %319

319:                                              ; preds = %318, %96
  br label %92

320:                                              ; preds = %92
  ret void
}

declare dso_local i32 @smallest_imm_type(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
