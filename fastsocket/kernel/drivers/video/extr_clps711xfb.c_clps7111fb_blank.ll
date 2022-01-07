; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_clps711xfb.c_clps7111fb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_clps711xfb.c_clps7111fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@PDDR = common dso_local global i32 0, align 4
@EDB_PD3_LCDBL = common dso_local global i32 0, align 4
@EDB_PD1_LCD_DC_DC_EN = common dso_local global i32 0, align 4
@EDB_PD2_LCDEN = common dso_local global i32 0, align 4
@SYSCON1 = common dso_local global i32 0, align 4
@SYSCON1_LCDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @clps7111fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps7111fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %2
  %8 = call i64 (...) @machine_is_edb7211()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = load i32, i32* @PDDR, align 4
  %12 = call i32 @clps_readb(i32 %11)
  %13 = load i32, i32* @EDB_PD3_LCDBL, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load i32, i32* @PDDR, align 4
  %17 = call i32 @clps_writeb(i32 %15, i32 %16)
  %18 = load i32, i32* @PDDR, align 4
  %19 = call i32 @clps_readb(i32 %18)
  %20 = load i32, i32* @EDB_PD1_LCD_DC_DC_EN, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load i32, i32* @PDDR, align 4
  %24 = call i32 @clps_writeb(i32 %22, i32 %23)
  %25 = call i32 @udelay(i32 100)
  %26 = load i32, i32* @PDDR, align 4
  %27 = call i32 @clps_readb(i32 %26)
  %28 = load i32, i32* @EDB_PD2_LCDEN, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* @PDDR, align 4
  %32 = call i32 @clps_writeb(i32 %30, i32 %31)
  %33 = load i32, i32* @SYSCON1, align 4
  %34 = call i32 @clps_readl(i32 %33)
  %35 = load i32, i32* @SYSCON1_LCDEN, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @SYSCON1, align 4
  %39 = call i32 @clps_writel(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %10, %7
  br label %71

41:                                               ; preds = %2
  %42 = call i64 (...) @machine_is_edb7211()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  %45 = load i32, i32* @SYSCON1, align 4
  %46 = call i32 @clps_readl(i32 %45)
  %47 = load i32, i32* @SYSCON1_LCDEN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SYSCON1, align 4
  %50 = call i32 @clps_writel(i32 %48, i32 %49)
  %51 = load i32, i32* @PDDR, align 4
  %52 = call i32 @clps_readb(i32 %51)
  %53 = load i32, i32* @EDB_PD2_LCDEN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PDDR, align 4
  %56 = call i32 @clps_writeb(i32 %54, i32 %55)
  %57 = call i32 @udelay(i32 100)
  %58 = load i32, i32* @PDDR, align 4
  %59 = call i32 @clps_readb(i32 %58)
  %60 = load i32, i32* @EDB_PD1_LCD_DC_DC_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @PDDR, align 4
  %63 = call i32 @clps_writeb(i32 %61, i32 %62)
  %64 = load i32, i32* @PDDR, align 4
  %65 = call i32 @clps_readb(i32 %64)
  %66 = load i32, i32* @EDB_PD3_LCDBL, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @PDDR, align 4
  %69 = call i32 @clps_writeb(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %44, %41
  br label %71

71:                                               ; preds = %70, %40
  ret i32 0
}

declare dso_local i64 @machine_is_edb7211(...) #1

declare dso_local i32 @clps_writeb(i32, i32) #1

declare dso_local i32 @clps_readb(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clps_writel(i32, i32) #1

declare dso_local i32 @clps_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
