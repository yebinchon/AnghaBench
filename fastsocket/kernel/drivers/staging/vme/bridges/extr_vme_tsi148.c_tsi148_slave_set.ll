; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_slave_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_slave_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.vme_slave_resource = type { i64 }

@TSI148_LCSR_ITAT_AS_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid VME base alignment\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid VME bound alignment\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Invalid PCI Offset alignment\0A\00", align 1
@tsi148_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@TSI148_LCSR_IT = common dso_local global i64* null, align 8
@TSI148_LCSR_OFFSET_ITAT = common dso_local global i64 0, align 8
@TSI148_LCSR_ITAT_EN = common dso_local global i32 0, align 4
@TSI148_LCSR_OFFSET_ITSAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITSAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITEAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITEAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITOFU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITOFL = common dso_local global i64 0, align 8
@TSI148_LCSR_ITAT_2eSSTM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_160 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_267 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_320 = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_BLT = common dso_local global i32 0, align 4
@VME_MBLT = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_MBLT = common dso_local global i32 0, align 4
@VME_2eVME = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eVME = common dso_local global i32 0, align 4
@VME_2eSST = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSST = common dso_local global i32 0, align 4
@VME_2eSSTB = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTB = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_M = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_SUPR = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_NPRIV = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_PGM = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_DATA = common dso_local global i32 0, align 4
@vmeIn = common dso_local global %struct.TYPE_3__* null, align 8
@x = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsi148_slave_set(%struct.vme_slave_resource* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vme_slave_resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
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
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.vme_slave_resource* %0, %struct.vme_slave_resource** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %28 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %9, align 8
  %29 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %16, align 4
  %32 = load i64, i64* %14, align 8
  switch i64 %32, label %50 [
    i64 136, label %33
    i64 135, label %37
    i64 134, label %41
    i64 133, label %45
    i64 132, label %49
    i64 131, label %49
    i64 130, label %49
    i64 129, label %49
    i64 128, label %49
  ]

33:                                               ; preds = %7
  store i32 16, i32* %18, align 4
  %34 = load i32, i32* @TSI148_LCSR_ITAT_AS_A16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %17, align 4
  br label %54

37:                                               ; preds = %7
  store i32 4096, i32* %18, align 4
  %38 = load i32, i32* @TSI148_LCSR_ITAT_AS_A24, align 4
  %39 = load i32, i32* %17, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %17, align 4
  br label %54

41:                                               ; preds = %7
  store i32 65536, i32* %18, align 4
  %42 = load i32, i32* @TSI148_LCSR_ITAT_AS_A32, align 4
  %43 = load i32, i32* %17, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %17, align 4
  br label %54

45:                                               ; preds = %7
  store i32 65536, i32* %18, align 4
  %46 = load i32, i32* @TSI148_LCSR_ITAT_AS_A64, align 4
  %47 = load i32, i32* %17, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %17, align 4
  br label %54

49:                                               ; preds = %7, %7, %7, %7, %7
  br label %50

50:                                               ; preds = %7, %49
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %351

54:                                               ; preds = %45, %41, %37, %33
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @reg_split(i64 %55, i32* %21, i32* %20)
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %57, %58
  %60 = load i32, i32* %18, align 4
  %61 = zext i32 %60 to i64
  %62 = sub i64 %59, %61
  store i64 %62, i64* %26, align 8
  %63 = load i64, i64* %26, align 8
  %64 = call i32 @reg_split(i64 %63, i32* %23, i32* %22)
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %11, align 8
  %67 = sub i64 %65, %66
  store i64 %67, i64* %27, align 8
  %68 = load i64, i64* %27, align 8
  %69 = call i32 @reg_split(i64 %68, i32* %25, i32* %24)
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sub i32 %71, 1
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %54
  %76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %351

79:                                               ; preds = %54
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %18, align 4
  %82 = sub i32 %81, 1
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %351

89:                                               ; preds = %79
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* %18, align 4
  %92 = sub i32 %91, 1
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %351

99:                                               ; preds = %89
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tsi148_bridge, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %104 = load i32, i32* %16, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %102, %107
  %109 = load i64, i64* @TSI148_LCSR_OFFSET_ITAT, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @ioread32be(i64 %110)
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* @TSI148_LCSR_ITAT_EN, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %19, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tsi148_bridge, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %121 = load i32, i32* %16, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %119, %124
  %126 = load i64, i64* @TSI148_LCSR_OFFSET_ITAT, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @iowrite32be(i32 %116, i64 %127)
  %129 = load i32, i32* %21, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tsi148_bridge, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %134 = load i32, i32* %16, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %132, %137
  %139 = load i64, i64* @TSI148_LCSR_OFFSET_ITSAU, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @iowrite32be(i32 %129, i64 %140)
  %142 = load i32, i32* %20, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tsi148_bridge, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %147 = load i32, i32* %16, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %145, %150
  %152 = load i64, i64* @TSI148_LCSR_OFFSET_ITSAL, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @iowrite32be(i32 %142, i64 %153)
  %155 = load i32, i32* %23, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tsi148_bridge, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %160 = load i32, i32* %16, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %158, %163
  %165 = load i64, i64* @TSI148_LCSR_OFFSET_ITEAU, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @iowrite32be(i32 %155, i64 %166)
  %168 = load i32, i32* %22, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tsi148_bridge, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %173 = load i32, i32* %16, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %171, %176
  %178 = load i64, i64* @TSI148_LCSR_OFFSET_ITEAL, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @iowrite32be(i32 %168, i64 %179)
  %181 = load i32, i32* %25, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tsi148_bridge, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %186 = load i32, i32* %16, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %184, %189
  %191 = load i64, i64* @TSI148_LCSR_OFFSET_ITOFU, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @iowrite32be(i32 %181, i64 %192)
  %194 = load i32, i32* %24, align 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tsi148_bridge, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %199 = load i32, i32* %16, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %197, %202
  %204 = load i64, i64* @TSI148_LCSR_OFFSET_ITOFL, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @iowrite32be(i32 %194, i64 %205)
  %207 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_M, align 4
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %19, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %19, align 4
  %211 = load i32, i32* %15, align 4
  %212 = and i32 %211, 139
  switch i32 %212, label %225 [
    i32 139, label %213
    i32 138, label %217
    i32 137, label %221
  ]

213:                                              ; preds = %99
  %214 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_160, align 4
  %215 = load i32, i32* %19, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %19, align 4
  br label %225

217:                                              ; preds = %99
  %218 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_267, align 4
  %219 = load i32, i32* %19, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %19, align 4
  br label %225

221:                                              ; preds = %99
  %222 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_320, align 4
  %223 = load i32, i32* %19, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %19, align 4
  br label %225

225:                                              ; preds = %99, %221, %217, %213
  %226 = load i32, i32* %19, align 4
  %227 = and i32 %226, -3969
  store i32 %227, i32* %19, align 4
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* @VME_BLT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load i32, i32* @TSI148_LCSR_ITAT_BLT, align 4
  %234 = load i32, i32* %19, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %19, align 4
  br label %236

236:                                              ; preds = %232, %225
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* @VME_MBLT, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i32, i32* @TSI148_LCSR_ITAT_MBLT, align 4
  %243 = load i32, i32* %19, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %19, align 4
  br label %245

245:                                              ; preds = %241, %236
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* @VME_2eVME, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32, i32* @TSI148_LCSR_ITAT_2eVME, align 4
  %252 = load i32, i32* %19, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %19, align 4
  br label %254

254:                                              ; preds = %250, %245
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* @VME_2eSST, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load i32, i32* @TSI148_LCSR_ITAT_2eSST, align 4
  %261 = load i32, i32* %19, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %19, align 4
  br label %263

263:                                              ; preds = %259, %254
  %264 = load i32, i32* %15, align 4
  %265 = load i32, i32* @VME_2eSSTB, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTB, align 4
  %270 = load i32, i32* %19, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %19, align 4
  br label %272

272:                                              ; preds = %268, %263
  %273 = load i32, i32* @TSI148_LCSR_ITAT_AS_M, align 4
  %274 = xor i32 %273, -1
  %275 = load i32, i32* %19, align 4
  %276 = and i32 %275, %274
  store i32 %276, i32* %19, align 4
  %277 = load i32, i32* %17, align 4
  %278 = load i32, i32* %19, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %19, align 4
  %280 = load i32, i32* %19, align 4
  %281 = and i32 %280, -16
  store i32 %281, i32* %19, align 4
  %282 = load i32, i32* %15, align 4
  %283 = load i32, i32* @VME_SUPER, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %272
  %287 = load i32, i32* @TSI148_LCSR_ITAT_SUPR, align 4
  %288 = load i32, i32* %19, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %19, align 4
  br label %290

290:                                              ; preds = %286, %272
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* @VME_USER, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %290
  %296 = load i32, i32* @TSI148_LCSR_ITAT_NPRIV, align 4
  %297 = load i32, i32* %19, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %19, align 4
  br label %299

299:                                              ; preds = %295, %290
  %300 = load i32, i32* %15, align 4
  %301 = load i32, i32* @VME_PROG, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %299
  %305 = load i32, i32* @TSI148_LCSR_ITAT_PGM, align 4
  %306 = load i32, i32* %19, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %19, align 4
  br label %308

308:                                              ; preds = %304, %299
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* @VME_DATA, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %308
  %314 = load i32, i32* @TSI148_LCSR_ITAT_DATA, align 4
  %315 = load i32, i32* %19, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %19, align 4
  br label %317

317:                                              ; preds = %313, %308
  %318 = load i32, i32* %19, align 4
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tsi148_bridge, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %323 = load i32, i32* %16, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %321, %326
  %328 = load i64, i64* @TSI148_LCSR_OFFSET_ITAT, align 8
  %329 = add nsw i64 %327, %328
  %330 = call i32 @iowrite32be(i32 %318, i64 %329)
  %331 = load i32, i32* %10, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %317
  %334 = load i32, i32* @TSI148_LCSR_ITAT_EN, align 4
  %335 = load i32, i32* %19, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %19, align 4
  br label %337

337:                                              ; preds = %333, %317
  %338 = load i32, i32* %19, align 4
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tsi148_bridge, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %343 = load i32, i32* %16, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %342, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %341, %346
  %348 = load i64, i64* @TSI148_LCSR_OFFSET_ITAT, align 8
  %349 = add nsw i64 %347, %348
  %350 = call i32 @iowrite32be(i32 %338, i64 %349)
  store i32 0, i32* %8, align 4
  br label %351

351:                                              ; preds = %337, %95, %85, %75, %50
  %352 = load i32, i32* %8, align 4
  ret i32 %352
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @reg_split(i64, i32*, i32*) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
