; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_load_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_load_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@O_big = common dso_local global i64 0, align 8
@O_constant = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"addiu\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"t,r,j\00", align 1
@BFD_RELOC_LO16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ori\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"t,r,i\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lui\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"t,u\00", align 1
@BFD_RELOC_HI16 = common dso_local global i32 0, align 4
@HAVE_32BIT_GPRS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"Number (0x%s) larger than 32 bits\00", align 1
@generic_bignum = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"Number larger than 64 bits\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"dsll32\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"dsll\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"d,w,<\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"dsrl32\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dsrl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, i32)* @load_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_register(i32 %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_5__, align 8
  %18 = alloca %struct.TYPE_5__, align 8
  %19 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @O_big, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @O_constant, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = call i32 @normalize_constant_expr(%struct.TYPE_5__* %36)
  br label %38

38:                                               ; preds = %35, %25
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_SEXT_16BIT_NUM(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @BFD_RELOC_LO16, align 4
  %48 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 0, i32 %47)
  br label %491

49:                                               ; preds = %38
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %57, 65536
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @BFD_RELOC_LO16, align 4
  %63 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 0, i32 %62)
  br label %491

64:                                               ; preds = %54, %49
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_SEXT_32BIT_NUM(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @BFD_RELOC_HI16, align 4
  %74 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @BFD_RELOC_LO16, align 4
  %85 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %70
  br label %491

87:                                               ; preds = %64
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %3
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* @HAVE_32BIT_GPRS, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93, %90
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @sprintf_vma(i8* %97, i32 %100)
  %102 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %103 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %104 = call i32 (i32, ...) @as_bad(i32 %102, i8* %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @BFD_RELOC_LO16, align 4
  %108 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 0, i32 %107)
  br label %491

109:                                              ; preds = %93
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @O_big, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %109
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = bitcast %struct.TYPE_5__* %8 to i8*
  %118 = bitcast %struct.TYPE_5__* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 16, i1 false)
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = ashr i32 %120, 16
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %121, i32* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 16
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %127, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = bitcast %struct.TYPE_5__* %9 to i8*
  %131 = bitcast %struct.TYPE_5__* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 16, i1 false)
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %132, align 8
  br label %180

134:                                              ; preds = %109
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp sgt i32 %137, 2
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %145, label %148

145:                                              ; preds = %134
  %146 = load i32*, i32** @generic_bignum, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 3
  store i32 0, i32* %147, align 4
  br label %157

148:                                              ; preds = %134
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %151, 4
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %155 = call i32 (i32, ...) @as_bad(i32 %154)
  br label %156

156:                                              ; preds = %153, %148
  br label %157

157:                                              ; preds = %156, %145
  %158 = load i64, i64* @O_constant, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 %158, i64* %159, align 8
  %160 = load i32*, i32** @generic_bignum, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** @generic_bignum, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 16
  %167 = add nsw i32 %162, %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %167, i32* %168, align 8
  %169 = load i64, i64* @O_constant, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 %169, i64* %170, align 8
  %171 = load i32*, i32** @generic_bignum, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** @generic_bignum, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 3
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 16
  %178 = add nsw i32 %173, %177
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %178, i32* %179, align 8
  br label %180

180:                                              ; preds = %157, %115
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i32 0, i32* %7, align 4
  br label %431

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %218

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, -32768
  %193 = icmp eq i32 %192, -32768
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* @BFD_RELOC_LO16, align 4
  %197 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %195, i32 0, i32 %196)
  br label %491

198:                                              ; preds = %189
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, -2147483648
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %198
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* @BFD_RELOC_HI16, align 4
  %206 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %204, i32 %205)
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %203
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @BFD_RELOC_LO16, align 4
  %215 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %212, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %211, %203
  br label %491

217:                                              ; preds = %198
  br label %218

218:                                              ; preds = %217, %185
  store i32 17, i32* %11, align 4
  br label %219

