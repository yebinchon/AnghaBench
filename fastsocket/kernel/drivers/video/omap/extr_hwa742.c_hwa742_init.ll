; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_hwa742_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_hwa742_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32, i32, %struct.TYPE_17__*, i32, %struct.omapfb_device*, i64, %struct.TYPE_14__, %struct.TYPE_11__, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { {}*, i32 (...)* }
%struct.TYPE_12__ = type { i32 (%struct.omapfb_device*)*, i32 (...)*, i32, i32 (i32*)* }
%struct.TYPE_17__ = type { i32 }
%struct.omapfb_device = type { %struct.TYPE_16__*, %struct.TYPE_10__*, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.omapfb_platform_data* }
%struct.omapfb_platform_data = type { %struct.hwa742_platform_data* }
%struct.hwa742_platform_data = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i64, i64 }
%struct.omapfb_mem_desc = type { i32 }

@hwa742 = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"HWA742: missing platform data\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"hwa_sys_ck\00", align 1
@HWA742_REV_CODE_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"HWA742: invalid revision %02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HWA742_PLL_DIV_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"HWA742: controller not initialized by the bootloader\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"HWA742: can't setup tearing synchronization\0A\00", align 1
@OMAPFB_UPDATE_DISABLED = common dso_local global i32 0, align 4
@hwa742_update_window_auto = common dso_local global i32 0, align 4
@IRQ_REQ_POOL_SIZE = common dso_local global i32 0, align 4
@HWA742_CONFIG_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c": Epson HWA742 LCD controller rev %d initialized (CNF pins %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)* @hwa742_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwa742_init(%struct.omapfb_device* %0, i32 %1, %struct.omapfb_mem_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omapfb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omapfb_mem_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.omapfb_platform_data*, align 8
  %17 = alloca %struct.hwa742_platform_data*, align 8
  store %struct.omapfb_device* %0, %struct.omapfb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.omapfb_mem_desc* %2, %struct.omapfb_mem_desc** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %19 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %18, i32 0, i32 3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %24 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi i1 [ true, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  store %struct.omapfb_device* %32, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 9), align 8
  %33 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %34 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %33, i32 0, i32 3
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 3), align 8
  %36 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %37 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 2), align 8
  %39 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %40 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.omapfb_platform_data*, %struct.omapfb_platform_data** %42, align 8
  store %struct.omapfb_platform_data* %43, %struct.omapfb_platform_data** %16, align 8
  %44 = load %struct.omapfb_platform_data*, %struct.omapfb_platform_data** %16, align 8
  %45 = getelementptr inbounds %struct.omapfb_platform_data, %struct.omapfb_platform_data* %44, i32 0, i32 0
  %46 = load %struct.hwa742_platform_data*, %struct.hwa742_platform_data** %45, align 8
  store %struct.hwa742_platform_data* %46, %struct.hwa742_platform_data** %17, align 8
  %47 = load %struct.hwa742_platform_data*, %struct.hwa742_platform_data** %17, align 8
  %48 = icmp eq %struct.hwa742_platform_data* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %28
  %50 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %51 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %210

56:                                               ; preds = %28
  %57 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 4), align 8
  %58 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 16))
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 2), align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)**
  %62 = load i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)*, i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)** %61, align 8
  %63 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %64 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %7, align 8
  %65 = call i32 %62(%struct.omapfb_device* %63, i32 1, %struct.omapfb_mem_desc* %64)
  store i32 %65, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %210

68:                                               ; preds = %56
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 3), align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32 (%struct.omapfb_device*)*, i32 (%struct.omapfb_device*)** %70, align 8
  %72 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %73 = call i32 %71(%struct.omapfb_device* %72)
  store i32 %73, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %205

76:                                               ; preds = %68
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 4), align 8
  %78 = call i64 @clk_get_rate(i32 %77)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @calc_extif_timings(i64 %79, i32* %15)
  store i32 %80, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %200

