; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_init_vgachip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_init_vgachip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cirrusfb_board_info_rec = type { i32, i64 }
%struct.fb_info = type { i64, i32, %struct.cirrusfb_info* }
%struct.cirrusfb_info = type { i64, i32 }

@cirrusfb_board_info = common dso_local global %struct.cirrusfb_board_info_rec* null, align 8
@CL_CRT51 = common dso_local global i32 0, align 4
@CL_GR31 = common dso_local global i32 0, align 4
@CL_GR2F = common dso_local global i32 0, align 4
@CL_GR33 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Warning: Unknown board type\0A\00", align 1
@CL_VSSM = common dso_local global i32 0, align 4
@CL_POS102 = common dso_local global i32 0, align 4
@CL_VSSM2 = common dso_local global i32 0, align 4
@VGA_SEQ_RESET = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_MODE = common dso_local global i32 0, align 4
@CL_SEQR6 = common dso_local global i32 0, align 4
@CL_SEQRF = common dso_local global i32 0, align 4
@CL_SEQR16 = common dso_local global i32 0, align 4
@VGA_SEQ_PLANE_WRITE = common dso_local global i32 0, align 4
@VGA_SEQ_CHARACTER_MAP = common dso_local global i32 0, align 4
@VGA_SEQ_MEMORY_MODE = common dso_local global i32 0, align 4
@CL_SEQR7 = common dso_local global i32 0, align 4
@CL_SEQR10 = common dso_local global i32 0, align 4
@CL_SEQR11 = common dso_local global i32 0, align 4
@CL_SEQR12 = common dso_local global i32 0, align 4
@CL_SEQR13 = common dso_local global i32 0, align 4
@CL_SEQR17 = common dso_local global i32 0, align 4
@CL_SEQR18 = common dso_local global i32 0, align 4
@VGA_CRTC_PRESET_ROW = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_START = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_END = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_HI = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_LO = common dso_local global i32 0, align 4
@VGA_CRTC_UNDERLINE = common dso_local global i32 0, align 4
@CL_CRT1B = common dso_local global i32 0, align 4
@VGA_GFX_SR_VALUE = common dso_local global i32 0, align 4
@VGA_GFX_SR_ENABLE = common dso_local global i32 0, align 4
@VGA_GFX_COMPARE_VALUE = common dso_local global i32 0, align 4
@VGA_GFX_DATA_ROTATE = common dso_local global i32 0, align 4
@VGA_GFX_PLANE_READ = common dso_local global i32 0, align 4
@VGA_GFX_MODE = common dso_local global i32 0, align 4
@VGA_GFX_MISC = common dso_local global i32 0, align 4
@VGA_GFX_COMPARE_MASK = common dso_local global i32 0, align 4
@VGA_GFX_BIT_MASK = common dso_local global i32 0, align 4
@CL_GRB = common dso_local global i32 0, align 4
@CL_GRC = common dso_local global i32 0, align 4
@CL_GRD = common dso_local global i32 0, align 4
@CL_GRE = common dso_local global i32 0, align 4
@VGA_ATC_PALETTE0 = common dso_local global i32 0, align 4
@VGA_ATC_PALETTE1 = common dso_local global i32 0, align 4
@VGA_ATC_PALETTE2 = common dso_local global i32 0, align 4
@VGA_ATC_PALETTE3 = common dso_local global i32 0, align 4
@VGA_ATC_PALETTE4 = common dso_local global i32 0, align 4
@VGA_ATC_PALETTE5 = common dso_local global i32 0, align 4
@VGA_ATC_PALETTE6 = common dso_local global i32 0, align 4
@VGA_ATC_PALETTE7 = common dso_local global i32 0, align 4
@VGA_ATC_PALETTE8 = common dso_local global i32 0, align 4
@VGA_ATC_PALETTE9 = common dso_local global i32 0, align 4
@VGA_ATC_PALETTEA = common dso_local global i32 0, align 4
@VGA_ATC_PALETTEB = common dso_local global i32 0, align 4
@VGA_ATC_PALETTEC = common dso_local global i32 0, align 4
@VGA_ATC_PALETTED = common dso_local global i32 0, align 4
@VGA_ATC_PALETTEE = common dso_local global i32 0, align 4
@VGA_ATC_PALETTEF = common dso_local global i32 0, align 4
@VGA_ATC_MODE = common dso_local global i32 0, align 4
@VGA_ATC_OVERSCAN = common dso_local global i32 0, align 4
@VGA_ATC_PLANE_ENABLE = common dso_local global i32 0, align 4
@VGA_ATC_COLOR_PAGE = common dso_local global i32 0, align 4
@VGA_PEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @init_vgachip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vgachip(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.cirrusfb_info*, align 8
  %4 = alloca %struct.cirrusfb_board_info_rec*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 2
  %7 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  store %struct.cirrusfb_info* %7, %struct.cirrusfb_info** %3, align 8
  %8 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %9 = icmp ne %struct.cirrusfb_info* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.cirrusfb_board_info_rec*, %struct.cirrusfb_board_info_rec** @cirrusfb_board_info, align 8
  %13 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %14 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.cirrusfb_board_info_rec, %struct.cirrusfb_board_info_rec* %12, i64 %15
  store %struct.cirrusfb_board_info_rec* %16, %struct.cirrusfb_board_info_rec** %4, align 8
  %17 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %18 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  switch i64 %19, label %63 [
    i64 130, label %20
    i64 132, label %27
    i64 129, label %31
    i64 128, label %31
    i64 131, label %38
    i64 135, label %50
    i64 136, label %56
    i64 134, label %62
    i64 133, label %62
  ]

20:                                               ; preds = %1
  %21 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %22 = call i32 @WSFR(%struct.cirrusfb_info* %21, i32 1)
  %23 = call i32 @udelay(i32 500)
  %24 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %25 = call i32 @WSFR(%struct.cirrusfb_info* %24, i32 81)
  %26 = call i32 @udelay(i32 500)
  br label %68

27:                                               ; preds = %1
  %28 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %29 = call i32 @WSFR2(%struct.cirrusfb_info* %28, i32 255)
  %30 = call i32 @udelay(i32 500)
  br label %68

31:                                               ; preds = %1, %1
  %32 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %33 = call i32 @WSFR(%struct.cirrusfb_info* %32, i32 31)
  %34 = call i32 @udelay(i32 500)
  %35 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %36 = call i32 @WSFR(%struct.cirrusfb_info* %35, i32 79)
  %37 = call i32 @udelay(i32 500)
  br label %68

38:                                               ; preds = %1
  %39 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %40 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CL_CRT51, align 4
  %43 = call i32 @vga_wcrt(i32 %41, i32 %42, i32 0)
  %44 = call i32 @mdelay(i32 100)
  %45 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %46 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CL_GR31, align 4
  %49 = call i32 @vga_wgfx(i32 %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %1, %38
  %51 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %52 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CL_GR2F, align 4
  %55 = call i32 @vga_wgfx(i32 %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %1, %50
  %57 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %58 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CL_GR33, align 4
  %61 = call i32 @vga_wgfx(i32 %59, i32 %60, i32 0)
  br label %68

62:                                               ; preds = %1, %1
  br label %68

63:                                               ; preds = %1
  %64 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %62, %56, %31, %27, %20
  %69 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %76 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 131
  br i1 %78, label %79, label %136

79:                                               ; preds = %68
  %80 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %81 = load i32, i32* @CL_VSSM, align 4
  %82 = call i32 @WGen(%struct.cirrusfb_info* %80, i32 %81, i32 16)
  %83 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %84 = load i32, i32* @CL_POS102, align 4
  %85 = call i32 @WGen(%struct.cirrusfb_info* %83, i32 %84, i32 1)
  %86 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %87 = load i32, i32* @CL_VSSM, align 4
  %88 = call i32 @WGen(%struct.cirrusfb_info* %86, i32 %87, i32 8)
  %89 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %90 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 129
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %95 = load i32, i32* @CL_VSSM2, align 4
  %96 = call i32 @WGen(%struct.cirrusfb_info* %94, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %93, %79
  %98 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %99 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @VGA_SEQ_RESET, align 4
  %102 = call i32 @vga_wseq(i32 %100, i32 %101, i32 3)
  %103 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %104 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @VGA_SEQ_CLOCK_MODE, align 4
  %107 = call i32 @vga_wseq(i32 %105, i32 %106, i32 33)
  %108 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %109 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CL_SEQR6, align 4
  %112 = call i32 @vga_wseq(i32 %110, i32 %111, i32 18)
  %113 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %114 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  switch i64 %115, label %124 [
    i64 135, label %116
    i64 136, label %122
    i64 134, label %122
    i64 133, label %122
    i64 129, label %123
  ]

116:                                              ; preds = %97
  %117 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %118 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CL_SEQRF, align 4
  %121 = call i32 @vga_wseq(i32 %119, i32 %120, i32 152)
  br label %135

122:                                              ; preds = %97, %97, %97
  br label %135

123:                                              ; preds = %97
  br label %135

124:                                              ; preds = %97
  %125 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %126 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CL_SEQR16, align 4
  %129 = call i32 @vga_wseq(i32 %127, i32 %128, i32 15)
  %130 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %131 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CL_SEQRF, align 4
  %134 = call i32 @vga_wseq(i32 %132, i32 %133, i32 176)
  br label %135

135:                                              ; preds = %124, %123, %122, %116
  br label %136

136:                                              ; preds = %135, %68
  %137 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %138 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @VGA_SEQ_PLANE_WRITE, align 4
  %141 = call i32 @vga_wseq(i32 %139, i32 %140, i32 255)
  %142 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %143 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @VGA_SEQ_CHARACTER_MAP, align 4
  %146 = call i32 @vga_wseq(i32 %144, i32 %145, i32 0)
  %147 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %148 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @VGA_SEQ_MEMORY_MODE, align 4
  %151 = call i32 @vga_wseq(i32 %149, i32 %150, i32 10)
  %152 = load %struct.cirrusfb_board_info_rec*, %struct.cirrusfb_board_info_rec** %4, align 8
  %153 = getelementptr inbounds %struct.cirrusfb_board_info_rec, %struct.cirrusfb_board_info_rec* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %136
  %157 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %158 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @CL_SEQR7, align 4
  %161 = load %struct.cirrusfb_board_info_rec*, %struct.cirrusfb_board_info_rec** %4, align 8
  %162 = getelementptr inbounds %struct.cirrusfb_board_info_rec, %struct.cirrusfb_board_info_rec* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @vga_wseq(i32 %159, i32 %160, i32 %163)
  br label %165

165:                                              ; preds = %156, %136
  %166 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %167 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @CL_SEQR10, align 4
  %170 = call i32 @vga_wseq(i32 %168, i32 %169, i32 0)
  %171 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %172 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @CL_SEQR11, align 4
  %175 = call i32 @vga_wseq(i32 %173, i32 %174, i32 0)
  %176 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %177 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @CL_SEQR12, align 4
  %180 = call i32 @vga_wseq(i32 %178, i32 %179, i32 0)
  %181 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %182 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @CL_SEQR13, align 4
  %185 = call i32 @vga_wseq(i32 %183, i32 %184, i32 0)
  %186 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %187 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 131
  br i1 %189, label %190, label %201

190:                                              ; preds = %165
  %191 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %192 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @CL_SEQR17, align 4
  %195 = call i32 @vga_wseq(i32 %193, i32 %194, i32 0)
  %196 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %197 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @CL_SEQR18, align 4
  %200 = call i32 @vga_wseq(i32 %198, i32 %199, i32 2)
  br label %201

201:                                              ; preds = %190, %165
  %202 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %203 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @VGA_CRTC_PRESET_ROW, align 4
  %206 = call i32 @vga_wcrt(i32 %204, i32 %205, i32 0)
  %207 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %208 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @VGA_CRTC_CURSOR_START, align 4
  %211 = call i32 @vga_wcrt(i32 %209, i32 %210, i32 32)
  %212 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %213 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @VGA_CRTC_CURSOR_END, align 4
  %216 = call i32 @vga_wcrt(i32 %214, i32 %215, i32 0)
  %217 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %218 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @VGA_CRTC_CURSOR_HI, align 4
  %221 = call i32 @vga_wcrt(i32 %219, i32 %220, i32 0)
  %222 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %223 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @VGA_CRTC_CURSOR_LO, align 4
  %226 = call i32 @vga_wcrt(i32 %224, i32 %225, i32 0)
  %227 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %228 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @VGA_CRTC_UNDERLINE, align 4
  %231 = call i32 @vga_wcrt(i32 %229, i32 %230, i32 0)
  %232 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %233 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @CL_CRT1B, align 4
  %236 = call i32 @vga_wcrt(i32 %234, i32 %235, i32 2)
  %237 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %238 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @VGA_GFX_SR_VALUE, align 4
  %241 = call i32 @vga_wgfx(i32 %239, i32 %240, i32 0)
  %242 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %243 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @VGA_GFX_SR_ENABLE, align 4
  %246 = call i32 @vga_wgfx(i32 %244, i32 %245, i32 0)
  %247 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %248 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @VGA_GFX_COMPARE_VALUE, align 4
  %251 = call i32 @vga_wgfx(i32 %249, i32 %250, i32 0)
  %252 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %253 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @VGA_GFX_DATA_ROTATE, align 4
  %256 = call i32 @vga_wgfx(i32 %254, i32 %255, i32 0)
  %257 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %258 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @VGA_GFX_PLANE_READ, align 4
  %261 = call i32 @vga_wgfx(i32 %259, i32 %260, i32 0)
  %262 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %263 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @VGA_GFX_MODE, align 4
  %266 = call i32 @vga_wgfx(i32 %264, i32 %265, i32 0)
  %267 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %268 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @VGA_GFX_MISC, align 4
  %271 = call i32 @vga_wgfx(i32 %269, i32 %270, i32 1)
  %272 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %273 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @VGA_GFX_COMPARE_MASK, align 4
  %276 = call i32 @vga_wgfx(i32 %274, i32 %275, i32 15)
  %277 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %278 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @VGA_GFX_BIT_MASK, align 4
  %281 = call i32 @vga_wgfx(i32 %279, i32 %280, i32 255)
  %282 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %283 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp eq i64 %284, 136
  br i1 %285, label %295, label %286

286:                                              ; preds = %201
  %287 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %288 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %289, 129
  br i1 %290, label %295, label %291

291:                                              ; preds = %286
  %292 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %293 = call i64 @is_laguna(%struct.cirrusfb_info* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %291, %286, %201
  %296 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %297 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @CL_GRB, align 4
  %300 = call i32 @vga_wgfx(i32 %298, i32 %299, i32 32)
  br label %307

301:                                              ; preds = %291
  %302 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %303 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @CL_GRB, align 4
  %306 = call i32 @vga_wgfx(i32 %304, i32 %305, i32 40)
  br label %307

307:                                              ; preds = %301, %295
  %308 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %309 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @CL_GRC, align 4
  %312 = call i32 @vga_wgfx(i32 %310, i32 %311, i32 255)
  %313 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %314 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @CL_GRD, align 4
  %317 = call i32 @vga_wgfx(i32 %315, i32 %316, i32 0)
  %318 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %319 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @CL_GRE, align 4
  %322 = call i32 @vga_wgfx(i32 %320, i32 %321, i32 0)
  %323 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %324 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @VGA_ATC_PALETTE0, align 4
  %327 = call i32 @vga_wattr(i32 %325, i32 %326, i32 0)
  %328 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %329 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @VGA_ATC_PALETTE1, align 4
  %332 = call i32 @vga_wattr(i32 %330, i32 %331, i32 1)
  %333 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %334 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @VGA_ATC_PALETTE2, align 4
  %337 = call i32 @vga_wattr(i32 %335, i32 %336, i32 2)
  %338 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %339 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @VGA_ATC_PALETTE3, align 4
  %342 = call i32 @vga_wattr(i32 %340, i32 %341, i32 3)
  %343 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %344 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @VGA_ATC_PALETTE4, align 4
  %347 = call i32 @vga_wattr(i32 %345, i32 %346, i32 4)
  %348 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %349 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @VGA_ATC_PALETTE5, align 4
  %352 = call i32 @vga_wattr(i32 %350, i32 %351, i32 5)
  %353 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %354 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @VGA_ATC_PALETTE6, align 4
  %357 = call i32 @vga_wattr(i32 %355, i32 %356, i32 6)
  %358 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %359 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @VGA_ATC_PALETTE7, align 4
  %362 = call i32 @vga_wattr(i32 %360, i32 %361, i32 7)
  %363 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %364 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @VGA_ATC_PALETTE8, align 4
  %367 = call i32 @vga_wattr(i32 %365, i32 %366, i32 8)
  %368 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %369 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @VGA_ATC_PALETTE9, align 4
  %372 = call i32 @vga_wattr(i32 %370, i32 %371, i32 9)
  %373 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %374 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @VGA_ATC_PALETTEA, align 4
  %377 = call i32 @vga_wattr(i32 %375, i32 %376, i32 10)
  %378 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %379 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @VGA_ATC_PALETTEB, align 4
  %382 = call i32 @vga_wattr(i32 %380, i32 %381, i32 11)
  %383 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %384 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @VGA_ATC_PALETTEC, align 4
  %387 = call i32 @vga_wattr(i32 %385, i32 %386, i32 12)
  %388 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %389 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @VGA_ATC_PALETTED, align 4
  %392 = call i32 @vga_wattr(i32 %390, i32 %391, i32 13)
  %393 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %394 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @VGA_ATC_PALETTEE, align 4
  %397 = call i32 @vga_wattr(i32 %395, i32 %396, i32 14)
  %398 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %399 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @VGA_ATC_PALETTEF, align 4
  %402 = call i32 @vga_wattr(i32 %400, i32 %401, i32 15)
  %403 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %404 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @VGA_ATC_MODE, align 4
  %407 = call i32 @vga_wattr(i32 %405, i32 %406, i32 1)
  %408 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %409 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @VGA_ATC_OVERSCAN, align 4
  %412 = call i32 @vga_wattr(i32 %410, i32 %411, i32 0)
  %413 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %414 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @VGA_ATC_PLANE_ENABLE, align 4
  %417 = call i32 @vga_wattr(i32 %415, i32 %416, i32 15)
  %418 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %419 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @VGA_ATC_COLOR_PAGE, align 4
  %422 = call i32 @vga_wattr(i32 %420, i32 %421, i32 0)
  %423 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %424 = load i32, i32* @VGA_PEL_MSK, align 4
  %425 = call i32 @WGen(%struct.cirrusfb_info* %423, i32 %424, i32 255)
  %426 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %427 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @CL_GR31, align 4
  %430 = call i32 @vga_wgfx(i32 %428, i32 %429, i32 4)
  %431 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %432 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @CL_GR31, align 4
  %435 = call i32 @vga_wgfx(i32 %433, i32 %434, i32 0)
  %436 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %437 = call i32 @WHDR(%struct.cirrusfb_info* %436, i32 0)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WSFR(%struct.cirrusfb_info*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WSFR2(%struct.cirrusfb_info*, i32) #1

declare dso_local i32 @vga_wcrt(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @vga_wgfx(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @WGen(%struct.cirrusfb_info*, i32, i32) #1

declare dso_local i32 @vga_wseq(i32, i32, i32) #1

declare dso_local i64 @is_laguna(%struct.cirrusfb_info*) #1

declare dso_local i32 @vga_wattr(i32, i32, i32) #1

declare dso_local i32 @WHDR(%struct.cirrusfb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
