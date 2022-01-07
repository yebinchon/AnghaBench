; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cr16-dis.c_make_argument.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cr16-dis.c_make_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@instruction = common dso_local global %struct.TYPE_8__* null, align 8
@allWords = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cbitb\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"sbitb\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tbitb\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"loadw\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"loadd\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"storw\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"stord\00", align 1
@BRANCH_INS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"bal\00", align 1
@CSTBIT_INS = common dso_local global i32 0, align 4
@LD_STOR_INS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @make_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_argument(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca %struct.TYPE_6__, align 4
  %16 = alloca %struct.TYPE_6__, align 4
  %17 = alloca %struct.TYPE_6__, align 4
  %18 = alloca %struct.TYPE_6__, align 4
  %19 = alloca %struct.TYPE_6__, align 4
  %20 = alloca %struct.TYPE_6__, align 4
  %21 = alloca %struct.TYPE_6__, align 4
  %22 = alloca %struct.TYPE_6__, align 4
  %23 = alloca %struct.TYPE_6__, align 4
  %24 = alloca %struct.TYPE_6__, align 4
  %25 = alloca %struct.TYPE_6__, align 4
  %26 = alloca %struct.TYPE_6__, align 4
  %27 = alloca %struct.TYPE_6__, align 4
  %28 = alloca %struct.TYPE_6__, align 4
  %29 = alloca %struct.TYPE_6__, align 4
  %30 = alloca %struct.TYPE_6__, align 4
  %31 = alloca %struct.TYPE_6__, align 4
  %32 = alloca %struct.TYPE_6__, align 4
  %33 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instruction, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 16
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 48, i32* %5, align 4
  br label %45

44:                                               ; preds = %38, %2
  store i32 32, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %604 [
    i32 130, label %49
    i32 128, label %69
    i32 132, label %89
    i32 131, label %109
    i32 135, label %129
    i32 138, label %149
    i32 134, label %169
    i32 133, label %210
    i32 129, label %313
    i32 137, label %341
    i32 136, label %367
    i32 139, label %479
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* @allWords, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = sub nsw i32 %51, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @makelongparameter(i32 %50, i32 %57, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = bitcast %struct.TYPE_6__* %6 to i8*
  %64 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %605

69:                                               ; preds = %45
  %70 = load i32, i32* @allWords, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = sub nsw i32 %71, %76
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i32 @makelongparameter(i32 %70, i32 %77, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = bitcast %struct.TYPE_6__* %6 to i8*
  %84 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 4, i1 false)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %605

89:                                               ; preds = %45
  %90 = load i32, i32* @allWords, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = sub nsw i32 %91, %96
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %4, align 4
  %100 = sub nsw i32 %98, %99
  %101 = call i32 @makelongparameter(i32 %90, i32 %97, i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = bitcast %struct.TYPE_6__* %6 to i8*
  %104 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 4, i1 false)
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  br label %605

109:                                              ; preds = %45
  %110 = load i32, i32* @allWords, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = sub nsw i32 %111, %116
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %4, align 4
  %120 = sub nsw i32 %118, %119
  %121 = call i32 @makelongparameter(i32 %110, i32 %117, i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = bitcast %struct.TYPE_6__* %6 to i8*
  %124 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 4, i1 false)
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  br label %605

129:                                              ; preds = %45
  %130 = load i32, i32* @allWords, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %132, %135
  %137 = sub nsw i32 %131, %136
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %4, align 4
  %140 = sub nsw i32 %138, %139
  %141 = call i32 @makelongparameter(i32 %130, i32 %137, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  %143 = bitcast %struct.TYPE_6__* %6 to i8*
  %144 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 %144, i64 4, i1 false)
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 4
  br label %605

149:                                              ; preds = %45
  %150 = load i32, i32* @allWords, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %152, %155
  %157 = sub nsw i32 %151, %156
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %4, align 4
  %160 = sub nsw i32 %158, %159
  %161 = call i32 @makelongparameter(i32 %150, i32 %157, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %161, i32* %162, align 4
  %163 = bitcast %struct.TYPE_6__* %6 to i8*
  %164 = bitcast %struct.TYPE_6__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 %164, i64 4, i1 false)
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 7
  store i32 %166, i32* %168, align 4
  br label %605

169:                                              ; preds = %45
  %170 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %169
  %173 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %175, %172, %169
  %179 = load i32, i32* @allWords, align 4
  %180 = call i32 @makelongparameter(i32 %179, i32 8, i32 9)
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %180, i32* %181, align 4
  %182 = bitcast %struct.TYPE_6__* %6 to i8*
  %183 = bitcast %struct.TYPE_6__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %182, i8* align 4 %183, i64 4, i1 false)
  br label %190

184:                                              ; preds = %175
  %185 = load i32, i32* @allWords, align 4
  %186 = call i32 @makelongparameter(i32 %185, i32 9, i32 10)
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %186, i32* %187, align 4
  %188 = bitcast %struct.TYPE_6__* %6 to i8*
  %189 = bitcast %struct.TYPE_6__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %188, i8* align 4 %189, i64 4, i1 false)
  br label %190

190:                                              ; preds = %184, %178
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 8
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @allWords, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %196, %199
  %201 = load i32, i32* %5, align 4
  %202 = call i32 @makelongparameter(i32 %195, i32 %200, i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %202, i32* %203, align 4
  %204 = bitcast %struct.TYPE_6__* %6 to i8*
  %205 = bitcast %struct.TYPE_6__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %204, i8* align 4 %205, i64 4, i1 false)
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 6
  store i32 %207, i32* %209, align 4
  br label %605

210:                                              ; preds = %45
  %211 = load i32, i32* @allWords, align 4
  %212 = load i32, i32* %4, align 4
  %213 = add nsw i32 %212, 12
  %214 = load i32, i32* %4, align 4
  %215 = add nsw i32 %214, 13
  %216 = call i32 @makelongparameter(i32 %211, i32 %213, i32 %215)
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %216, i32* %217, align 4
  %218 = bitcast %struct.TYPE_6__* %6 to i8*
  %219 = bitcast %struct.TYPE_6__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %218, i8* align 4 %219, i64 4, i1 false)
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 8
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @allWords, align 4
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %225, 13
  %227 = load i32, i32* %4, align 4
  %228 = add nsw i32 %227, 16
  %229 = call i32 @makelongparameter(i32 %224, i32 %226, i32 %228)
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %229, i32* %230, align 4
  %231 = bitcast %struct.TYPE_6__* %6 to i8*
  %232 = bitcast %struct.TYPE_6__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %231, i8* align 4 %232, i64 4, i1 false)
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %5, align 4
  %238 = icmp sgt i32 %237, 32
  br i1 %238, label %239, label %260

