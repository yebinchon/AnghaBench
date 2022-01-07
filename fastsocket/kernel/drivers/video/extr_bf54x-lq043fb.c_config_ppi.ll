; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bf54x-lq043fb.c_config_ppi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bf54x-lq043fb.c_config_ppi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfin_bf54xfb_info = type { i32 }

@LCD_CLK = common dso_local global i32 0, align 4
@EPPI_FS1W_HBL = common dso_local global i32 0, align 4
@EPPI_FS1P_AVPL = common dso_local global i32 0, align 4
@EPPI_FS2W_LVB = common dso_local global i32 0, align 4
@EPPI_FS2P_LAVF = common dso_local global i32 0, align 4
@EPPI_CLIP = common dso_local global i32 0, align 4
@EPPI_FRAME = common dso_local global i32 0, align 4
@EPPI_LINE = common dso_local global i32 0, align 4
@EPPI_HCOUNT = common dso_local global i32 0, align 4
@EPPI_HDELAY = common dso_local global i32 0, align 4
@EPPI_VCOUNT = common dso_local global i32 0, align 4
@EPPI_VDELAY = common dso_local global i32 0, align 4
@outp_rgb666 = common dso_local global i64 0, align 8
@EPPI_CONTROL = common dso_local global i32 0, align 4
@DLENGTH = common dso_local global i32 0, align 4
@DLEN_18 = common dso_local global i32 0, align 4
@RGB_FMT_EN = common dso_local global i32 0, align 4
@DLEN_24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfin_bf54xfb_info*)* @config_ppi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_ppi(%struct.bfin_bf54xfb_info* %0) #0 {
  %2 = alloca %struct.bfin_bf54xfb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.bfin_bf54xfb_info* %0, %struct.bfin_bf54xfb_info** %2, align 8
  %4 = load i32, i32* @LCD_CLK, align 4
  %5 = call i32 @get_eppi_clkdiv(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @EPPI_FS1W_HBL, align 4
  %7 = call i32 @bfin_write_EPPI0_FS1W_HBL(i32 %6)
  %8 = load i32, i32* @EPPI_FS1P_AVPL, align 4
  %9 = call i32 @bfin_write_EPPI0_FS1P_AVPL(i32 %8)
  %10 = load i32, i32* @EPPI_FS2W_LVB, align 4
  %11 = call i32 @bfin_write_EPPI0_FS2W_LVB(i32 %10)
  %12 = load i32, i32* @EPPI_FS2P_LAVF, align 4
  %13 = call i32 @bfin_write_EPPI0_FS2P_LAVF(i32 %12)
  %14 = load i32, i32* @EPPI_CLIP, align 4
  %15 = call i32 @bfin_write_EPPI0_CLIP(i32 %14)
  %16 = load i32, i32* @EPPI_FRAME, align 4
  %17 = call i32 @bfin_write_EPPI0_FRAME(i32 %16)
  %18 = load i32, i32* @EPPI_LINE, align 4
  %19 = call i32 @bfin_write_EPPI0_LINE(i32 %18)
  %20 = load i32, i32* @EPPI_HCOUNT, align 4
  %21 = call i32 @bfin_write_EPPI0_HCOUNT(i32 %20)
  %22 = load i32, i32* @EPPI_HDELAY, align 4
  %23 = call i32 @bfin_write_EPPI0_HDELAY(i32 %22)
  %24 = load i32, i32* @EPPI_VCOUNT, align 4
  %25 = call i32 @bfin_write_EPPI0_VCOUNT(i32 %24)
  %26 = load i32, i32* @EPPI_VDELAY, align 4
  %27 = call i32 @bfin_write_EPPI0_VDELAY(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @bfin_write_EPPI0_CLKDIV(i32 %28)
  %30 = load i64, i64* @outp_rgb666, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = load i32, i32* @EPPI_CONTROL, align 4
  %34 = load i32, i32* @DLENGTH, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* @DLEN_18, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RGB_FMT_EN, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @bfin_write_EPPI0_CONTROL(i32 %40)
  br label %53

42:                                               ; preds = %1
  %43 = load i32, i32* @EPPI_CONTROL, align 4
  %44 = load i32, i32* @DLENGTH, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* @DLEN_24, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RGB_FMT_EN, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @bfin_write_EPPI0_CONTROL(i32 %51)
  br label %53

53:                                               ; preds = %42, %32
  ret void
}

declare dso_local i32 @get_eppi_clkdiv(i32) #1

declare dso_local i32 @bfin_write_EPPI0_FS1W_HBL(i32) #1

declare dso_local i32 @bfin_write_EPPI0_FS1P_AVPL(i32) #1

declare dso_local i32 @bfin_write_EPPI0_FS2W_LVB(i32) #1

declare dso_local i32 @bfin_write_EPPI0_FS2P_LAVF(i32) #1

declare dso_local i32 @bfin_write_EPPI0_CLIP(i32) #1

declare dso_local i32 @bfin_write_EPPI0_FRAME(i32) #1

declare dso_local i32 @bfin_write_EPPI0_LINE(i32) #1

declare dso_local i32 @bfin_write_EPPI0_HCOUNT(i32) #1

declare dso_local i32 @bfin_write_EPPI0_HDELAY(i32) #1

declare dso_local i32 @bfin_write_EPPI0_VCOUNT(i32) #1

declare dso_local i32 @bfin_write_EPPI0_VDELAY(i32) #1

declare dso_local i32 @bfin_write_EPPI0_CLKDIV(i32) #1

declare dso_local i32 @bfin_write_EPPI0_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