219:                                              ; preds = %298, %218
  %220 = load i32, i32* %11, align 4
  %221 = icmp slt i32 %220, 32
  br i1 %221, label %222, label %230

222:                                              ; preds = %219
  %223 = load i32, i32* %11, align 4
  %224 = sub nsw i32 32, %223
  %225 = ashr i32 65535, %224
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %15, align 8
  %227 = load i32, i32* %11, align 4
  %228 = shl i32 65535, %227
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %16, align 8
  br label %235

230:                                              ; preds = %219
  %231 = load i32, i32* %11, align 4
  %232 = sub nsw i32 %231, 32
  %233 = shl i32 65535, %232
  %234 = sext i32 %233 to i64
  store i64 %234, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %235

235:                                              ; preds = %230, %222
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i64, i64* %15, align 8
  %239 = trunc i64 %238 to i32
  %240 = xor i32 %239, -1
  %241 = and i32 %237, %240
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %295

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i64, i64* %16, align 8
  %247 = trunc i64 %246 to i32
  %248 = xor i32 %247, -1
  %249 = and i32 %245, %248
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %295

251:                                              ; preds = %243
  %252 = load i64, i64* @O_constant, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i64 %252, i64* %253, align 8
  %254 = load i32, i32* %11, align 4
  %255 = icmp slt i32 %254, 32
  br i1 %255, label %256, label %268

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %11, align 4
  %260 = sub nsw i32 32, %259
  %261 = shl i32 %258, %260
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %11, align 4
  %265 = ashr i32 %263, %264
  %266 = or i32 %261, %265
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32 %266, i32* %267, align 8
  br label %275

268:                                              ; preds = %251
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %11, align 4
  %272 = sub nsw i32 %271, 32
  %273 = ashr i32 %270, %272
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32 %273, i32* %274, align 8
  br label %275

275:                                              ; preds = %268, %256
  %276 = load i32, i32* %4, align 4
  %277 = load i32, i32* @BFD_RELOC_LO16, align 4
  %278 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %276, i32 0, i32 %277)
  %279 = load i32, i32* %11, align 4
  %280 = icmp sge i32 %279, 32
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* %4, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp sge i32 %285, 32
  br i1 %286, label %287, label %290

287:                                              ; preds = %275
  %288 = load i32, i32* %11, align 4
  %289 = sub nsw i32 %288, 32
  br label %292

290:                                              ; preds = %275
  %291 = load i32, i32* %11, align 4
  br label %292

292:                                              ; preds = %290, %287
  %293 = phi i32 [ %289, %287 ], [ %291, %290 ]
  %294 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* null, i8* %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %283, i32 %284, i32 %293)
  br label %491

295:                                              ; preds = %243, %235
  %296 = load i32, i32* %11, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %11, align 4
  br label %298

298:                                              ; preds = %295
  %299 = load i32, i32* %11, align 4
  %300 = icmp sle i32 %299, 48
  br i1 %300, label %219, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %13, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %14, align 8
  %308 = load i64, i64* %14, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %337

310:                                              ; preds = %301
  store i32 0, i32* %12, align 4
  br label %311

311:                                              ; preds = %315, %310
  %312 = load i64, i64* %14, align 8
  %313 = and i64 %312, 1
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %311
  %316 = load i64, i64* %14, align 8
  %317 = lshr i64 %316, 1
  store i64 %317, i64* %14, align 8
  %318 = load i32, i32* %12, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %12, align 4
  br label %311

320:                                              ; preds = %311
  %321 = load i64, i64* %13, align 8
  %322 = load i32, i32* %12, align 4
  %323 = zext i32 %322 to i64
  %324 = shl i64 1, %323
  %325 = sub i64 %324, 1
  %326 = and i64 %321, %325
  %327 = load i32, i32* %12, align 4
  %328 = sub nsw i32 32, %327
  %329 = zext i32 %328 to i64
  %330 = shl i64 %326, %329
  %331 = load i64, i64* %14, align 8
  %332 = or i64 %331, %330
  store i64 %332, i64* %14, align 8
  %333 = load i32, i32* %12, align 4
  %334 = load i64, i64* %13, align 8
  %335 = zext i32 %333 to i64
  %336 = lshr i64 %334, %335
  store i64 %336, i64* %13, align 8
  br label %349