239:                                              ; preds = %210
  %240 = load i32, i32* @allWords, align 4
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* %4, align 4
  %243 = sub nsw i32 %241, %242
  %244 = sub nsw i32 %243, 12
  %245 = load i32, i32* %5, align 4
  %246 = call i32 @makelongparameter(i32 %240, i32 %244, i32 %245)
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %246, i32* %247, align 4
  %248 = bitcast %struct.TYPE_6__* %6 to i8*
  %249 = bitcast %struct.TYPE_6__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %248, i8* align 4 %249, i64 4, i1 false)
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 65535
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = ashr i32 %254, 8
  %256 = and i32 %255, 983040
  %257 = or i32 %252, %256
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 6
  store i32 %257, i32* %259, align 4
  br label %312

260:                                              ; preds = %210
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instruction, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 2
  br i1 %264, label %265, label %297

265:                                              ; preds = %260
  %266 = load i32, i32* @allWords, align 4
  %267 = load i32, i32* %5, align 4
  %268 = sub nsw i32 %267, 22
  %269 = load i32, i32* %5, align 4
  %270 = call i32 @makelongparameter(i32 %266, i32 %268, i32 %269)
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %270, i32* %271, align 4
  %272 = bitcast %struct.TYPE_6__* %6 to i8*
  %273 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %272, i8* align 4 %273, i64 4, i1 false)
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = and i32 %275, 15
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = ashr i32 %278, 20
  %280 = and i32 %279, 3
  %281 = shl i32 %280, 4
  %282 = or i32 %276, %281
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = ashr i32 %284, 14
  %286 = and i32 %285, 3
  %287 = shl i32 %286, 6
  %288 = or i32 %282, %287
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = ashr i32 %290, 7
  %292 = and i32 %291, 31
  %293 = shl i32 %292, 7
  %294 = or i32 %288, %293
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 6
  store i32 %294, i32* %296, align 4
  br label %311

