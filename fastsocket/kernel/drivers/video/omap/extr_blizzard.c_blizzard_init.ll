; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__*, i32 (%struct.TYPE_20__*)*, i32, i32, %struct.TYPE_15__*, i32, %struct.TYPE_21__, i32, i32, %struct.TYPE_18__, i32, i32, i32, i32, i32 (%struct.TYPE_20__*)*, i32, %struct.omapfb_device* }
%struct.TYPE_16__ = type { {}*, i32 (...)*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 (%struct.omapfb_device*)*, i32 (...)*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64, i32, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_20__ = type { %struct.omapfb_platform_data* }
%struct.omapfb_platform_data = type { %struct.blizzard_platform_data* }
%struct.blizzard_platform_data = type { i64 (%struct.TYPE_20__*)*, i64, i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)* }
%struct.omapfb_device = type { %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.omapfb_mem_desc = type { i32 }

@blizzard = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"s1d1374x: missing platform data\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@blizzard_ctrl = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@BLIZZARD_PLL_DIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"controller not initialized by the bootloader\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BLIZZARD_REV_CODE = common dso_local global i32 0, align 4
@BLIZZARD_CONFIG = common dso_local global i32 0, align 4
@BLIZZARD_VERSION_S1D13744 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"omapfb: s1d13744 LCD controller rev %d initialized (CNF pins %x)\0A\00", align 1
@BLIZZARD_VERSION_S1D13745 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"omapfb: s1d13745 LCD controller rev %d initialized (CNF pins %x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"invalid s1d1374x revision %02x\0A\00", align 1
@OMAPFB_UPDATE_DISABLED = common dso_local global i32 0, align 4
@blizzard_update_window_auto = common dso_local global i32 0, align 4
@IRQ_REQ_POOL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)* @blizzard_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blizzard_init(%struct.omapfb_device* %0, i32 %1, %struct.omapfb_mem_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omapfb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omapfb_mem_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.omapfb_platform_data*, align 8
  %17 = alloca %struct.blizzard_platform_data*, align 8
  store %struct.omapfb_device* %0, %struct.omapfb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.omapfb_mem_desc* %2, %struct.omapfb_mem_desc** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  store %struct.omapfb_device* %18, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 18), align 8
  %19 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %20 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %19, i32 0, i32 3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %25 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %3
  %30 = phi i1 [ true, %3 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  store %struct.omapfb_device* %33, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 18), align 8
  %34 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %35 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %34, i32 0, i32 3
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 2), align 8
  %37 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %38 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 1), align 8
  %40 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %41 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load %struct.omapfb_platform_data*, %struct.omapfb_platform_data** %43, align 8
  store %struct.omapfb_platform_data* %44, %struct.omapfb_platform_data** %16, align 8
  %45 = load %struct.omapfb_platform_data*, %struct.omapfb_platform_data** %16, align 8
  %46 = getelementptr inbounds %struct.omapfb_platform_data, %struct.omapfb_platform_data* %45, i32 0, i32 0
  %47 = load %struct.blizzard_platform_data*, %struct.blizzard_platform_data** %46, align 8
  store %struct.blizzard_platform_data* %47, %struct.blizzard_platform_data** %17, align 8
  %48 = load %struct.blizzard_platform_data*, %struct.blizzard_platform_data** %17, align 8
  %49 = icmp eq %struct.blizzard_platform_data* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %29
  %51 = load %struct.blizzard_platform_data*, %struct.blizzard_platform_data** %17, align 8
  %52 = getelementptr inbounds %struct.blizzard_platform_data, %struct.blizzard_platform_data* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_20__*)*, i64 (%struct.TYPE_20__*)** %52, align 8
  %54 = icmp eq i64 (%struct.TYPE_20__*)* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50, %29
  %56 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %57 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %265

