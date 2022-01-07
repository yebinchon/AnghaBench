; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i8*, i32 (%struct.snd_soc_codec*, i32)*, i32, i32, i32, i32, %struct.TYPE_5__**, %struct.wm8753_priv*, %struct.TYPE_5__*, i32 (%struct.snd_soc_codec*, i32)*, i32, i32 (%struct.snd_soc_codec*, i32, i32)*, i32, i32, i32, i32 }
%struct.wm8753_priv = type { %struct.TYPE_5__*, %struct.snd_soc_codec }
%struct.TYPE_5__ = type { i32 }

@wm8753_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Multiple WM8753 devices not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"WM8753\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@wm8753_dai = common dso_local global %struct.TYPE_5__* null, align 8
@wm8753_reg = common dso_local global i32 0, align 4
@wm8753_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to issue reset\0A\00", align 1
@SND_SOC_BIAS_PREPARE = common dso_local global i32 0, align 4
@caps_charge = common dso_local global i32 0, align 4
@WM8753_LDAC = common dso_local global i32 0, align 4
@WM8753_RDAC = common dso_local global i32 0, align 4
@WM8753_LADC = common dso_local global i32 0, align 4
@WM8753_RADC = common dso_local global i32 0, align 4
@WM8753_LOUT1V = common dso_local global i32 0, align 4
@WM8753_ROUT1V = common dso_local global i32 0, align 4
@WM8753_LOUT2V = common dso_local global i32 0, align 4
@WM8753_ROUT2V = common dso_local global i32 0, align 4
@WM8753_LINVOL = common dso_local global i32 0, align 4
@WM8753_RINVOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to register codec: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to register DAIs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8753_priv*)* @wm8753_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_register(%struct.wm8753_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm8753_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  store %struct.wm8753_priv* %0, %struct.wm8753_priv** %3, align 8
  %8 = load %struct.wm8753_priv*, %struct.wm8753_priv** %3, align 8
  %9 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %8, i32 0, i32 1
  store %struct.snd_soc_codec* %9, %struct.snd_soc_codec** %6, align 8
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm8753_codec, align 8
  %11 = icmp ne %struct.snd_soc_codec* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @dev_err(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %219

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %20, i32 0, i32 15
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %23, i32 0, i32 14
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %27 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %26, i32 0, i32 13
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %30 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @THIS_MODULE, align 4
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %33 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 8
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %35 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %34, i32 0, i32 1
  store i32 (%struct.snd_soc_codec*, i32)* @wm8753_read_reg_cache, i32 (%struct.snd_soc_codec*, i32)** %35, align 8
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 11
  store i32 (%struct.snd_soc_codec*, i32, i32)* @wm8753_write, i32 (%struct.snd_soc_codec*, i32, i32)** %37, align 8
  %38 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %40 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %42 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %41, i32 0, i32 9
  store i32 (%struct.snd_soc_codec*, i32)* @wm8753_set_bias_level, i32 (%struct.snd_soc_codec*, i32)** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wm8753_dai, align 8
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %45 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %44, i32 0, i32 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %45, align 8
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %47 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %46, i32 0, i32 2
  store i32 2, i32* %47, align 8
  %48 = load %struct.wm8753_priv*, %struct.wm8753_priv** %3, align 8
  %49 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %50)
  %52 = add nsw i32 %51, 1
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %54 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.wm8753_priv*, %struct.wm8753_priv** %3, align 8
  %56 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %55, i32 0, i32 0
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %58 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %57, i32 0, i32 6
  store %struct.TYPE_5__** %56, %struct.TYPE_5__*** %58, align 8
  %59 = load %struct.wm8753_priv*, %struct.wm8753_priv** %3, align 8
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %61 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %60, i32 0, i32 7
  store %struct.wm8753_priv* %59, %struct.wm8753_priv** %61, align 8
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %63 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %62, i32 0, i32 6
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %63, align 8
  %65 = load i32, i32* @wm8753_reg, align 4
  %66 = call i32 @memcpy(%struct.TYPE_5__** %64, i32 %65, i32 8)
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %68 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %67, i32 0, i32 4
  %69 = load i32, i32* @wm8753_work, align 4
  %70 = call i32 @INIT_DELAYED_WORK(i32* %68, i32 %69)
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %72 = call i32 @wm8753_reset(%struct.snd_soc_codec* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %19
  %76 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %77 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %219

80:                                               ; preds = %19
  %81 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %82 = load i32, i32* @SND_SOC_BIAS_PREPARE, align 4
  %83 = call i32 @wm8753_set_bias_level(%struct.snd_soc_codec* %81, i32 %82)
  %84 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %85 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %84, i32 0, i32 4
  %86 = load i32, i32* @caps_charge, align 4
  %87 = call i32 @msecs_to_jiffies(i32 %86)
  %88 = call i32 @schedule_delayed_work(i32* %85, i32 %87)
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %90 = load i32, i32* @WM8753_LDAC, align 4
  %91 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %93 = load i32, i32* @WM8753_LDAC, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, 256
  %96 = call i32 @wm8753_write(%struct.snd_soc_codec* %92, i32 %93, i32 %95)
  %97 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %98 = load i32, i32* @WM8753_RDAC, align 4
  %99 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %101 = load i32, i32* @WM8753_RDAC, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, 256
  %104 = call i32 @wm8753_write(%struct.snd_soc_codec* %100, i32 %101, i32 %103)
  %105 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %106 = load i32, i32* @WM8753_LADC, align 4
  %107 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %109 = load i32, i32* @WM8753_LADC, align 4
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, 256
  %112 = call i32 @wm8753_write(%struct.snd_soc_codec* %108, i32 %109, i32 %111)
  %113 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %114 = load i32, i32* @WM8753_RADC, align 4
  %115 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %113, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %117 = load i32, i32* @WM8753_RADC, align 4
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, 256
  %120 = call i32 @wm8753_write(%struct.snd_soc_codec* %116, i32 %117, i32 %119)
  %121 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %122 = load i32, i32* @WM8753_LOUT1V, align 4
  %123 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %121, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %125 = load i32, i32* @WM8753_LOUT1V, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, 256
  %128 = call i32 @wm8753_write(%struct.snd_soc_codec* %124, i32 %125, i32 %127)
  %129 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %130 = load i32, i32* @WM8753_ROUT1V, align 4
  %131 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %129, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %133 = load i32, i32* @WM8753_ROUT1V, align 4
  %134 = load i32, i32* %7, align 4
  %135 = or i32 %134, 256
  %136 = call i32 @wm8753_write(%struct.snd_soc_codec* %132, i32 %133, i32 %135)
  %137 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %138 = load i32, i32* @WM8753_LOUT2V, align 4
  %139 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %137, i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %141 = load i32, i32* @WM8753_LOUT2V, align 4
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, 256
  %144 = call i32 @wm8753_write(%struct.snd_soc_codec* %140, i32 %141, i32 %143)
  %145 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %146 = load i32, i32* @WM8753_ROUT2V, align 4
  %147 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %145, i32 %146)
  store i32 %147, i32* %7, align 4
  %148 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %149 = load i32, i32* @WM8753_ROUT2V, align 4
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, 256
  %152 = call i32 @wm8753_write(%struct.snd_soc_codec* %148, i32 %149, i32 %151)
  %153 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %154 = load i32, i32* @WM8753_LINVOL, align 4
  %155 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %153, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %157 = load i32, i32* @WM8753_LINVOL, align 4
  %158 = load i32, i32* %7, align 4
  %159 = or i32 %158, 256
  %160 = call i32 @wm8753_write(%struct.snd_soc_codec* %156, i32 %157, i32 %159)
  %161 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %162 = load i32, i32* @WM8753_RINVOL, align 4
  %163 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %161, i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %165 = load i32, i32* @WM8753_RINVOL, align 4
  %166 = load i32, i32* %7, align 4
  %167 = or i32 %166, 256
  %168 = call i32 @wm8753_write(%struct.snd_soc_codec* %164, i32 %165, i32 %167)
  %169 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  store %struct.snd_soc_codec* %169, %struct.snd_soc_codec** @wm8753_codec, align 8
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %184, %80
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wm8753_dai, align 8
  %173 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %172)
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %170
  %176 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %177 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wm8753_dai, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store i32 %178, i32* %183, align 4
  br label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %170