297:                                              ; preds = %260
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instruction, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %310

302:                                              ; preds = %297
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 6
  store i32 0, i32* %309, align 4
  br label %310

310:                                              ; preds = %307, %302, %297
  br label %311

311:                                              ; preds = %310, %265
  br label %312

312:                                              ; preds = %311, %239
  br label %605

313:                                              ; preds = %45
  %314 = load i32, i32* @allWords, align 4
  %315 = load i32, i32* %5, align 4
  %316 = load i32, i32* %5, align 4
  %317 = call i32 @makelongparameter(i32 %314, i32 %315, i32 %316)
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %317, i32* %318, align 4
  %319 = bitcast %struct.TYPE_6__* %6 to i8*
  %320 = bitcast %struct.TYPE_6__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %319, i8* align 4 %320, i64 4, i1 false)
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 6
  store i32 %322, i32* %324, align 4
  %325 = load i32, i32* @allWords, align 4
  %326 = load i32, i32* %5, align 4
  %327 = load i32, i32* %4, align 4
  %328 = add nsw i32 %327, 4
  %329 = sub nsw i32 %326, %328
  %330 = load i32, i32* %5, align 4
  %331 = load i32, i32* %4, align 4
  %332 = sub nsw i32 %330, %331
  %333 = call i32 @makelongparameter(i32 %325, i32 %329, i32 %332)
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %333, i32* %334, align 4
  %335 = bitcast %struct.TYPE_6__* %6 to i8*
  %336 = bitcast %struct.TYPE_6__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %335, i8* align 4 %336, i64 4, i1 false)
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 2
  store i32 %338, i32* %340, align 4
  br label %605

341:                                              ; preds = %45
  %342 = load i32, i32* @allWords, align 4
  %343 = load i32, i32* %4, align 4
  %344 = add nsw i32 %343, 12
  %345 = load i32, i32* %4, align 4
  %346 = add nsw i32 %345, 16
  %347 = call i32 @makelongparameter(i32 %342, i32 %344, i32 %346)
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %347, i32* %348, align 4
  %349 = bitcast %struct.TYPE_6__* %6 to i8*
  %350 = bitcast %struct.TYPE_6__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %349, i8* align 4 %350, i64 4, i1 false)
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 2
  store i32 %352, i32* %354, align 4
  %355 = load i32, i32* @allWords, align 4
  %356 = load i32, i32* %5, align 4
  %357 = sub nsw i32 %356, 16
  %358 = load i32, i32* %5, align 4
  %359 = call i32 @makelongparameter(i32 %355, i32 %357, i32 %358)
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %359, i32* %360, align 4
  %361 = bitcast %struct.TYPE_6__* %6 to i8*
  %362 = bitcast %struct.TYPE_6__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %361, i8* align 4 %362, i64 4, i1 false)
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 6
  store i32 %364, i32* %366, align 4
  br label %605

367:                                              ; preds = %45
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instruction, align 8
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %378

372:                                              ; preds = %367
  %373 = load i32, i32* @allWords, align 4
  %374 = call i32 @makelongparameter(i32 %373, i32 12, i32 16)
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %374, i32* %375, align 4
  %376 = bitcast %struct.TYPE_6__* %6 to i8*
  %377 = bitcast %struct.TYPE_6__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %376, i8* align 4 %377, i64 4, i1 false)
  br label %388

378:                                              ; preds = %367
  %379 = load i32, i32* @allWords, align 4
  %380 = load i32, i32* %4, align 4
  %381 = add nsw i32 %380, 12
  %382 = load i32, i32* %4, align 4
  %383 = add nsw i32 %382, 16
  %384 = call i32 @makelongparameter(i32 %379, i32 %381, i32 %383)
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %384, i32* %385, align 4
  %386 = bitcast %struct.TYPE_6__* %6 to i8*
  %387 = bitcast %struct.TYPE_6__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %386, i8* align 4 %387, i64 4, i1 false)
  br label %388

388:                                              ; preds = %378, %372
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 3
  store i32 %390, i32* %392, align 4
  %393 = load i32, i32* %5, align 4
  %394 = icmp sgt i32 %393, 32
  br i1 %394, label %395, label %416

