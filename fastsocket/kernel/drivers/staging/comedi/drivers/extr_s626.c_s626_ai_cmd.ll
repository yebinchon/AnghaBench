; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i64 }
%struct.enc_private = type { i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"s626_ai_cmd: entering command function\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"s626_ai_cmd: Another ai_cmd is running %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@P_IER = common dso_local global i64 0, align 8
@IRQ_RPS1 = common dso_local global i32 0, align 4
@IRQ_GPIO3 = common dso_local global i32 0, align 4
@P_ISR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"s626_ai_cmd: NULL command\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"s626_ai_cmd: command recieved!!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"s626_ai_cmd: cannot run command without an irq\00", align 1
@EIO = common dso_local global i32 0, align 4
@encpriv = common dso_local global %struct.enc_private* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@CLKENAB_ALWAYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"s626_ai_cmd: scan trigger timer is set with value %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"s626_ai_cmd: External scan trigger is set!!!\0A\00", align 1
@CLKENAB_INDEX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"s626_ai_cmd: convert trigger timer is set with value %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"s626_ai_cmd: External convert trigger is set!!!\0A\00", align 1
@P_MC1 = common dso_local global i32 0, align 4
@MC1_ERPS1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"s626_ai_cmd: ADC triggered\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"s626_ai_cmd: External start trigger is set!!!\0A\00", align 1
@s626_ai_inttrig = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"s626_ai_cmd: command function terminated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @s626_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.enc_private*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store %struct.comedi_cmd* %13, %struct.comedi_cmd** %7, align 8
  %14 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %223

26:                                               ; preds = %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @P_IER, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 0, i64 %31)
  %33 = load i32, i32* @IRQ_RPS1, align 4
  %34 = load i32, i32* @IRQ_GPIO3, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @P_ISR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = call i32 @s626_dio_clear_irq(%struct.comedi_device* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %47 = icmp eq %struct.comedi_cmd* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %223

52:                                               ; preds = %26
  %53 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = call i32 @comedi_error(%struct.comedi_device* %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %223

64:                                               ; preds = %54
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %67 = call i32 @s626_ai_load_polllist(i32* %65, %struct.comedi_cmd* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %114 [
    i32 132, label %75
    i32 128, label %76
    i32 133, label %101
  ]

75:                                               ; preds = %64
  br label %114

76:                                               ; preds = %64
  %77 = load %struct.enc_private*, %struct.enc_private** @encpriv, align 8
  %78 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %77, i64 5
  store %struct.enc_private* %78, %struct.enc_private** %8, align 8
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 8
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @s626_ns_to_timer(i32* %80, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %88 = load %struct.enc_private*, %struct.enc_private** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @s626_timer_load(%struct.comedi_device* %87, %struct.enc_private* %88, i32 %89)
  %91 = load %struct.enc_private*, %struct.enc_private** %8, align 8
  %92 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %91, i32 0, i32 0
  %93 = load i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)** %92, align 8
  %94 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %95 = bitcast %struct.comedi_device* %94 to %struct.comedi_device.0*
  %96 = load %struct.enc_private*, %struct.enc_private** %8, align 8
  %97 = load i32, i32* @CLKENAB_ALWAYS, align 4
  %98 = call i32 %93(%struct.comedi_device.0* %95, %struct.enc_private* %96, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %114

101:                                              ; preds = %64
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 133
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @s626_dio_set_irq(%struct.comedi_device* %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %101
  %113 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %114

114:                                              ; preds = %64, %112, %76, %75
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %162 [
    i32 129, label %118
    i32 128, label %119
    i32 133, label %144
  ]

118:                                              ; preds = %114
  br label %162

119:                                              ; preds = %114
  %120 = load %struct.enc_private*, %struct.enc_private** @encpriv, align 8
  %121 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %120, i64 4
  store %struct.enc_private* %121, %struct.enc_private** %8, align 8
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 7
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %128 = and i32 %126, %127
  %129 = call i32 @s626_ns_to_timer(i32* %123, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %131 = load %struct.enc_private*, %struct.enc_private** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @s626_timer_load(%struct.comedi_device* %130, %struct.enc_private* %131, i32 %132)
  %134 = load %struct.enc_private*, %struct.enc_private** %8, align 8
  %135 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %134, i32 0, i32 0
  %136 = load i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)** %135, align 8
  %137 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %138 = bitcast %struct.comedi_device* %137 to %struct.comedi_device.0*
  %139 = load %struct.enc_private*, %struct.enc_private** %8, align 8
  %140 = load i32, i32* @CLKENAB_INDEX, align 4
  %141 = call i32 %136(%struct.comedi_device.0* %138, %struct.enc_private* %139, i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  br label %162

144:                                              ; preds = %114
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 133
  br i1 %148, label %149, label %160

149:                                              ; preds = %144
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 133
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @s626_dio_set_irq(%struct.comedi_device* %155, i32 %158)
  br label %160

160:                                              ; preds = %154, %149, %144
  %161 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  br label %162

162:                                              ; preds = %114, %160, %119, %118
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %179 [
    i32 134, label %166
    i32 130, label %174
  ]

166:                                              ; preds = %162
  %167 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %168 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  br label %179

174:                                              ; preds = %162
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  store i32 1, i32* %176, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %162, %174, %166
  %180 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %182 = call i32 @ResetADC(%struct.comedi_device* %180, i32* %181)
  %183 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %184 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  switch i32 %185, label %212 [
    i32 129, label %186
    i32 133, label %195
    i32 131, label %206
  ]

186:                                              ; preds = %179
  %187 = load i32, i32* @P_MC1, align 4
  %188 = load i32, i32* @MC1_ERPS1, align 4
  %189 = call i32 @MC_ENABLE(i32 %187, i32 %188)
  %190 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %191 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %192 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %191, i32 0, i32 0
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  store i32* null, i32** %194, align 8
  br label %212

195:                                              ; preds = %179
  %196 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %197 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %198 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @s626_dio_set_irq(%struct.comedi_device* %196, i32 %199)
  %201 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  %202 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %203 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %202, i32 0, i32 0
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i32* null, i32** %205, align 8
  br label %212

206:                                              ; preds = %179
  %207 = load i32*, i32** @s626_ai_inttrig, align 8
  %208 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %209 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %208, i32 0, i32 0
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  store i32* %207, i32** %211, align 8
  br label %212

212:                                              ; preds = %179, %206, %195, %186
  %213 = load i32, i32* @IRQ_GPIO3, align 4
  %214 = load i32, i32* @IRQ_RPS1, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @P_IER, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @writel(i32 %215, i64 %220)
  %222 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %212, %59, %48, %19
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @DEBUG(i8*, ...) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s626_dio_clear_irq(%struct.comedi_device*) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @s626_ai_load_polllist(i32*, %struct.comedi_cmd*) #1

declare dso_local i32 @s626_ns_to_timer(i32*, i32) #1

declare dso_local i32 @s626_timer_load(%struct.comedi_device*, %struct.enc_private*, i32) #1

declare dso_local i32 @s626_dio_set_irq(%struct.comedi_device*, i32) #1

declare dso_local i32 @ResetADC(%struct.comedi_device*, i32*) #1

declare dso_local i32 @MC_ENABLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