337:                                              ; preds = %301
  store i32 32, i32* %12, align 4
  br label %338

338:                                              ; preds = %342, %337
  %339 = load i64, i64* %13, align 8
  %340 = and i64 %339, 1
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %338
  %343 = load i64, i64* %13, align 8
  %344 = lshr i64 %343, 1
  store i64 %344, i64* %13, align 8
  %345 = load i32, i32* %12, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %12, align 4
  br label %338

347:                                              ; preds = %338
  %348 = load i64, i64* %13, align 8
  store i64 %348, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %349

349:                                              ; preds = %347, %320
  %350 = load i64, i64* %13, align 8
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %349
  %353 = load i64, i64* %14, align 8
  %354 = add i64 %353, 1
  %355 = load i64, i64* %14, align 8
  %356 = and i64 %354, %355
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %367, label %358

358:                                              ; preds = %352, %349
  %359 = load i64, i64* %14, align 8
  %360 = icmp eq i64 %359, 4294967295
  br i1 %360, label %361, label %420

361:                                              ; preds = %358
  %362 = load i64, i64* %13, align 8
  %363 = add i64 %362, 1
  %364 = load i64, i64* %13, align 8
  %365 = and i64 %363, %364
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %420

367:                                              ; preds = %361, %352
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @COUNT_TOP_ZEROES(i32 %369)
  store i32 %370, i32* %11, align 4
  %371 = load i32, i32* %11, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %419

373:                                              ; preds = %367
  %374 = load i64, i64* @O_constant, align 8
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %374, i64* %375, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 -1, i32* %376, align 8
  %377 = load i32, i32* %4, align 4
  %378 = load i32, i32* @BFD_RELOC_LO16, align 4
  %379 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %377, i32 0, i32 %378)
  %380 = load i32, i32* %12, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %402

382:                                              ; preds = %373
  %383 = load i32, i32* %11, align 4
  %384 = load i32, i32* %12, align 4
  %385 = add nsw i32 %384, %383
  store i32 %385, i32* %12, align 4
  %386 = load i32, i32* %12, align 4
  %387 = icmp sge i32 %386, 32
  %388 = zext i1 %387 to i64
  %389 = select i1 %387, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %390 = load i32, i32* %4, align 4
  %391 = load i32, i32* %4, align 4
  %392 = load i32, i32* %12, align 4
  %393 = icmp sge i32 %392, 32
  br i1 %393, label %394, label %397

394:                                              ; preds = %382
  %395 = load i32, i32* %12, align 4
  %396 = sub nsw i32 %395, 32
  br label %399

397:                                              ; preds = %382
  %398 = load i32, i32* %12, align 4
  br label %399

399:                                              ; preds = %397, %394
  %400 = phi i32 [ %396, %394 ], [ %398, %397 ]
  %401 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* null, i8* %389, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %390, i32 %391, i32 %400)
  br label %402

402:                                              ; preds = %399, %373
  %403 = load i32, i32* %11, align 4
  %404 = icmp sge i32 %403, 32
  %405 = zext i1 %404 to i64
  %406 = select i1 %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)
  %407 = load i32, i32* %4, align 4
  %408 = load i32, i32* %4, align 4
  %409 = load i32, i32* %11, align 4
  %410 = icmp sge i32 %409, 32
  br i1 %410, label %411, label %414

411:                                              ; preds = %402
  %412 = load i32, i32* %11, align 4
  %413 = sub nsw i32 %412, 32
  br label %416

414:                                              ; preds = %402
  %415 = load i32, i32* %11, align 4
  br label %416

