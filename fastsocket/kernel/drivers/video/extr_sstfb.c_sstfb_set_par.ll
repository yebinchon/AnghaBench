; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sstfb.c_sstfb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sstfb.c_sstfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_3__, %struct.sstfb_par* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sstfb_par = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 (%struct.fb_info.0*, i32*, i32)*, i32 (%struct.fb_info.1*, i32)* }
%struct.fb_info.0 = type opaque
%struct.fb_info.1 = type opaque
%struct.pci_dev = type { i32 }

@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"hsync_len hSyncOff vsync_len vSyncOff\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%-7d %-8d %-7d %-8d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"left_margin upper_margin xres yres Freq\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%-10d %-10d %-4d %-4d %-8ld\0A\00", align 1
@NOPCMD = common dso_local global i32 0, align 4
@PCI_INIT_ENABLE = common dso_local global i32 0, align 4
@PCI_EN_INIT_WR = common dso_local global i32 0, align 4
@FBIINIT1 = common dso_local global i32 0, align 4
@VIDEO_RESET = common dso_local global i32 0, align 4
@FBIINIT0 = common dso_local global i32 0, align 4
@FBI_RESET = common dso_local global i32 0, align 4
@FIFO_RESET = common dso_local global i32 0, align 4
@FBIINIT2 = common dso_local global i32 0, align 4
@EN_DRAM_REFRESH = common dso_local global i32 0, align 4
@BACKPORCH = common dso_local global i32 0, align 4
@VIDEODIMENSIONS = common dso_local global i32 0, align 4
@HSYNC = common dso_local global i32 0, align 4
@VSYNC = common dso_local global i32 0, align 4
@FBIINIT3 = common dso_local global i32 0, align 4
@PCI_REMAP_DAC = common dso_local global i32 0, align 4
@VID_CLOCK = common dso_local global i32 0, align 4
@VIDEO_MASK = common dso_local global i32 0, align 4
@EN_DATA_OE = common dso_local global i32 0, align 4
@EN_BLANK_OE = common dso_local global i32 0, align 4
@EN_HVSYNC_OE = common dso_local global i32 0, align 4
@EN_DCLK_OE = common dso_local global i32 0, align 4
@SEL_INPUT_VCLK_2X = common dso_local global i32 0, align 4
@TILES_IN_X_MSB_SHIFT = common dso_local global i32 0, align 4
@TILES_IN_X_SHIFT = common dso_local global i32 0, align 4
@TILES_IN_X_LSB_SHIFT = common dso_local global i32 0, align 4
@SEL_SOURCE_VCLK_2X_SEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FBIINIT6 = common dso_local global i32 0, align 4
@FBIINIT5 = common dso_local global i32 0, align 4
@FBIINIT5_MASK = common dso_local global i32 0, align 4
@INTERLACE = common dso_local global i32 0, align 4
@VDOUBLESCAN = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@HSYNC_HIGH = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@VSYNC_HIGH = common dso_local global i32 0, align 4
@PCI_EN_FIFO_WR = common dso_local global i32 0, align 4
@LFB_565 = common dso_local global i32 0, align 4
@clipping = common dso_local global i64 0, align 8
@LFBMODE = common dso_local global i32 0, align 4
@EN_PXL_PIPELINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"setting clipping dimensions 0..%d, 0..%d\0A\00", align 1
@CLIP_LEFT_RIGHT = common dso_local global i32 0, align 4
@CLIP_LOWY_HIGHY = common dso_local global i32 0, align 4
@FBZMODE = common dso_local global i32 0, align 4
@EN_CLIPPING = common dso_local global i32 0, align 4
@EN_RGB_WRITE = common dso_local global i32 0, align 4
@LFB_BYTE_SWIZZLE_RD = common dso_local global i32 0, align 4
@LFB_BYTE_SWIZZLE_WR = common dso_local global i32 0, align 4
@LFB_WORD_SWIZZLE_RD = common dso_local global i32 0, align 4
@LFB_WORD_SWIZZLE_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @sstfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sstfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.sstfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = load %struct.sstfb_par*, %struct.sstfb_par** %15, align 8
  store %struct.sstfb_par* %16, %struct.sstfb_par** %4, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %18 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %17, i32 0, i32 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %11, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %23, %27
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %28, %32
  %34 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %35 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %41 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %47 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %51, %55
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %56, %60
  %62 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %63 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %69 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PICOS2KHZ(i32 %73)
  %75 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %76 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %75, i32 0, i32 6
  %77 = call i32 @sst_calc_pll(i32 %74, i32* %12, i32* %76)
  %78 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %1
  %86 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %87 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = srem i32 %88, 2
  %90 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %91 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %85, %1
  %95 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %94
  %103 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %104 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %108 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %112 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %116 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %102, %94
  %120 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %121 = call i64 @IS_VOODOO2(%struct.sstfb_par* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 63
  %129 = sdiv i32 %128, 64
  %130 = mul nsw i32 %129, 2
  %131 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %132 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  br label %142

133:                                              ; preds = %119
  %134 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 63
  %139 = sdiv i32 %138, 64
  %140 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %141 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %133, %123
  %143 = call i32 (i8*, ...) @f_ddprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %144 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %149 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %152 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %155 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, ...) @f_ddprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %150, i32 %153, i32 %156)
  %158 = call i32 (i8*, ...) @f_ddprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %159 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %160 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %168 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %172 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %176 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @PICOS2KHZ(i32 %178)
  %180 = call i32 (i8*, ...) @f_ddprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %162, i32 %166, i32 %170, i32 %174, i32 %179)
  %181 = load i32, i32* @NOPCMD, align 4
  %182 = call i32 @sst_write(i32 %181, i32 0)
  %183 = call i32 (...) @sst_wait_idle()
  %184 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %185 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %186 = load i32, i32* @PCI_EN_INIT_WR, align 4
  %187 = call i32 @pci_write_config_dword(%struct.pci_dev* %184, i32 %185, i32 %186)
  %188 = load i32, i32* @FBIINIT1, align 4
  %189 = load i32, i32* @VIDEO_RESET, align 4
  %190 = call i32 @sst_set_bits(i32 %188, i32 %189)
  %191 = load i32, i32* @FBIINIT0, align 4
  %192 = load i32, i32* @FBI_RESET, align 4
  %193 = load i32, i32* @FIFO_RESET, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @sst_set_bits(i32 %191, i32 %194)
  %196 = load i32, i32* @FBIINIT2, align 4
  %197 = load i32, i32* @EN_DRAM_REFRESH, align 4
  %198 = call i32 @sst_unset_bits(i32 %196, i32 %197)
  %199 = call i32 (...) @sst_wait_idle()
  %200 = load i32, i32* @BACKPORCH, align 4
  %201 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %202 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = shl i32 %203, 16
  %205 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %206 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = sub nsw i32 %208, 2
  %210 = or i32 %204, %209
  %211 = call i32 @sst_write(i32 %200, i32 %210)
  %212 = load i32, i32* @VIDEODIMENSIONS, align 4
  %213 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %214 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %215, 16
  %217 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %218 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, 1
  %222 = or i32 %216, %221
  %223 = call i32 @sst_write(i32 %212, i32 %222)
  %224 = load i32, i32* @HSYNC, align 4
  %225 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %226 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %227, 1
  %229 = shl i32 %228, 16
  %230 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %231 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 8
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 1
  %235 = or i32 %229, %234
  %236 = call i32 @sst_write(i32 %224, i32 %235)
  %237 = load i32, i32* @VSYNC, align 4
  %238 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %239 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 %240, 16
  %242 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %243 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %241, %244
  %246 = call i32 @sst_write(i32 %237, i32 %245)
  %247 = load i32, i32* @FBIINIT2, align 4
  %248 = call i32 @sst_read(i32 %247)
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* @FBIINIT3, align 4
  %250 = call i32 @sst_read(i32 %249)
  store i32 %250, i32* %8, align 4
  %251 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %252 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %253 = load i32, i32* @PCI_EN_INIT_WR, align 4
  %254 = load i32, i32* @PCI_REMAP_DAC, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @pci_write_config_dword(%struct.pci_dev* %251, i32 %252, i32 %255)
  %257 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %258 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %257, i32 0, i32 7
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 1
  %260 = load i32 (%struct.fb_info.1*, i32)*, i32 (%struct.fb_info.1*, i32)** %259, align 8
  %261 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %262 = bitcast %struct.fb_info* %261 to %struct.fb_info.1*
  %263 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %264 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 10
  %266 = load i32, i32* %265, align 8
  %267 = call i32 %260(%struct.fb_info.1* %262, i32 %266)
  %268 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %269 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %268, i32 0, i32 7
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32 (%struct.fb_info.0*, i32*, i32)*, i32 (%struct.fb_info.0*, i32*, i32)** %270, align 8
  %272 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %273 = bitcast %struct.fb_info* %272 to %struct.fb_info.0*
  %274 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %275 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %274, i32 0, i32 6
  %276 = load i32, i32* @VID_CLOCK, align 4
  %277 = call i32 %271(%struct.fb_info.0* %273, i32* %275, i32 %276)
  %278 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %279 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %280 = load i32, i32* @PCI_EN_INIT_WR, align 4
  %281 = call i32 @pci_write_config_dword(%struct.pci_dev* %278, i32 %279, i32 %280)
  %282 = load i32, i32* @FBIINIT2, align 4
  %283 = load i32, i32* %7, align 4
  %284 = call i32 @sst_write(i32 %282, i32 %283)
  %285 = load i32, i32* @FBIINIT3, align 4
  %286 = load i32, i32* %8, align 4
  %287 = call i32 @sst_write(i32 %285, i32 %286)
  %288 = load i32, i32* @FBIINIT1, align 4
  %289 = call i32 @sst_read(i32 %288)
  %290 = load i32, i32* @VIDEO_MASK, align 4
  %291 = and i32 %289, %290
  %292 = load i32, i32* @EN_DATA_OE, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* @EN_BLANK_OE, align 4
  %295 = or i32 %293, %294
  %296 = load i32, i32* @EN_HVSYNC_OE, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @EN_DCLK_OE, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @SEL_INPUT_VCLK_2X, align 4
  %301 = or i32 %299, %300
  store i32 %301, i32* %6, align 4
  %302 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %303 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %13, align 4
  %305 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %306 = call i64 @IS_VOODOO2(%struct.sstfb_par* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %326

308:                                              ; preds = %142
  %309 = load i32, i32* %13, align 4
  %310 = and i32 %309, 32
  %311 = ashr i32 %310, 5
  %312 = load i32, i32* @TILES_IN_X_MSB_SHIFT, align 4
  %313 = shl i32 %311, %312
  %314 = load i32, i32* %13, align 4
  %315 = and i32 %314, 30
  %316 = ashr i32 %315, 1
  %317 = load i32, i32* @TILES_IN_X_SHIFT, align 4
  %318 = shl i32 %316, %317
  %319 = or i32 %313, %318
  %320 = load i32, i32* %6, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %6, align 4
  %322 = load i32, i32* %13, align 4
  %323 = and i32 %322, 1
  %324 = load i32, i32* @TILES_IN_X_LSB_SHIFT, align 4
  %325 = shl i32 %323, %324
  store i32 %325, i32* %10, align 4
  br label %332

326:                                              ; preds = %142
  %327 = load i32, i32* %13, align 4
  %328 = load i32, i32* @TILES_IN_X_SHIFT, align 4
  %329 = shl i32 %327, %328
  %330 = load i32, i32* %6, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %6, align 4
  br label %332

332:                                              ; preds = %326, %308
  %333 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %334 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 10
  %336 = load i32, i32* %335, align 8
  switch i32 %336, label %341 [
    i32 16, label %337
  ]

337:                                              ; preds = %332
  %338 = load i32, i32* @SEL_SOURCE_VCLK_2X_SEL, align 4
  %339 = load i32, i32* %6, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %6, align 4
  br label %344

341:                                              ; preds = %332
  %342 = load i32, i32* @EINVAL, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %2, align 4
  br label %476

344:                                              ; preds = %337
  %345 = load i32, i32* @FBIINIT1, align 4
  %346 = load i32, i32* %6, align 4
  %347 = call i32 @sst_write(i32 %345, i32 %346)
  %348 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %349 = call i64 @IS_VOODOO2(%struct.sstfb_par* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %410

351:                                              ; preds = %344
  %352 = load i32, i32* @FBIINIT6, align 4
  %353 = load i32, i32* %10, align 4
  %354 = call i32 @sst_write(i32 %352, i32 %353)
  %355 = load i32, i32* @FBIINIT5, align 4
  %356 = call i32 @sst_read(i32 %355)
  %357 = load i32, i32* @FBIINIT5_MASK, align 4
  %358 = and i32 %356, %357
  store i32 %358, i32* %9, align 4
  %359 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %360 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 7
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %351
  %367 = load i32, i32* @INTERLACE, align 4
  %368 = load i32, i32* %9, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %9, align 4
  br label %370

370:                                              ; preds = %366, %351
  %371 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %372 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %372, i32 0, i32 7
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %370
  %379 = load i32, i32* @VDOUBLESCAN, align 4
  %380 = load i32, i32* %9, align 4
  %381 = or i32 %380, %379
  store i32 %381, i32* %9, align 4
  br label %382

382:                                              ; preds = %378, %370
  %383 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %384 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i32 0, i32 9
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %382
  %391 = load i32, i32* @HSYNC_HIGH, align 4
  %392 = load i32, i32* %9, align 4
  %393 = or i32 %392, %391
  store i32 %393, i32* %9, align 4
  br label %394

394:                                              ; preds = %390, %382
  %395 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %396 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 9
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %394
  %403 = load i32, i32* @VSYNC_HIGH, align 4
  %404 = load i32, i32* %9, align 4
  %405 = or i32 %404, %403
  store i32 %405, i32* %9, align 4
  br label %406

406:                                              ; preds = %402, %394
  %407 = load i32, i32* @FBIINIT5, align 4
  %408 = load i32, i32* %9, align 4
  %409 = call i32 @sst_write(i32 %407, i32 %408)
  br label %410

410:                                              ; preds = %406, %344
  %411 = call i32 (...) @sst_wait_idle()
  %412 = load i32, i32* @FBIINIT1, align 4
  %413 = load i32, i32* @VIDEO_RESET, align 4
  %414 = call i32 @sst_unset_bits(i32 %412, i32 %413)
  %415 = load i32, i32* @FBIINIT0, align 4
  %416 = load i32, i32* @FBI_RESET, align 4
  %417 = load i32, i32* @FIFO_RESET, align 4
  %418 = or i32 %416, %417
  %419 = call i32 @sst_unset_bits(i32 %415, i32 %418)
  %420 = load i32, i32* @FBIINIT2, align 4
  %421 = load i32, i32* @EN_DRAM_REFRESH, align 4
  %422 = call i32 @sst_set_bits(i32 %420, i32 %421)
  %423 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %424 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %425 = load i32, i32* @PCI_EN_FIFO_WR, align 4
  %426 = call i32 @pci_write_config_dword(%struct.pci_dev* %423, i32 %424, i32 %425)
  %427 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %428 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 10
  %430 = load i32, i32* %429, align 8
  switch i32 %430, label %433 [
    i32 16, label %431
  ]

431:                                              ; preds = %410
  %432 = load i32, i32* @LFB_565, align 4
  store i32 %432, i32* %5, align 4
  br label %436

433:                                              ; preds = %410
  %434 = load i32, i32* @EINVAL, align 4
  %435 = sub nsw i32 0, %434
  store i32 %435, i32* %2, align 4
  br label %476

436:                                              ; preds = %431
  %437 = load i64, i64* @clipping, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %471

439:                                              ; preds = %436
  %440 = load i32, i32* @LFBMODE, align 4
  %441 = load i32, i32* %5, align 4
  %442 = load i32, i32* @EN_PXL_PIPELINE, align 4
  %443 = or i32 %441, %442
  %444 = call i32 @sst_write(i32 %440, i32 %443)
  %445 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %446 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = sub nsw i32 %448, 1
  %450 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %451 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = sub nsw i32 %452, 1
  %454 = call i32 (i8*, ...) @f_ddprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %449, i32 %453)
  %455 = load i32, i32* @CLIP_LEFT_RIGHT, align 4
  %456 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %457 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @sst_write(i32 %455, i32 %459)
  %461 = load i32, i32* @CLIP_LOWY_HIGHY, align 4
  %462 = load %struct.sstfb_par*, %struct.sstfb_par** %4, align 8
  %463 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @sst_write(i32 %461, i32 %464)
  %466 = load i32, i32* @FBZMODE, align 4
  %467 = load i32, i32* @EN_CLIPPING, align 4
  %468 = load i32, i32* @EN_RGB_WRITE, align 4
  %469 = or i32 %467, %468
  %470 = call i32 @sst_set_bits(i32 %466, i32 %469)
  br label %475

471:                                              ; preds = %436
  %472 = load i32, i32* @LFBMODE, align 4
  %473 = load i32, i32* %5, align 4
  %474 = call i32 @sst_write(i32 %472, i32 %473)
  br label %475

475:                                              ; preds = %471, %439
  store i32 0, i32* %2, align 4
  br label %476

476:                                              ; preds = %475, %433, %341
  %477 = load i32, i32* %2, align 4
  ret i32 %477
}

declare dso_local i32 @sst_calc_pll(i32, i32*, i32*) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

declare dso_local i64 @IS_VOODOO2(%struct.sstfb_par*) #1

declare dso_local i32 @f_ddprintk(i8*, ...) #1

declare dso_local i32 @sst_write(i32, i32) #1

declare dso_local i32 @sst_wait_idle(...) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @sst_set_bits(i32, i32) #1

declare dso_local i32 @sst_unset_bits(i32, i32) #1

declare dso_local i32 @sst_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
