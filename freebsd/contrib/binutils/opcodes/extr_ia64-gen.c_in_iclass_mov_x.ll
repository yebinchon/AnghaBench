; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_in_iclass_mov_x.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_in_iclass_mov_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_opcode = type { i32*, i32 }
%struct.iclass = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"mov.i\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mov.m\00", align 1
@IA64_OPND_AR3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"I26\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"I27\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"I28\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"M29\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"M30\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"M31\00", align 1
@IA64_OPND_B1 = common dso_local global i32 0, align 4
@IA64_OPND_B2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"I22\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"I21\00", align 1
@IA64_OPND_CR3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"M32\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"M33\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"M42\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"M43\00", align 1
@IA64_OPND_IP = common dso_local global i32 0, align 4
@IA64_OPND_PR = common dso_local global i32 0, align 4
@IA64_OPND_PR_ROT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"I23\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"I24\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"I25\00", align 1
@IA64_OPND_PSR_L = common dso_local global i32 0, align 4
@IA64_OPND_PSR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"M35\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"M36\00", align 1
@IA64_OPND_PSR_UM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ia64_opcode*, %struct.iclass*, i8*, i8*)* @in_iclass_mov_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_iclass_mov_x(%struct.ia64_opcode* %0, %struct.iclass* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ia64_opcode*, align 8
  %7 = alloca %struct.iclass*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.ia64_opcode* %0, %struct.ia64_opcode** %6, align 8
  store %struct.iclass* %1, %struct.iclass** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %32 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %33 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @strcmp(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %512

41:                                               ; preds = %4
  %42 = load %struct.iclass*, %struct.iclass** %7, align 8
  %43 = getelementptr inbounds %struct.iclass, %struct.iclass* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %47 [
    i32 97, label %49
    i32 98, label %191
    i32 99, label %229
    i32 105, label %272
    i32 112, label %343
    i32 117, label %468
  ]

47:                                               ; preds = %41
  %48 = call i32 (...) @abort() #3
  unreachable

49:                                               ; preds = %41
  %50 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %51 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @strcmp(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %57 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @strcmp(i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %49
  %65 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %66 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IA64_OPND_AR3, align 4
  %71 = icmp eq i32 %69, %70
  br label %72

72:                                               ; preds = %64, %49
  %73 = phi i1 [ false, %49 ], [ %71, %64 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %79 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IA64_OPND_AR3, align 4
  %84 = icmp eq i32 %82, %83
  br label %85

85:                                               ; preds = %77, %72
  %86 = phi i1 [ false, %72 ], [ %84, %77 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %92 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IA64_OPND_AR3, align 4
  %97 = icmp eq i32 %95, %96
  br label %98

98:                                               ; preds = %90, %85
  %99 = phi i1 [ false, %85 ], [ %97, %90 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %105 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IA64_OPND_AR3, align 4
  %110 = icmp eq i32 %108, %109
  br label %111

111:                                              ; preds = %103, %98
  %112 = phi i1 [ false, %98 ], [ %110, %103 ]
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %118 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IA64_OPND_AR3, align 4
  %123 = icmp eq i32 %121, %122
  br label %124

124:                                              ; preds = %116, %111
  %125 = phi i1 [ false, %111 ], [ %123, %116 ]
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %131 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IA64_OPND_AR3, align 4
  %136 = icmp eq i32 %134, %135
  br label %137

137:                                              ; preds = %129, %124
  %138 = phi i1 [ false, %124 ], [ %136, %129 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %137
  %143 = load i8*, i8** %8, align 8
  %144 = call i32* @strstr(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %145 = icmp ne i32* %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %8, align 8
  %148 = call i32* @strstr(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %149 = icmp ne i32* %148, null
  br label %150

150:                                              ; preds = %146, %142
  %151 = phi i1 [ true, %142 ], [ %149, %146 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %5, align 4
  br label %512

153:                                              ; preds = %137
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i8*, i8** %8, align 8
  %158 = call i32* @strstr(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %159 = icmp ne i32* %158, null
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %5, align 4
  br label %512

161:                                              ; preds = %153
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load i8*, i8** %8, align 8
  %166 = call i32* @strstr(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %167 = icmp ne i32* %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %8, align 8
  %170 = call i32* @strstr(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %171 = icmp ne i32* %170, null
  br label %172

172:                                              ; preds = %168, %164
  %173 = phi i1 [ true, %164 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %5, align 4
  br label %512

175:                                              ; preds = %161
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i8*, i8** %8, align 8
  %180 = call i32* @strstr(i8* %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %181 = icmp ne i32* %180, null
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %5, align 4
  br label %512

183:                                              ; preds = %175
  %184 = load i32, i32* %17, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %18, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186, %183
  store i32 1, i32* %5, align 4
  br label %512

190:                                              ; preds = %186
  br label %511

191:                                              ; preds = %41
  %192 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %193 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @IA64_OPND_B1, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %19, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %191
  %203 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %204 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @IA64_OPND_B2, align 4
  %209 = icmp eq i32 %207, %208
  br label %210

210:                                              ; preds = %202, %191
  %211 = phi i1 [ false, %191 ], [ %209, %202 ]
  %212 = zext i1 %211 to i32
  store i32 %212, i32* %20, align 4
  %213 = load i32, i32* %20, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load i8*, i8** %8, align 8
  %217 = call i32* @strstr(i8* %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %218 = icmp ne i32* %217, null
  %219 = zext i1 %218 to i32
  store i32 %219, i32* %5, align 4
  br label %512

220:                                              ; preds = %210
  %221 = load i32, i32* %19, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load i8*, i8** %8, align 8
  %225 = call i32* @strstr(i8* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %226 = icmp ne i32* %225, null
  %227 = zext i1 %226 to i32
  store i32 %227, i32* %5, align 4
  br label %512

228:                                              ; preds = %220
  br label %511

229:                                              ; preds = %41
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %234 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @IA64_OPND_CR3, align 4
  %239 = icmp eq i32 %237, %238
  br label %240

240:                                              ; preds = %232, %229
  %241 = phi i1 [ false, %229 ], [ %239, %232 ]
  %242 = zext i1 %241 to i32
  store i32 %242, i32* %21, align 4
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %247 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @IA64_OPND_CR3, align 4
  %252 = icmp eq i32 %250, %251
  br label %253

253:                                              ; preds = %245, %240
  %254 = phi i1 [ false, %240 ], [ %252, %245 ]
  %255 = zext i1 %254 to i32
  store i32 %255, i32* %22, align 4
  %256 = load i32, i32* %21, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load i8*, i8** %8, align 8
  %260 = call i32* @strstr(i8* %259, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %261 = icmp ne i32* %260, null
  %262 = zext i1 %261 to i32
  store i32 %262, i32* %5, align 4
  br label %512

263:                                              ; preds = %253
  %264 = load i32, i32* %22, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = load i8*, i8** %8, align 8
  %268 = call i32* @strstr(i8* %267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %269 = icmp ne i32* %268, null
  %270 = zext i1 %269 to i32
  store i32 %270, i32* %5, align 4
  br label %512

271:                                              ; preds = %263
  br label %511

272:                                              ; preds = %41
  %273 = load %struct.iclass*, %struct.iclass** %7, align 8
  %274 = getelementptr inbounds %struct.iclass, %struct.iclass* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 5
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 110
  br i1 %278, label %279, label %324

279:                                              ; preds = %272
  %280 = load i32, i32* %10, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %279
  %283 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %284 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = load i8*, i8** %9, align 8
  %289 = call i32 @irf_operand(i32 %287, i8* %288)
  %290 = icmp ne i32 %289, 0
  br label %291

291:                                              ; preds = %282, %279
  %292 = phi i1 [ false, %279 ], [ %290, %282 ]
  %293 = zext i1 %292 to i32
  store i32 %293, i32* %23, align 4
  %294 = load i32, i32* %10, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %291
  %297 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %298 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  %301 = load i32, i32* %300, align 4
  %302 = load i8*, i8** %9, align 8
  %303 = call i32 @irf_operand(i32 %301, i8* %302)
  %304 = icmp ne i32 %303, 0
  br label %305

305:                                              ; preds = %296, %291
  %306 = phi i1 [ false, %291 ], [ %304, %296 ]
  %307 = zext i1 %306 to i32
  store i32 %307, i32* %24, align 4
  %308 = load i32, i32* %23, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = load i8*, i8** %8, align 8
  %312 = call i32* @strstr(i8* %311, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %313 = icmp ne i32* %312, null
  %314 = zext i1 %313 to i32
  store i32 %314, i32* %5, align 4
  br label %512

315:                                              ; preds = %305
  %316 = load i32, i32* %24, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = load i8*, i8** %8, align 8
  %320 = call i32* @strstr(i8* %319, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %321 = icmp ne i32* %320, null
  %322 = zext i1 %321 to i32
  store i32 %322, i32* %5, align 4
  br label %512

323:                                              ; preds = %315
  br label %342

324:                                              ; preds = %272
  %325 = load %struct.iclass*, %struct.iclass** %7, align 8
  %326 = getelementptr inbounds %struct.iclass, %struct.iclass* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 5
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 112
  br i1 %330, label %331, label %340

331:                                              ; preds = %324
  %332 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %333 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @IA64_OPND_IP, align 4
  %338 = icmp eq i32 %336, %337
  %339 = zext i1 %338 to i32
  store i32 %339, i32* %5, align 4
  br label %512

340:                                              ; preds = %324
  %341 = call i32 (...) @abort() #3
  unreachable

342:                                              ; preds = %323
  br label %511

343:                                              ; preds = %41
  %344 = load %struct.iclass*, %struct.iclass** %7, align 8
  %345 = getelementptr inbounds %struct.iclass, %struct.iclass* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 5
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 114
  br i1 %349, label %350, label %414

350:                                              ; preds = %343
  %351 = load i32, i32* %10, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %350
  %354 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %355 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @IA64_OPND_PR, align 4
  %360 = icmp eq i32 %358, %359
  br label %361

361:                                              ; preds = %353, %350
  %362 = phi i1 [ false, %350 ], [ %360, %353 ]
  %363 = zext i1 %362 to i32
  store i32 %363, i32* %25, align 4
  %364 = load i32, i32* %10, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %374

366:                                              ; preds = %361
  %367 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %368 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @IA64_OPND_PR, align 4
  %373 = icmp eq i32 %371, %372
  br label %374

374:                                              ; preds = %366, %361
  %375 = phi i1 [ false, %361 ], [ %373, %366 ]
  %376 = zext i1 %375 to i32
  store i32 %376, i32* %26, align 4
  %377 = load i32, i32* %10, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %387

379:                                              ; preds = %374
  %380 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %381 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %380, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 0
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @IA64_OPND_PR_ROT, align 4
  %386 = icmp eq i32 %384, %385
  br label %387

387:                                              ; preds = %379, %374
  %388 = phi i1 [ false, %374 ], [ %386, %379 ]
  %389 = zext i1 %388 to i32
  store i32 %389, i32* %27, align 4
  %390 = load i32, i32* %26, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %387
  %393 = load i8*, i8** %8, align 8
  %394 = call i32* @strstr(i8* %393, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %395 = icmp ne i32* %394, null
  %396 = zext i1 %395 to i32
  store i32 %396, i32* %5, align 4
  br label %512

397:                                              ; preds = %387
  %398 = load i32, i32* %27, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %397
  %401 = load i8*, i8** %8, align 8
  %402 = call i32* @strstr(i8* %401, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %403 = icmp ne i32* %402, null
  %404 = zext i1 %403 to i32
  store i32 %404, i32* %5, align 4
  br label %512

405:                                              ; preds = %397
  %406 = load i32, i32* %25, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %405
  %409 = load i8*, i8** %8, align 8
  %410 = call i32* @strstr(i8* %409, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %411 = icmp ne i32* %410, null
  %412 = zext i1 %411 to i32
  store i32 %412, i32* %5, align 4
  br label %512

413:                                              ; preds = %405
  br label %467

414:                                              ; preds = %343
  %415 = load %struct.iclass*, %struct.iclass** %7, align 8
  %416 = getelementptr inbounds %struct.iclass, %struct.iclass* %415, i32 0, i32 0
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 5
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %419, 115
  br i1 %420, label %421, label %464

421:                                              ; preds = %414
  %422 = load i32, i32* %10, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %432

424:                                              ; preds = %421
  %425 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %426 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %425, i32 0, i32 0
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @IA64_OPND_PSR_L, align 4
  %431 = icmp eq i32 %429, %430
  br label %432

432:                                              ; preds = %424, %421
  %433 = phi i1 [ false, %421 ], [ %431, %424 ]
  %434 = zext i1 %433 to i32
  store i32 %434, i32* %28, align 4
  %435 = load i32, i32* %10, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %432
  %438 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %439 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %438, i32 0, i32 0
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 1
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @IA64_OPND_PSR, align 4
  %444 = icmp eq i32 %442, %443
  br label %445

445:                                              ; preds = %437, %432
  %446 = phi i1 [ false, %432 ], [ %444, %437 ]
  %447 = zext i1 %446 to i32
  store i32 %447, i32* %29, align 4
  %448 = load i32, i32* %28, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %445
  %451 = load i8*, i8** %8, align 8
  %452 = call i32* @strstr(i8* %451, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %453 = icmp ne i32* %452, null
  %454 = zext i1 %453 to i32
  store i32 %454, i32* %5, align 4
  br label %512

455:                                              ; preds = %445
  %456 = load i32, i32* %29, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %463

458:                                              ; preds = %455
  %459 = load i8*, i8** %8, align 8
  %460 = call i32* @strstr(i8* %459, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %461 = icmp ne i32* %460, null
  %462 = zext i1 %461 to i32
  store i32 %462, i32* %5, align 4
  br label %512

463:                                              ; preds = %455
  br label %466

464:                                              ; preds = %414
  %465 = call i32 (...) @abort() #3
  unreachable

466:                                              ; preds = %463
  br label %467

467:                                              ; preds = %466, %413
  br label %511

468:                                              ; preds = %41
  %469 = load i32, i32* %10, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %479

471:                                              ; preds = %468
  %472 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %473 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %472, i32 0, i32 0
  %474 = load i32*, i32** %473, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 0
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* @IA64_OPND_PSR_UM, align 4
  %478 = icmp eq i32 %476, %477
  br label %479

479:                                              ; preds = %471, %468
  %480 = phi i1 [ false, %468 ], [ %478, %471 ]
  %481 = zext i1 %480 to i32
  store i32 %481, i32* %30, align 4
  %482 = load i32, i32* %10, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %492

484:                                              ; preds = %479
  %485 = load %struct.ia64_opcode*, %struct.ia64_opcode** %6, align 8
  %486 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %485, i32 0, i32 0
  %487 = load i32*, i32** %486, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 1
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* @IA64_OPND_PSR_UM, align 4
  %491 = icmp eq i32 %489, %490
  br label %492

492:                                              ; preds = %484, %479
  %493 = phi i1 [ false, %479 ], [ %491, %484 ]
  %494 = zext i1 %493 to i32
  store i32 %494, i32* %31, align 4
  %495 = load i32, i32* %30, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %502

497:                                              ; preds = %492
  %498 = load i8*, i8** %8, align 8
  %499 = call i32* @strstr(i8* %498, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %500 = icmp ne i32* %499, null
  %501 = zext i1 %500 to i32
  store i32 %501, i32* %5, align 4
  br label %512

502:                                              ; preds = %492
  %503 = load i32, i32* %31, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %502
  %506 = load i8*, i8** %8, align 8
  %507 = call i32* @strstr(i8* %506, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %508 = icmp ne i32* %507, null
  %509 = zext i1 %508 to i32
  store i32 %509, i32* %5, align 4
  br label %512

510:                                              ; preds = %502
  br label %511

511:                                              ; preds = %510, %467, %342, %271, %228, %190
  store i32 0, i32* %5, align 4
  br label %512

512:                                              ; preds = %511, %505, %497, %458, %450, %408, %400, %392, %331, %318, %310, %266, %258, %223, %215, %189, %178, %172, %156, %150, %40
  %513 = load i32, i32* %5, align 4
  ret i32 %513
}

declare dso_local i64 @strcmp(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @irf_operand(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
