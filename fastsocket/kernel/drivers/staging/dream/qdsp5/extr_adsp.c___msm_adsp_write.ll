; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c___msm_adsp_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c___msm_adsp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i64, i32, i32, i32, %struct.adsp_info* }
%struct.adsp_info = type { i32, i32 }

@adsp_cmd_lock = common dso_local global i32 0, align 4
@ADSP_STATE_ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"adsp: module %s not enabled before write\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"adsp: module id validation failed %s  %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ADSP_RTOS_WRITE_CTRL_WORD_DSP_ADDR_M = common dso_local global i64 0, align 8
@ADSP_RTOS_WRITE_CTRL_WORD_READY_M = common dso_local global i64 0, align 8
@ADSP_RTOS_WRITE_CTRL_WORD_READY_V = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"adsp: timeout waiting for DSP write ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"adsp: waiting for DSP write ready\0A\00", align 1
@ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_M = common dso_local global i64 0, align 8
@ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_NAVAIL_V = common dso_local global i64 0, align 8
@ADSP_RTOS_WRITE_CTRL_WORD_CMD_M = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"adsp: timeout waiting for adsp ack\0A\00", align 1
@ADSP_RTOS_WRITE_CTRL_WORD_STATUS_M = common dso_local global i64 0, align 8
@ADSP_RTOS_WRITE_CTRL_WORD_NO_ERR_V = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@MSM_AD5_BASE = common dso_local global i64 0, align 8
@QDSP_RAMC_OFFSET = common dso_local global i64 0, align 8
@ADSP_RTOS_WRITE_CTRL_WORD_CMD_WRITE_DONE_V = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__msm_adsp_write(%struct.msm_adsp_module* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_adsp_module*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.adsp_info*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %23 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %22, i32 0, i32 4
  %24 = load %struct.adsp_info*, %struct.adsp_info** %23, align 8
  store %struct.adsp_info* %24, %struct.adsp_info** %17, align 8
  %25 = load i64, i64* %16, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @adsp_cmd_lock, i64 %25)
  %27 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %28 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ADSP_STATE_ENABLED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %4
  %33 = load i64, i64* %16, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @adsp_cmd_lock, i64 %33)
  %35 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %36 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %247

41:                                               ; preds = %4
  %42 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %43 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @adsp_validate_module(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i64, i64* %16, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* @adsp_cmd_lock, i64 %48)
  %50 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %51 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %54 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i32, i32* @ENXIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %247