395:                                              ; preds = %388
  %396 = load i32, i32* @allWords, align 4
  %397 = load i32, i32* %5, align 4
  %398 = load i32, i32* %4, align 4
  %399 = sub nsw i32 %397, %398
  %400 = sub nsw i32 %399, 12
  %401 = load i32, i32* %5, align 4
  %402 = call i32 @makelongparameter(i32 %396, i32 %400, i32 %401)
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %402, i32* %403, align 4
  %404 = bitcast %struct.TYPE_6__* %6 to i8*
  %405 = bitcast %struct.TYPE_6__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %404, i8* align 4 %405, i64 4, i1 false)
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = and i32 %407, 65535
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = ashr i32 %410, 8
  %412 = and i32 %411, 983040
  %413 = or i32 %408, %412
  %414 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 6
  store i32 %413, i32* %415, align 4
  br label %478

416:                                              ; preds = %388
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instruction, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %419, 2
  br i1 %420, label %421, label %434

421:                                              ; preds = %416
  %422 = load i32, i32* @allWords, align 4
  %423 = load i32, i32* %5, align 4
  %424 = sub nsw i32 %423, 16
  %425 = load i32, i32* %5, align 4
  %426 = call i32 @makelongparameter(i32 %422, i32 %424, i32 %425)
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %426, i32* %427, align 4
  %428 = bitcast %struct.TYPE_6__* %6 to i8*
  %429 = bitcast %struct.TYPE_6__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %428, i8* align 4 %429, i64 4, i1 false)
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %432, i32 0, i32 6
  store i32 %431, i32* %433, align 4
  br label %477

434:                                              ; preds = %416
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instruction, align 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %473

439:                                              ; preds = %434
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %473

444:                                              ; preds = %439
  %445 = load i32, i32* @allWords, align 4
  %446 = call i32 @makelongparameter(i32 %445, i32 4, i32 8)
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %446, i32* %447, align 4
  %448 = bitcast %struct.TYPE_6__* %6 to i8*
  %449 = bitcast %struct.TYPE_6__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %448, i8* align 4 %449, i64 4, i1 false)
  %450 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %461, label %452

452:                                              ; preds = %444
  %453 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %461, label %455

455:                                              ; preds = %452
  %456 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %461, label %458

458:                                              ; preds = %455
  %459 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %467

461:                                              ; preds = %458, %455, %452, %444
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = mul nsw i32 %463, 2
  %465 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 6
  store i32 %464, i32* %466, align 4
  br label %472

467:                                              ; preds = %458
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %470, i32 0, i32 6
  store i32 %469, i32* %471, align 4
  br label %472

472:                                              ; preds = %467, %461
  br label %476

473:                                              ; preds = %439, %434
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 6
  store i32 0, i32* %475, align 4
  br label %476

476:                                              ; preds = %473, %472
  br label %477

477:                                              ; preds = %476, %421
  br label %478

478:                                              ; preds = %477, %395
  br label %605

479:                                              ; preds = %45
  %480 = load i32, i32* @BRANCH_INS, align 4
  %481 = call i32 @IS_INSN_TYPE(i32 %480)
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %494, label %483

483:                                              ; preds = %479
  %484 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %494, label %486

486:                                              ; preds = %483
  %487 = load i32, i32* @CSTBIT_INS, align 4
  %488 = call i32 @IS_INSN_TYPE(i32 %487)
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %494, label %490

490:                                              ; preds = %486
  %491 = load i32, i32* @LD_STOR_INS, align 4
  %492 = call i32 @IS_INSN_TYPE(i32 %491)
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %583

494:                                              ; preds = %490, %486, %483, %479
  %495 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  switch i32 %497, label %562 [
    i32 8, label %498
    i32 24, label %515
  ]

498:                                              ; preds = %494
  %499 = load i32, i32* @allWords, align 4
  %500 = load i32, i32* %4, align 4
  %501 = call i32 @makelongparameter(i32 %499, i32 0, i32 %500)
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %501, i32* %502, align 4
  %503 = bitcast %struct.TYPE_6__* %6 to i8*
  %504 = bitcast %struct.TYPE_6__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %503, i8* align 4 %504, i64 4, i1 false)
  %505 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = and i32 %506, 3840
  %508 = ashr i32 %507, 4
  %509 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %510 = load i32, i32* %509, align 4
  %511 = and i32 %510, 15
  %512 = or i32 %508, %511
  %513 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %514 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i32 0, i32 6
  store i32 %512, i32* %514, align 4
  br label %582

