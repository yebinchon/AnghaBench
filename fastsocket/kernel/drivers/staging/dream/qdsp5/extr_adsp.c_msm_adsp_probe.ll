; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.msm_adsp_module*, %struct.msm_adsp_module**, %struct.TYPE_5__*, i32, i32, i32 }
%struct.msm_adsp_module = type { i64, %struct.TYPE_6__, i32, i32, i32, i32*, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i64, i64, i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"adsp: probe\0A\00", align 1
@adsp_wake_lock = common dso_local global i32 0, align 4
@WAKE_LOCK_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"adsp\00", align 1
@adsp_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MSM_AD5_BASE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@adsp_modules = common dso_local global %struct.msm_adsp_module* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@adsp_cmd_lock = common dso_local global i32 0, align 4
@INT_ADSP = common dso_local global i32 0, align 4
@adsp_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@rpc_cb_server_client = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"adsp: could not create rpc server (%d)\0A\00", align 1
@RPC_ADSP_RTOS_MTOA_PROG = common dso_local global i32 0, align 4
@RPC_ADSP_RTOS_MTOA_VERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"adsp: could not register callback server (%d)\0A\00", align 1
@adsp_rpc_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"kadspd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @msm_adsp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_adsp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_adsp_module*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @WAKE_LOCK_SUSPEND, align 4
  %11 = call i32 @wake_lock_init(i32* @adsp_wake_lock, i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @adsp_init_info(%struct.TYPE_7__* @adsp_info)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %229

17:                                               ; preds = %1
  %18 = load i64, i64* @MSM_AD5_BASE, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 7), align 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 7), align 8
  %23 = load i64, i64* @MSM_AD5_BASE, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 6), align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 6), align 4
  %28 = load i64, i64* @MSM_AD5_BASE, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 5), align 8
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 5), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 0), align 8
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 1), align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 64, %37
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = add i64 %38, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 %43, i32 %44)
  %46 = bitcast i8* %45 to %struct.msm_adsp_module*
  store %struct.msm_adsp_module* %46, %struct.msm_adsp_module** @adsp_modules, align 8
  %47 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** @adsp_modules, align 8
  %48 = icmp ne %struct.msm_adsp_module* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %17
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %229

52:                                               ; preds = %17
  %53 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** @adsp_modules, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %53, i64 %55
  %57 = bitcast %struct.msm_adsp_module* %56 to i8*
  %58 = bitcast i8* %57 to %struct.msm_adsp_module**
  store %struct.msm_adsp_module** %58, %struct.msm_adsp_module*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 3), align 8
  %59 = call i32 @spin_lock_init(i32* @adsp_cmd_lock)
  %60 = load i32, i32* @INT_ADSP, align 4
  %61 = load i32, i32* @adsp_irq_handler, align 4
  %62 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %63 = call i32 @request_irq(i32 %60, i32 %61, i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %225

67:                                               ; preds = %52
  %68 = load i32, i32* @INT_ADSP, align 4
  %69 = call i32 @disable_irq(i32 %68)
  %70 = call i32* (...) @msm_rpc_open()
  store i32* %70, i32** @rpc_cb_server_client, align 8
  %71 = load i32*, i32** @rpc_cb_server_client, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  store i32* null, i32** @rpc_cb_server_client, align 8
  %75 = load i32*, i32** @rpc_cb_server_client, align 8
  %76 = call i32 @PTR_ERR(i32* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %220

79:                                               ; preds = %67
  %80 = load i32*, i32** @rpc_cb_server_client, align 8
  %81 = load i32, i32* @RPC_ADSP_RTOS_MTOA_PROG, align 4
  %82 = load i32, i32* @RPC_ADSP_RTOS_MTOA_VERS, align 4
  %83 = call i32 @msm_rpc_register_server(i32* %80, i32 %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %217

89:                                               ; preds = %79
  %90 = load i32, i32* @adsp_rpc_thread, align 4
  %91 = call i32 @kthread_run(i32 %90, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %210, %89
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %213

96:                                               ; preds = %92
  %97 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** @adsp_modules, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %97, i64 %99
  store %struct.msm_adsp_module* %100, %struct.msm_adsp_module** %8, align 8
  %101 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %102 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %101, i32 0, i32 9
  %103 = call i32 @mutex_init(i32* %102)
  %104 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %105 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %104, i32 0, i32 8
  %106 = call i32 @init_waitqueue_head(i32* %105)
  %107 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %108 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %107, i32 0, i32 7
  store %struct.TYPE_7__* @adsp_info, %struct.TYPE_7__** %108, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 4), align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %116 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 4), align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %124 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 4), align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %96
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 4), align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = call i32* @clk_get(i32* null, i64 %138)
  %140 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %141 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %140, i32 0, i32 5
  store i32* %139, i32** %141, align 8
  br label %145

142:                                              ; preds = %96
  %143 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %144 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %143, i32 0, i32 5
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %142, %132
  %146 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %147 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %169

150:                                              ; preds = %145
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 4), align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %150
  %159 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %160 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 4), align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @clk_set_rate(i32* %161, i64 %167)
  br label %169

169:                                              ; preds = %158, %150, %145
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 4), align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %177 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 4), align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %185 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %187 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %186, i32 0, i32 2
  %188 = call i32 @INIT_HLIST_HEAD(i32* %187)
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 4), align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %196 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 4
  %198 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %199 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i32 -1, i32* %200, align 8
  %201 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %202 = load %struct.msm_adsp_module**, %struct.msm_adsp_module*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adsp_info, i32 0, i32 3), align 8
  %203 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %204 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.msm_adsp_module*, %struct.msm_adsp_module** %202, i64 %205
  store %struct.msm_adsp_module* %201, %struct.msm_adsp_module** %206, align 8
  %207 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %208 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %207, i32 0, i32 1
  %209 = call i32 @platform_device_register(%struct.TYPE_6__* %208)
  br label %210

210:                                              ; preds = %169
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  br label %92

213:                                              ; preds = %92
  %214 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** @adsp_modules, align 8
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @msm_adsp_publish_cdevs(%struct.msm_adsp_module* %214, i32 %215)
  store i32 0, i32* %2, align 4
  br label %229

217:                                              ; preds = %86
  %218 = load i32*, i32** @rpc_cb_server_client, align 8
  %219 = call i32 @msm_rpc_close(i32* %218)
  store i32* null, i32** @rpc_cb_server_client, align 8
  br label %220

220:                                              ; preds = %217, %74
  %221 = load i32, i32* @INT_ADSP, align 4
  %222 = call i32 @enable_irq(i32 %221)
  %223 = load i32, i32* @INT_ADSP, align 4
  %224 = call i32 @free_irq(i32 %223, i32 0)
  br label %225

225:                                              ; preds = %220, %66
  %226 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** @adsp_modules, align 8
  %227 = call i32 @kfree(%struct.msm_adsp_module* %226)
  %228 = load i32, i32* %5, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %225, %213, %49, %15
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @wake_lock_init(i32*, i32, i8*) #1

declare dso_local i32 @adsp_init_info(%struct.TYPE_7__*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32* @msm_rpc_open(...) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @msm_rpc_register_server(i32*, i32, i32) #1

declare dso_local i32 @kthread_run(i32, i32*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @clk_get(i32*, i64) #1

declare dso_local i32 @clk_set_rate(i32*, i64) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @msm_adsp_publish_cdevs(%struct.msm_adsp_module*, i32) #1

declare dso_local i32 @msm_rpc_close(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @kfree(%struct.msm_adsp_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