187:                                              ; preds = %170
  %188 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %189 = call i32 @snd_soc_register_codec(%struct.snd_soc_codec* %188)
  store i32 %189, i32* %4, align 4
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %194 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %4, align 4
  %197 = call i32 (i32, i8*, ...) @dev_err(i32 %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %196)
  br label %219

198:                                              ; preds = %187
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wm8753_dai, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 0
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wm8753_dai, align 8
  %202 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %201)
  %203 = call i32 @snd_soc_register_dais(%struct.TYPE_5__* %200, i32 %202)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %198
  %207 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %208 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %4, align 4
  %211 = call i32 (i32, i8*, ...) @dev_err(i32 %209, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %210)
  br label %213

212:                                              ; preds = %198
  store i32 0, i32* %2, align 4
  br label %223

213:                                              ; preds = %206
  %214 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %215 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %214, i32 0, i32 4
  %216 = call i32 @run_delayed_work(i32* %215)
  %217 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %218 = call i32 @snd_soc_unregister_codec(%struct.snd_soc_codec* %217)
  br label %219

219:                                              ; preds = %213, %192, %75, %12
  %220 = load %struct.wm8753_priv*, %struct.wm8753_priv** %3, align 8
  %221 = call i32 @kfree(%struct.wm8753_priv* %220)
  %222 = load i32, i32* %4, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %219, %212
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @wm8753_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8753_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @wm8753_set_bias_level(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__**, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @wm8753_reset(%struct.snd_soc_codec*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_soc_register_codec(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_register_dais(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @run_delayed_work(i32*) #1

declare dso_local i32 @snd_soc_unregister_codec(%struct.snd_soc_codec*) #1

declare dso_local i32 @kfree(%struct.wm8753_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
