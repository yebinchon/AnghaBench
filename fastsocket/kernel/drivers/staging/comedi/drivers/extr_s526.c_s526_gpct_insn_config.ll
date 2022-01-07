; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s526.c_s526_gpct_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s526.c_s526_gpct_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32*, i32, i32 }
%union.cmReg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_GPCT_CONFIG_DATA = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"s526: GPCT_INSN_CONFIG: Configuring Encoder\0A\00", align 1
@PositionMeasurement = common dso_local global i32 0, align 4
@REG_C0M = common dso_local global i32 0, align 4
@REG_C0C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"s526: GPCT_INSN_CONFIG: Configuring SPG\0A\00", align 1
@SinglePulseGeneration = common dso_local global i32 0, align 4
@REG_C0H = common dso_local global i32 0, align 4
@REG_C0L = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"s526: GPCT_INSN_CONFIG: Configuring PTG\0A\00", align 1
@PulseTrainGeneration = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"s526: unsupported GPCT_insn_config\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GPCT_IndexPhaseHighHigh = common dso_local global i32 0, align 4
@GPCT_IndexPhaseHighLow = common dso_local global i32 0, align 4
@GPCT_IndexPhaseLowHigh = common dso_local global i32 0, align 4
@GPCT_IndexPhaseLowLow = common dso_local global i32 0, align 4
@GPCT_RESET_COUNTER_ON_INDEX = common dso_local global i32 0, align 4
@GPCT_X2 = common dso_local global i32 0, align 4
@GPCT_X4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s526_gpct_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s526_gpct_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca %union.cmReg, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %41, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @MAX_GPCT_CONFIG_DATA, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %29, i32* %40, align 4
  br label %41

41:                                               ; preds = %22
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %18

44:                                               ; preds = %18
  %45 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %308 [
    i32 129, label %50
    i32 128, label %84
    i32 130, label %196
  ]

50:                                               ; preds = %44
  %51 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @PositionMeasurement, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 %52, i32* %59, align 8
  %60 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %61 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 65535
  %66 = trunc i32 %65 to i16
  %67 = bitcast %union.cmReg* %13 to i16*
  store i16 %66, i16* %67, align 4
  %68 = bitcast %union.cmReg* %13 to i16*
  %69 = load i16, i16* %68, align 4
  %70 = load i32, i32* @REG_C0M, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @ADDR_CHAN_REG(i32 %70, i32 %71)
  %73 = call i32 @outw(i16 signext %69, i32 %72)
  %74 = bitcast %union.cmReg* %13 to %struct.TYPE_5__*
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %50
  %79 = load i32, i32* @REG_C0C, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @ADDR_CHAN_REG(i32 %79, i32 %80)
  %82 = call i32 @outw(i16 signext -32768, i32 %81)
  br label %83

83:                                               ; preds = %78, %50
  br label %312

84:                                               ; preds = %44
  %85 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @SinglePulseGeneration, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %86, i32* %93, align 8
  %94 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %95 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 65535
  %100 = trunc i32 %99 to i16
  %101 = bitcast %union.cmReg* %13 to i16*
  store i16 %100, i16* %101, align 4
  %102 = bitcast %union.cmReg* %13 to %struct.TYPE_5__*
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 7
  store i32 0, i32* %103, align 4
  %104 = bitcast %union.cmReg* %13 to i16*
  %105 = load i16, i16* %104, align 4
  %106 = load i32, i32* @REG_C0M, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @ADDR_CHAN_REG(i32 %106, i32 %107)
  %109 = call i32 @outw(i16 signext %105, i32 %108)
  %110 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %111 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 16
  %116 = and i32 %115, 65535
  %117 = trunc i32 %116 to i16
  store i16 %117, i16* %12, align 2
  %118 = load i16, i16* %12, align 2
  %119 = load i32, i32* @REG_C0H, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @ADDR_CHAN_REG(i32 %119, i32 %120)
  %122 = call i32 @outw(i16 signext %118, i32 %121)
  %123 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %124 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 65535
  %129 = trunc i32 %128 to i16
  store i16 %129, i16* %12, align 2
  %130 = load i16, i16* %12, align 2
  %131 = load i32, i32* @REG_C0L, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @ADDR_CHAN_REG(i32 %131, i32 %132)
  %134 = call i32 @outw(i16 signext %130, i32 %133)
  %135 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %136 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 65535
  %141 = trunc i32 %140 to i16
  %142 = bitcast %union.cmReg* %13 to i16*
  store i16 %141, i16* %142, align 4
  %143 = bitcast %union.cmReg* %13 to %struct.TYPE_5__*
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 7
  store i32 1, i32* %144, align 4
  %145 = bitcast %union.cmReg* %13 to i16*
  %146 = load i16, i16* %145, align 4
  %147 = load i32, i32* @REG_C0M, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @ADDR_CHAN_REG(i32 %147, i32 %148)
  %150 = call i32 @outw(i16 signext %146, i32 %149)
  %151 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %152 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 16
  %157 = and i32 %156, 65535
  %158 = trunc i32 %157 to i16
  store i16 %158, i16* %12, align 2
  %159 = load i16, i16* %12, align 2
  %160 = load i32, i32* @REG_C0H, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @ADDR_CHAN_REG(i32 %160, i32 %161)
  %163 = call i32 @outw(i16 signext %159, i32 %162)
  %164 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %165 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 65535
  %170 = trunc i32 %169 to i16
  store i16 %170, i16* %12, align 2
  %171 = load i16, i16* %12, align 2
  %172 = load i32, i32* @REG_C0L, align 4
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @ADDR_CHAN_REG(i32 %172, i32 %173)
  %175 = call i32 @outw(i16 signext %171, i32 %174)
  %176 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %177 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 4
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %84
  %183 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %184 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 4
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 65535
  %189 = trunc i32 %188 to i16
  store i16 %189, i16* %12, align 2
  %190 = load i16, i16* %12, align 2
  %191 = load i32, i32* @REG_C0C, align 4
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @ADDR_CHAN_REG(i32 %191, i32 %192)
  %194 = call i32 @outw(i16 signext %190, i32 %193)
  br label %195