62:                                               ; preds = %50
  %63 = load %struct.blizzard_platform_data*, %struct.blizzard_platform_data** %17, align 8
  %64 = getelementptr inbounds %struct.blizzard_platform_data, %struct.blizzard_platform_data* %63, i32 0, i32 3
  %65 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %64, align 8
  store i32 (%struct.TYPE_20__*)* %65, i32 (%struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 3), align 8
  %66 = load %struct.blizzard_platform_data*, %struct.blizzard_platform_data** %17, align 8
  %67 = getelementptr inbounds %struct.blizzard_platform_data, %struct.blizzard_platform_data* %66, i32 0, i32 2
  %68 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %67, align 8
  store i32 (%struct.TYPE_20__*)* %68, i32 (%struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 16), align 8
  %69 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 17))
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 1), align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = bitcast {}** %71 to i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)**
  %73 = load i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)*, i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)** %72, align 8
  %74 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %75 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %7, align 8
  %76 = call i32 %73(%struct.omapfb_device* %74, i32 1, %struct.omapfb_mem_desc* %75)
  store i32 %76, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %265

79:                                               ; preds = %62
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 2), align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32 (%struct.omapfb_device*)*, i32 (%struct.omapfb_device*)** %81, align 8
  %83 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %84 = call i32 %82(%struct.omapfb_device* %83)
  store i32 %84, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %260

87:                                               ; preds = %79
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 1), align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @blizzard_ctrl, i32 0, i32 3), align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 1), align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @blizzard_ctrl, i32 0, i32 2), align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 1), align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @blizzard_ctrl, i32 0, i32 1), align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 1), align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @blizzard_ctrl, i32 0, i32 0), align 4
  %100 = load %struct.blizzard_platform_data*, %struct.blizzard_platform_data** %17, align 8
  %101 = getelementptr inbounds %struct.blizzard_platform_data, %struct.blizzard_platform_data* %100, i32 0, i32 0
  %102 = load i64 (%struct.TYPE_20__*)*, i64 (%struct.TYPE_20__*)** %101, align 8
  %103 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %104 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = call i64 %102(%struct.TYPE_20__* %105)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @calc_extif_timings(i64 %107, i32* %13)
  store i32 %108, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %87
  br label %246

111:                                              ; preds = %87
  %112 = call i32 @set_extif_timings(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 15))
  %113 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 16), align 8
  %114 = icmp ne i32 (%struct.TYPE_20__*)* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 16), align 8
  %117 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %118 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = call i32 %116(%struct.TYPE_20__* %119)
  br label %121

121:                                              ; preds = %115, %111
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @calc_blizzard_clk_rates(i64 %122, i64* %14, i64* %15)
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @calc_extif_timings(i64 %124, i32* %13)
  store i32 %125, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %246

128:                                              ; preds = %121
  %129 = call i32 @set_extif_timings(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 15))
  %130 = load i32, i32* @BLIZZARD_PLL_DIV, align 4
  %131 = call i32 @blizzard_read_reg(i32 %130)
  %132 = and i32 %131, 128
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %128
  %135 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %136 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %135, i32 0, i32 0
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %136, align 8
  %138 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %137, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %139 = load i32, i32* @ENODEV, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %246

141:                                              ; preds = %128
  %142 = load %struct.blizzard_platform_data*, %struct.blizzard_platform_data** %17, align 8
  %143 = getelementptr inbounds %struct.blizzard_platform_data, %struct.blizzard_platform_data* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load i64, i64* %15, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @setup_tearsync(i64 %147, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %246

152:                                              ; preds = %146
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 0), align 8
  br label %153

153:                                              ; preds = %152, %141
  %154 = load i32, i32* @BLIZZARD_REV_CODE, align 4
  %155 = call i32 @blizzard_read_reg(i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* @BLIZZARD_CONFIG, align 4
  %157 = call i32 @blizzard_read_reg(i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %10, align 4
  %159 = and i32 %158, 252
  switch i32 %159, label %174 [
    i32 156, label %160
    i32 164, label %167
  ]

160:                                              ; preds = %153
  %161 = load i32, i32* @BLIZZARD_VERSION_S1D13744, align 4
  store i32 %161, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 14), align 8
  %162 = load i32, i32* %10, align 4
  %163 = and i32 %162, 3
  %164 = load i32, i32* %11, align 4
  %165 = and i32 %164, 7
  %166 = call i32 @pr_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %163, i32 %165)
  br label %182