416:                                              ; preds = %414, %411
  %417 = phi i32 [ %413, %411 ], [ %415, %414 ]
  %418 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* null, i8* %406, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %407, i32 %408, i32 %417)
  br label %491

419:                                              ; preds = %367
  br label %420

420:                                              ; preds = %419, %361, %358
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = and i32 %422, -2147483648
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %427 = load i32, i32* %426, align 8
  store i32 %427, i32* %426, align 8
  br label %428

428:                                              ; preds = %425, %420
  %429 = load i32, i32* %4, align 4
  call void @load_register(i32 %429, %struct.TYPE_5__* %8, i32 0)
  %430 = load i32, i32* %4, align 4
  store i32 %430, i32* %7, align 4
  br label %431

431:                                              ; preds = %428, %184
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = and i32 %433, -65536
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %445

436:                                              ; preds = %431
  %437 = load i32, i32* %7, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %444

439:                                              ; preds = %436
  %440 = load i32, i32* %4, align 4
  %441 = load i32, i32* %7, align 4
  %442 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %440, i32 %441, i32 0)
  %443 = load i32, i32* %4, align 4
  store i32 %443, i32* %7, align 4
  br label %444

444:                                              ; preds = %439, %436
  br label %481

445:                                              ; preds = %431
  %446 = load i32, i32* %7, align 4
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %459

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  %451 = icmp eq i32 %450, -1
  br i1 %451, label %452, label %459

452:                                              ; preds = %448
  %453 = load i32, i32* %4, align 4
  %454 = load i32, i32* @BFD_RELOC_HI16, align 4
  %455 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %453, i32 %454)
  %456 = load i32, i32* %4, align 4
  %457 = load i32, i32* %4, align 4
  %458 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %456, i32 %457, i32 0)
  br label %491

459:                                              ; preds = %448, %445
  %460 = load i32, i32* %7, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %467

462:                                              ; preds = %459
  %463 = load i32, i32* %4, align 4
  %464 = load i32, i32* %7, align 4
  %465 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %463, i32 %464, i32 16)
  %466 = load i32, i32* %4, align 4
  store i32 %466, i32* %7, align 4
  br label %467

467:                                              ; preds = %462, %459
  %468 = bitcast %struct.TYPE_5__* %19 to i8*
  %469 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %468, i8* align 8 %469, i64 16, i1 false)
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = ashr i32 %471, 16
  store i32 %472, i32* %470, align 8
  %473 = load i32, i32* %4, align 4
  %474 = load i32, i32* %7, align 4
  %475 = load i32, i32* @BFD_RELOC_LO16, align 4
  %476 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %473, i32 %474, i32 %475)
  %477 = load i32, i32* %4, align 4
  %478 = load i32, i32* %4, align 4
  %479 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %477, i32 %478, i32 16)
  %480 = load i32, i32* %4, align 4
  store i32 %480, i32* %7, align 4
  br label %481

481:                                              ; preds = %467, %444
  %482 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %483 = load i32, i32* %482, align 8
  %484 = and i32 %483, 65535
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %491

486:                                              ; preds = %481
  %487 = load i32, i32* %4, align 4
  %488 = load i32, i32* %7, align 4
  %489 = load i32, i32* @BFD_RELOC_LO16, align 4
  %490 = call i32 (%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) @macro_build(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %487, i32 %488, i32 %489)
  br label %491

491:                                              ; preds = %44, %59, %86, %96, %194, %216, %292, %416, %452, %486, %481
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @normalize_constant_expr(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_SEXT_16BIT_NUM(i32) #1

declare dso_local i32 @macro_build(%struct.TYPE_5__*, i8*, i8*, i32, i32, ...) #1

declare dso_local i64 @IS_SEXT_32BIT_NUM(i32) #1

declare dso_local i32 @sprintf_vma(i8*, i32) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @COUNT_TOP_ZEROES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