83:                                               ; preds = %76
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 3), align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32 (i32*)*, i32 (i32*)** %85, align 8
  %87 = call i32 %86(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 15))
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 4), align 8
  %89 = call i32 @clk_enable(i32 %88)
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @calc_hwa742_clk_rates(i64 %90, i64* %13, i64* %14)
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @calc_extif_timings(i64 %92, i32* %15)
  store i32 %93, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %197

96:                                               ; preds = %83
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 3), align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = load i32 (i32*)*, i32 (i32*)** %98, align 8
  %100 = call i32 %99(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 15))
  %101 = load i32, i32* @HWA742_REV_CODE_REG, align 4
  %102 = call i32 @hwa742_read_reg(i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, 252
  %105 = icmp ne i32 %104, 128
  br i1 %105, label %106, label %114

106:                                              ; preds = %96
  %107 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %108 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %197

114:                                              ; preds = %96
  %115 = load i32, i32* @HWA742_PLL_DIV_REG, align 4
  %116 = call i32 @hwa742_read_reg(i32 %115)
  %117 = and i32 %116, 128
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %114
  %120 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %121 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %122, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %8, align 4
  br label %197

126:                                              ; preds = %114
  %127 = load %struct.hwa742_platform_data*, %struct.hwa742_platform_data** %17, align 8
  %128 = getelementptr inbounds %struct.hwa742_platform_data, %struct.hwa742_platform_data* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load i64, i64* %14, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @setup_tearsync(i64 %132, i32 %133)
  store i32 %134, i32* %8, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.omapfb_device*, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 9), align 8
  %138 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %137, i32 0, i32 0
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %139, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %197

141:                                              ; preds = %131
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 0), align 8
  br label %142

142:                                              ; preds = %141, %126
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 3), align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 14), align 4
  %146 = load i32, i32* @OMAPFB_UPDATE_DISABLED, align 4
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 13), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 12, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 12, i32 3), align 8
  %147 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %148 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 12, i32 2), align 4
  %152 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %153 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %152, i32 0, i32 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 12, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 12, i32 0), align 8
  %157 = call i32 @init_timer(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 11))
  %158 = load i32, i32* @hwa742_update_window_auto, align 4
  store i32 %158, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 11, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 11, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 10), align 8
  %159 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  store %struct.omapfb_device* %159, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 9), align 8
  %160 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 6))
  %161 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 8))
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %174, %142
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 7), align 8
  %165 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %164)
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 7), align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = call i32 @list_add(i32* %172, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 6))
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %162

177:                                              ; preds = %162
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @IRQ_REQ_POOL_SIZE, align 4
  %180 = icmp sle i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @BUG_ON(i32 %181)
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @IRQ_REQ_POOL_SIZE, align 4
  %185 = sub nsw i32 %183, %184
  %186 = call i32 @sema_init(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 5), i32 %185)
  %187 = load i32, i32* @HWA742_CONFIG_REG, align 4
  %188 = call i32 @hwa742_read_reg(i32 %187)
  store i32 %188, i32* %11, align 4
  %189 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %190 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %189, i32 0, i32 0
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = and i32 %192, 3
  %194 = load i32, i32* %11, align 4
  %195 = and i32 %194, 7
  %196 = call i32 @dev_info(%struct.TYPE_16__* %191, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %193, i32 %195)
  store i32 0, i32* %4, align 4
  br label %212

197:                                              ; preds = %136, %119, %106, %95
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 4), align 8
  %199 = call i32 @clk_disable(i32 %198)
  br label %200

200:                                              ; preds = %197, %82
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 3), align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load i32 (...)*, i32 (...)** %202, align 8
  %204 = call i32 (...) %203()
  br label %205

205:                                              ; preds = %200, %75
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hwa742, i32 0, i32 2), align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load i32 (...)*, i32 (...)** %207, align 8
  %209 = call i32 (...) %208()
  br label %210

210:                                              ; preds = %205, %67, %49
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %210, %177
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @calc_extif_timings(i64, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @calc_hwa742_clk_rates(i64, i64*, i64*) #1

declare dso_local i32 @hwa742_read_reg(i32) #1

declare dso_local i32 @setup_tearsync(i64, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_14__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_17__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_16__*, i8*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