167:                                              ; preds = %153
  %168 = load i32, i32* @BLIZZARD_VERSION_S1D13745, align 4
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 14), align 8
  %169 = load i32, i32* %10, align 4
  %170 = and i32 %169, 3
  %171 = load i32, i32* %11, align 4
  %172 = and i32 %171, 7
  %173 = call i32 @pr_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %170, i32 %172)
  br label %182

174:                                              ; preds = %153
  %175 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %176 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %175, i32 0, i32 0
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %177, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* @ENODEV, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %8, align 4
  br label %246

182:                                              ; preds = %167, %160
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 2), align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 13), align 4
  %186 = load i32, i32* @OMAPFB_UPDATE_DISABLED, align 4
  store i32 %186, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 11, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 11, i32 6), align 8
  %187 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %188 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %187, i32 0, i32 1
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 11, i32 5), align 4
  %192 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %193 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %192, i32 0, i32 1
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 11, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 11, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 11, i32 3), align 8
  %197 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %198 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %197, i32 0, i32 1
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 11, i32 2), align 4
  %202 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %203 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %202, i32 0, i32 1
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 11, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 11, i32 0), align 8
  %207 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %208 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %207, i32 0, i32 1
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 10), align 4
  %212 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %213 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %212, i32 0, i32 1
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 9), align 8
  %217 = call i32 @init_timer(%struct.TYPE_21__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 8))
  %218 = load i32, i32* @blizzard_update_window_auto, align 4
  store i32 %218, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 8, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 8, i32 0), align 8
  %219 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 5))
  %220 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 7))
  store i32 0, i32* %9, align 4
  br label %221

221:                                              ; preds = %233, %182
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 6), align 8
  %224 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %223)
  %225 = icmp slt i32 %222, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %221
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 6), align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = call i32 @list_add(i32* %231, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 5))
  br label %233

233:                                              ; preds = %226
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %9, align 4
  br label %221

236:                                              ; preds = %221
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @IRQ_REQ_POOL_SIZE, align 4
  %239 = icmp sle i32 %237, %238
  %240 = zext i1 %239 to i32
  %241 = call i32 @BUG_ON(i32 %240)
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* @IRQ_REQ_POOL_SIZE, align 4
  %244 = sub nsw i32 %242, %243
  %245 = call i32 @sema_init(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 4), i32 %244)
  store i32 0, i32* %4, align 4
  br label %267

246:                                              ; preds = %174, %151, %134, %127, %110
  %247 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 3), align 8
  %248 = icmp ne i32 (%struct.TYPE_20__*)* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 3), align 8
  %251 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %252 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %251, i32 0, i32 0
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %252, align 8
  %254 = call i32 %250(%struct.TYPE_20__* %253)
  br label %255

255:                                              ; preds = %249, %246
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 2), align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = load i32 (...)*, i32 (...)** %257, align 8
  %259 = call i32 (...) %258()
  br label %260

260:                                              ; preds = %255, %86
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @blizzard, i32 0, i32 1), align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  %263 = load i32 (...)*, i32 (...)** %262, align 8
  %264 = call i32 (...) %263()
  br label %265

265:                                              ; preds = %260, %78, %55
  %266 = load i32, i32* %8, align 4
  store i32 %266, i32* %4, align 4
  br label %267

267:                                              ; preds = %265, %236
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_20__*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @calc_extif_timings(i64, i32*) #1

declare dso_local i32 @set_extif_timings(i32*) #1

declare dso_local i32 @calc_blizzard_clk_rates(i64, i64*, i64*) #1

declare dso_local i32 @blizzard_read_reg(i32) #1

declare dso_local i32 @setup_tearsync(i64, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_21__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
