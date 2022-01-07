; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tdfxfb.c_do_write_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tdfxfb.c_do_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.tdfx_par* }
%struct.tdfx_par = type { i32 }
%struct.banshee_reg = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }

@MISCINIT1 = common dso_local global i32 0, align 4
@VGAINIT1 = common dso_local global i32 0, align 4
@VIDPROCCFG = common dso_local global i32 0, align 4
@PLLCTRL0 = common dso_local global i32 0, align 4
@MISC_W = common dso_local global i32 0, align 4
@VGAINIT0 = common dso_local global i32 0, align 4
@DACMODE = common dso_local global i32 0, align 4
@VIDDESKSTRIDE = common dso_local global i32 0, align 4
@HWCURPATADDR = common dso_local global i32 0, align 4
@VIDSCREENSIZE = common dso_local global i32 0, align 4
@VIDDESKSTART = common dso_local global i32 0, align 4
@MISCINIT0 = common dso_local global i32 0, align 4
@SRCBASE = common dso_local global i32 0, align 4
@DSTBASE = common dso_local global i32 0, align 4
@COMMANDEXTRA_2D = common dso_local global i32 0, align 4
@CLIP0MIN = common dso_local global i32 0, align 4
@CLIP0MAX = common dso_local global i32 0, align 4
@CLIP1MIN = common dso_local global i32 0, align 4
@CLIP1MAX = common dso_local global i32 0, align 4
@SRCXY = common dso_local global i32 0, align 4
@PLLCTRL1 = common dso_local global i32 0, align 4
@PLLCTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.banshee_reg*)* @do_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_write_regs(%struct.fb_info* %0, %struct.banshee_reg* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.banshee_reg*, align 8
  %5 = alloca %struct.tdfx_par*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.banshee_reg* %1, %struct.banshee_reg** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.tdfx_par*, %struct.tdfx_par** %8, align 8
  store %struct.tdfx_par* %9, %struct.tdfx_par** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = call i32 @banshee_wait_idle(%struct.fb_info* %10)
  %12 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %13 = load i32, i32* @MISCINIT1, align 4
  %14 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %15 = load i32, i32* @MISCINIT1, align 4
  %16 = call i32 @tdfx_inl(%struct.tdfx_par* %14, i32 %15)
  %17 = or i32 %16, 1
  %18 = call i32 @tdfx_outl(%struct.tdfx_par* %12, i32 %13, i32 %17)
  %19 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %20 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %21 = call i32 @crt_inb(%struct.tdfx_par* %20, i32 17)
  %22 = and i32 %21, 127
  %23 = call i32 @crt_outb(%struct.tdfx_par* %19, i32 17, i32 %22)
  %24 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %25 = call i32 @banshee_make_room(%struct.tdfx_par* %24, i32 3)
  %26 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %27 = load i32, i32* @VGAINIT1, align 4
  %28 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %29 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 2097151
  %32 = call i32 @tdfx_outl(%struct.tdfx_par* %26, i32 %27, i32 %31)
  %33 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %34 = load i32, i32* @VIDPROCCFG, align 4
  %35 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %36 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -2
  %39 = call i32 @tdfx_outl(%struct.tdfx_par* %33, i32 %34, i32 %38)
  %40 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %41 = load i32, i32* @PLLCTRL0, align 4
  %42 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %43 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @tdfx_outl(%struct.tdfx_par* %40, i32 %41, i32 %44)
  %46 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %47 = load i32, i32* @MISC_W, align 4
  %48 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %49 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 1
  %54 = call i32 @vga_outb(%struct.tdfx_par* %46, i32 %47, i32 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %69, %2
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 5
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %62 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %61, i32 0, i32 17
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @seq_outb(%struct.tdfx_par* %59, i32 %60, i32 %67)
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %55

72:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %87, %72
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 25
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %80 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @crt_outb(%struct.tdfx_par* %77, i32 %78, i32 %85)
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %73

90:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 9
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %98 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %97, i32 0, i32 16
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @gra_outb(%struct.tdfx_par* %95, i32 %96, i32 %103)
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %91

108:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %123, %108
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 21
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %116 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %115, i32 0, i32 15
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @att_outb(%struct.tdfx_par* %113, i32 %114, i32 %121)
  br label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %109

126:                                              ; preds = %109
  %127 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %128 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %129 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %128, i32 0, i32 7
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @crt_outb(%struct.tdfx_par* %127, i32 26, i32 %132)
  %134 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %135 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %136 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %135, i32 0, i32 7
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @crt_outb(%struct.tdfx_par* %134, i32 27, i32 %139)
  %141 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %142 = call i32 @vga_enable_palette(%struct.tdfx_par* %141)
  %143 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %144 = call i32 @vga_enable_video(%struct.tdfx_par* %143)
  %145 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %146 = call i32 @banshee_make_room(%struct.tdfx_par* %145, i32 9)
  %147 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %148 = load i32, i32* @VGAINIT0, align 4
  %149 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %150 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @tdfx_outl(%struct.tdfx_par* %147, i32 %148, i32 %151)
  %153 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %154 = load i32, i32* @DACMODE, align 4
  %155 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %156 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @tdfx_outl(%struct.tdfx_par* %153, i32 %154, i32 %157)
  %159 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %160 = load i32, i32* @VIDDESKSTRIDE, align 4
  %161 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %162 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @tdfx_outl(%struct.tdfx_par* %159, i32 %160, i32 %163)
  %165 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %166 = load i32, i32* @HWCURPATADDR, align 4
  %167 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %168 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @tdfx_outl(%struct.tdfx_par* %165, i32 %166, i32 %169)
  %171 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %172 = load i32, i32* @VIDSCREENSIZE, align 4
  %173 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %174 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @tdfx_outl(%struct.tdfx_par* %171, i32 %172, i32 %175)
  %177 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %178 = load i32, i32* @VIDDESKSTART, align 4
  %179 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %180 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @tdfx_outl(%struct.tdfx_par* %177, i32 %178, i32 %181)
  %183 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %184 = load i32, i32* @VIDPROCCFG, align 4
  %185 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %186 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @tdfx_outl(%struct.tdfx_par* %183, i32 %184, i32 %187)
  %189 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %190 = load i32, i32* @VGAINIT1, align 4
  %191 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %192 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @tdfx_outl(%struct.tdfx_par* %189, i32 %190, i32 %193)
  %195 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %196 = load i32, i32* @MISCINIT0, align 4
  %197 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %198 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %197, i32 0, i32 14
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @tdfx_outl(%struct.tdfx_par* %195, i32 %196, i32 %199)
  %201 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %202 = call i32 @banshee_make_room(%struct.tdfx_par* %201, i32 8)
  %203 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %204 = load i32, i32* @SRCBASE, align 4
  %205 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %206 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %205, i32 0, i32 13
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @tdfx_outl(%struct.tdfx_par* %203, i32 %204, i32 %207)
  %209 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %210 = load i32, i32* @DSTBASE, align 4
  %211 = load %struct.banshee_reg*, %struct.banshee_reg** %4, align 8
  %212 = getelementptr inbounds %struct.banshee_reg, %struct.banshee_reg* %211, i32 0, i32 13
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @tdfx_outl(%struct.tdfx_par* %209, i32 %210, i32 %213)
  %215 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %216 = load i32, i32* @COMMANDEXTRA_2D, align 4
  %217 = call i32 @tdfx_outl(%struct.tdfx_par* %215, i32 %216, i32 0)
  %218 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %219 = load i32, i32* @CLIP0MIN, align 4
  %220 = call i32 @tdfx_outl(%struct.tdfx_par* %218, i32 %219, i32 0)
  %221 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %222 = load i32, i32* @CLIP0MAX, align 4
  %223 = call i32 @tdfx_outl(%struct.tdfx_par* %221, i32 %222, i32 268374015)
  %224 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %225 = load i32, i32* @CLIP1MIN, align 4
  %226 = call i32 @tdfx_outl(%struct.tdfx_par* %224, i32 %225, i32 0)
  %227 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %228 = load i32, i32* @CLIP1MAX, align 4
  %229 = call i32 @tdfx_outl(%struct.tdfx_par* %227, i32 %228, i32 268374015)
  %230 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %231 = load i32, i32* @SRCXY, align 4
  %232 = call i32 @tdfx_outl(%struct.tdfx_par* %230, i32 %231, i32 0)
  %233 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %234 = call i32 @banshee_wait_idle(%struct.fb_info* %233)
  ret void
}

declare dso_local i32 @banshee_wait_idle(%struct.fb_info*) #1

declare dso_local i32 @tdfx_outl(%struct.tdfx_par*, i32, i32) #1

declare dso_local i32 @tdfx_inl(%struct.tdfx_par*, i32) #1

declare dso_local i32 @crt_outb(%struct.tdfx_par*, i32, i32) #1

declare dso_local i32 @crt_inb(%struct.tdfx_par*, i32) #1

declare dso_local i32 @banshee_make_room(%struct.tdfx_par*, i32) #1

declare dso_local i32 @vga_outb(%struct.tdfx_par*, i32, i32) #1

declare dso_local i32 @seq_outb(%struct.tdfx_par*, i32, i32) #1

declare dso_local i32 @gra_outb(%struct.tdfx_par*, i32, i32) #1

declare dso_local i32 @att_outb(%struct.tdfx_par*, i32, i32) #1

declare dso_local i32 @vga_enable_palette(%struct.tdfx_par*) #1

declare dso_local i32 @vga_enable_video(%struct.tdfx_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