515:                                              ; preds = %494
  %516 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instruction, align 8
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = icmp eq i32 %518, 3
  br i1 %519, label %520, label %544

520:                                              ; preds = %515
  %521 = load i32, i32* @allWords, align 4
  %522 = load i32, i32* %5, align 4
  %523 = call i32 @makelongparameter(i32 %521, i32 16, i32 %522)
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %523, i32* %524, align 4
  %525 = bitcast %struct.TYPE_6__* %6 to i8*
  %526 = bitcast %struct.TYPE_6__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %525, i8* align 4 %526, i64 4, i1 false)
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = ashr i32 %528, 16
  %530 = and i32 %529, 15
  %531 = shl i32 %530, 20
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = ashr i32 %533, 24
  %535 = and i32 %534, 15
  %536 = shl i32 %535, 16
  %537 = or i32 %531, %536
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  %540 = and i32 %539, 65535
  %541 = or i32 %537, %540
  %542 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %543 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %542, i32 0, i32 6
  store i32 %541, i32* %543, align 4
  br label %561

544:                                              ; preds = %515
  %545 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instruction, align 8
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 4
  %548 = icmp eq i32 %547, 2
  br i1 %548, label %549, label %560

549:                                              ; preds = %544
  %550 = load i32, i32* @allWords, align 4
  %551 = load i32, i32* %5, align 4
  %552 = call i32 @makelongparameter(i32 %550, i32 8, i32 %551)
  %553 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %552, i32* %553, align 4
  %554 = bitcast %struct.TYPE_6__* %6 to i8*
  %555 = bitcast %struct.TYPE_6__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %554, i8* align 4 %555, i64 4, i1 false)
  %556 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %559 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %558, i32 0, i32 6
  store i32 %557, i32* %559, align 4
  br label %560

560:                                              ; preds = %549, %544
  br label %561

561:                                              ; preds = %560, %520
  br label %582

562:                                              ; preds = %494
  %563 = load i32, i32* @allWords, align 4
  %564 = load i32, i32* %5, align 4
  %565 = load i32, i32* %4, align 4
  %566 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %567 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = add nsw i32 %565, %568
  %570 = sub nsw i32 %564, %569
  %571 = load i32, i32* %5, align 4
  %572 = load i32, i32* %4, align 4
  %573 = sub nsw i32 %571, %572
  %574 = call i32 @makelongparameter(i32 %563, i32 %570, i32 %573)
  %575 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %574, i32* %575, align 4
  %576 = bitcast %struct.TYPE_6__* %6 to i8*
  %577 = bitcast %struct.TYPE_6__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %576, i8* align 4 %577, i64 4, i1 false)
  %578 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %581 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %580, i32 0, i32 6
  store i32 %579, i32* %581, align 4
  br label %582

582:                                              ; preds = %562, %561, %498
  br label %603

583:                                              ; preds = %490
  %584 = load i32, i32* @allWords, align 4
  %585 = load i32, i32* %5, align 4
  %586 = load i32, i32* %4, align 4
  %587 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %588 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = add nsw i32 %586, %589
  %591 = sub nsw i32 %585, %590
  %592 = load i32, i32* %5, align 4
  %593 = load i32, i32* %4, align 4
  %594 = sub nsw i32 %592, %593
  %595 = call i32 @makelongparameter(i32 %584, i32 %591, i32 %594)
  %596 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %595, i32* %596, align 4
  %597 = bitcast %struct.TYPE_6__* %6 to i8*
  %598 = bitcast %struct.TYPE_6__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %597, i8* align 4 %598, i64 4, i1 false)
  %599 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %602 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %601, i32 0, i32 6
  store i32 %600, i32* %602, align 4
  br label %603

603:                                              ; preds = %583, %582
  br label %605

604:                                              ; preds = %45
  br label %605

605:                                              ; preds = %604, %603, %478, %341, %313, %312, %190, %149, %129, %109, %89, %69, %49
  ret void
}

declare dso_local i32 @makelongparameter(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IS_INSN_MNEMONIC(i8*) #1

declare dso_local i32 @IS_INSN_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