195:                                              ; preds = %182, %84
  br label %312

196:                                              ; preds = %44
  %197 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %198 = load i32, i32* @PulseTrainGeneration, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  store i32 %198, i32* %205, align 8
  %206 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %207 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 65535
  %212 = trunc i32 %211 to i16
  %213 = bitcast %union.cmReg* %13 to i16*
  store i16 %212, i16* %213, align 4
  %214 = bitcast %union.cmReg* %13 to %struct.TYPE_5__*
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 7
  store i32 0, i32* %215, align 4
  %216 = bitcast %union.cmReg* %13 to i16*
  %217 = load i16, i16* %216, align 4
  %218 = load i32, i32* @REG_C0M, align 4
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @ADDR_CHAN_REG(i32 %218, i32 %219)
  %221 = call i32 @outw(i16 signext %217, i32 %220)
  %222 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %223 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = ashr i32 %226, 16
  %228 = and i32 %227, 65535
  %229 = trunc i32 %228 to i16
  store i16 %229, i16* %12, align 2
  %230 = load i16, i16* %12, align 2
  %231 = load i32, i32* @REG_C0H, align 4
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @ADDR_CHAN_REG(i32 %231, i32 %232)
  %234 = call i32 @outw(i16 signext %230, i32 %233)
  %235 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %236 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 65535
  %241 = trunc i32 %240 to i16
  store i16 %241, i16* %12, align 2
  %242 = load i16, i16* %12, align 2
  %243 = load i32, i32* @REG_C0L, align 4
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @ADDR_CHAN_REG(i32 %243, i32 %244)
  %246 = call i32 @outw(i16 signext %242, i32 %245)
  %247 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %248 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 65535
  %253 = trunc i32 %252 to i16
  %254 = bitcast %union.cmReg* %13 to i16*
  store i16 %253, i16* %254, align 4
  %255 = bitcast %union.cmReg* %13 to %struct.TYPE_5__*
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 7
  store i32 1, i32* %256, align 4
  %257 = bitcast %union.cmReg* %13 to i16*
  %258 = load i16, i16* %257, align 4
  %259 = load i32, i32* @REG_C0M, align 4
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @ADDR_CHAN_REG(i32 %259, i32 %260)
  %262 = call i32 @outw(i16 signext %258, i32 %261)
  %263 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %264 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 3
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 16
  %269 = and i32 %268, 65535
  %270 = trunc i32 %269 to i16
  store i16 %270, i16* %12, align 2
  %271 = load i16, i16* %12, align 2
  %272 = load i32, i32* @REG_C0H, align 4
  %273 = load i32, i32* %10, align 4
  %274 = call i32 @ADDR_CHAN_REG(i32 %272, i32 %273)
  %275 = call i32 @outw(i16 signext %271, i32 %274)
  %276 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %277 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 3
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, 65535
  %282 = trunc i32 %281 to i16
  store i16 %282, i16* %12, align 2
  %283 = load i16, i16* %12, align 2
  %284 = load i32, i32* @REG_C0L, align 4
  %285 = load i32, i32* %10, align 4
  %286 = call i32 @ADDR_CHAN_REG(i32 %284, i32 %285)
  %287 = call i32 @outw(i16 signext %283, i32 %286)
  %288 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %289 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 4
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %196
  %295 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %296 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 4
  %299 = load i32, i32* %298, align 4
  %300 = and i32 %299, 65535
  %301 = trunc i32 %300 to i16
  store i16 %301, i16* %12, align 2
  %302 = load i16, i16* %12, align 2
  %303 = load i32, i32* @REG_C0C, align 4
  %304 = load i32, i32* %10, align 4
  %305 = call i32 @ADDR_CHAN_REG(i32 %303, i32 %304)
  %306 = call i32 @outw(i16 signext %302, i32 %305)
  br label %307

307:                                              ; preds = %294, %196
  br label %312

308:                                              ; preds = %44
  %309 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %310 = load i32, i32* @EINVAL, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %5, align 4
  br label %316

312:                                              ; preds = %307, %195, %83
  %313 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %314 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  store i32 %315, i32* %5, align 4
  br label %316

316:                                              ; preds = %312, %308
  %317 = load i32, i32* %5, align 4
  ret i32 %317
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @outw(i16 signext, i32) #1

declare dso_local i32 @ADDR_CHAN_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