59:                                               ; preds = %41
  %60 = load %struct.adsp_info*, %struct.adsp_info** %17, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @adsp_get_queue_offset(%struct.adsp_info* %60, i32 %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_DSP_ADDR_M, align 8
  %64 = load i64, i64* %11, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %82, %59
  %67 = load %struct.adsp_info*, %struct.adsp_info** %17, align 8
  %68 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @readl(i32 %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_READY_M, align 8
  %72 = and i64 %70, %71
  %73 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_READY_V, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %66
  %76 = load i32, i32* %14, align 4
  %77 = icmp sgt i32 %76, 100
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %15, align 4
  br label %243

82:                                               ; preds = %75
  %83 = call i32 @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 @udelay(i32 1)
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %66

87:                                               ; preds = %66
  %88 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_M, align 8
  %89 = xor i64 %88, -1
  %90 = load i64, i64* %10, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_NAVAIL_V, align 8
  %93 = load i64, i64* %10, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_CMD_M, align 8
  %96 = xor i64 %95, -1
  %97 = load i64, i64* %10, align 8
  %98 = and i64 %97, %96
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_DSP_ADDR_M, align 8
  %100 = xor i64 %99, -1
  %101 = load i64, i64* %10, align 8
  %102 = and i64 %101, %100
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.adsp_info*, %struct.adsp_info** %17, align 8
  %109 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @writel(i32 %107, i32 %110)
  %112 = load %struct.adsp_info*, %struct.adsp_info** %17, align 8
  %113 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @writel(i32 1, i32 %114)
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %132, %87
  %117 = load %struct.adsp_info*, %struct.adsp_info** %17, align 8
  %118 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @readl(i32 %119)
  %121 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_M, align 8
  %122 = and i64 %120, %121
  %123 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_NAVAIL_V, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %116
  %126 = load i32, i32* %14, align 4
  %127 = icmp sgt i32 %126, 5000
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %15, align 4
  br label %243

132:                                              ; preds = %125
  %133 = call i32 @udelay(i32 1)
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %116

136:                                              ; preds = %116
  %137 = load %struct.adsp_info*, %struct.adsp_info** %17, align 8
  %138 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @readl(i32 %139)
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_STATUS_M, align 8
  %143 = and i64 %141, %142
  %144 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_NO_ERR_V, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load i32, i32* @EAGAIN, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %15, align 4
  br label %243

149:                                              ; preds = %136
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_DSP_ADDR_M, align 8
  %152 = and i64 %150, %151
  %153 = load i64, i64* @MSM_AD5_BASE, align 8
  %154 = add nsw i64 %152, %153
  store i64 %154, i64* %12, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* @MSM_AD5_BASE, align 8
  %157 = load i64, i64* @QDSP_RAMC_OFFSET, align 8
  %158 = add nsw i64 %156, %157
  %159 = icmp slt i64 %155, %158
  br i1 %159, label %160, label %184

160:                                              ; preds = %149
  %161 = load i8*, i8** %8, align 8
  %162 = bitcast i8* %161 to i32*
  store i32* %162, i32** %18, align 8
  %163 = load i64, i64* %12, align 8
  %164 = inttoptr i64 %163 to i32*
  store i32* %164, i32** %19, align 8
  %165 = load i64, i64* %9, align 8
  %166 = udiv i64 %165, 4
  store i64 %166, i64* %9, align 8
  %167 = load i32*, i32** %18, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %13, align 8
  %171 = load i64, i64* %9, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %9, align 8
  br label %173

173:                                              ; preds = %177, %160
  %174 = load i64, i64* %9, align 8
  %175 = add i64 %174, -1
  store i64 %175, i64* %9, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32*, i32** %18, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %18, align 8
  %180 = load i32, i32* %178, align 4
  %181 = load i32*, i32** %19, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %19, align 8
  store i32 %180, i32* %181, align 4
  br label %173

183:                                              ; preds = %173
  br label %207

184:                                              ; preds = %149
  %185 = load i8*, i8** %8, align 8
  %186 = bitcast i8* %185 to i64*
  store i64* %186, i64** %20, align 8
  %187 = load i64, i64* %12, align 8
  %188 = inttoptr i64 %187 to i64*
  store i64* %188, i64** %21, align 8
  %189 = load i64, i64* %9, align 8
  %190 = udiv i64 %189, 8
  store i64 %190, i64* %9, align 8
  %191 = load i64*, i64** %20, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %13, align 8
  %194 = load i64, i64* %9, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %9, align 8
  br label %196

196:                                              ; preds = %200, %184
  %197 = load i64, i64* %9, align 8
  %198 = add i64 %197, -1
  store i64 %198, i64* %9, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i64*, i64** %20, align 8
  %202 = getelementptr inbounds i64, i64* %201, i32 1
  store i64* %202, i64** %20, align 8
  %203 = load i64, i64* %201, align 8
  %204 = load i64*, i64** %21, align 8
  %205 = getelementptr inbounds i64, i64* %204, i32 1
  store i64* %205, i64** %21, align 8
  store i64 %203, i64* %204, align 8
  br label %196

206:                                              ; preds = %196
  br label %207

207:                                              ; preds = %206, %183
  %208 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_M, align 8
  %209 = xor i64 %208, -1
  %210 = load i64, i64* %10, align 8
  %211 = and i64 %210, %209
  store i64 %211, i64* %10, align 8
  %212 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_MUTEX_NAVAIL_V, align 8
  %213 = load i64, i64* %10, align 8
  %214 = or i64 %213, %212
  store i64 %214, i64* %10, align 8
  %215 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_CMD_M, align 8
  %216 = xor i64 %215, -1
  %217 = load i64, i64* %10, align 8
  %218 = and i64 %217, %216
  store i64 %218, i64* %10, align 8
  %219 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_CMD_WRITE_DONE_V, align 8
  %220 = load i64, i64* %10, align 8
  %221 = or i64 %220, %219
  store i64 %221, i64* %10, align 8
  %222 = load i64, i64* @ADSP_RTOS_WRITE_CTRL_WORD_DSP_ADDR_M, align 8
  %223 = xor i64 %222, -1
  %224 = load i64, i64* %10, align 8
  %225 = and i64 %224, %223
  store i64 %225, i64* %10, align 8
  %226 = load i64, i64* %11, align 8
  %227 = load i64, i64* %10, align 8
  %228 = or i64 %227, %226
  store i64 %228, i64* %10, align 8
  %229 = load i64, i64* %10, align 8
  %230 = trunc i64 %229 to i32
  %231 = load %struct.adsp_info*, %struct.adsp_info** %17, align 8
  %232 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @writel(i32 %230, i32 %233)
  %235 = load %struct.adsp_info*, %struct.adsp_info** %17, align 8
  %236 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @writel(i32 1, i32 %237)
  %239 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %240 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %207, %146, %128, %78
  %244 = load i64, i64* %16, align 8
  %245 = call i32 @spin_unlock_irqrestore(i32* @adsp_cmd_lock, i64 %244)
  %246 = load i32, i32* %15, align 4
  store i32 %246, i32* %5, align 4
  br label %247

247:                                              ; preds = %243, %47, %32
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @adsp_validate_module(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i64 @adsp_get_queue_offset(%struct.adsp_info*, i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
