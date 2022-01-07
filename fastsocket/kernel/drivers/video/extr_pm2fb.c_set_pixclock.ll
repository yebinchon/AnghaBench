; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_set_pixclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_set_pixclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2fb_par = type { i32 }

@PM2I_RD_PIXEL_CLOCK_A3 = common dso_local global i32 0, align 4
@PM2I_RD_PIXEL_CLOCK_A1 = common dso_local global i32 0, align 4
@PM2I_RD_PIXEL_CLOCK_A2 = common dso_local global i32 0, align 4
@PM2I_RD_PIXEL_CLOCK_STATUS = common dso_local global i32 0, align 4
@PM2R_RD_INDEXED_DATA = common dso_local global i32 0, align 4
@PM2F_PLL_LOCKED = common dso_local global i32 0, align 4
@PM2VR_RD_INDEX_HIGH = common dso_local global i32 0, align 4
@PM2VI_RD_CLK0_PRESCALE = common dso_local global i32 0, align 4
@PM2VI_RD_CLK0_FEEDBACK = common dso_local global i32 0, align 4
@PM2VI_RD_CLK0_POSTSCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm2fb_par*, i32)* @set_pixclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pixclock(%struct.pm2fb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.pm2fb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.pm2fb_par* %0, %struct.pm2fb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %10 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %82 [
    i32 129, label %12
    i32 128, label %56
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pm2_mnp(i32 %13, i8* %6, i8* %7, i8* %8)
  %15 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %16 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %15, i32 10)
  %17 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %18 = load i32, i32* @PM2I_RD_PIXEL_CLOCK_A3, align 4
  %19 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %17, i32 %18, i32 0)
  %20 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %21 = load i32, i32* @PM2I_RD_PIXEL_CLOCK_A1, align 4
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %20, i32 %21, i32 %23)
  %25 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %26 = load i32, i32* @PM2I_RD_PIXEL_CLOCK_A2, align 4
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %25, i32 %26, i32 %28)
  %30 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %31 = load i32, i32* @PM2I_RD_PIXEL_CLOCK_A3, align 4
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 8, %33
  %35 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %30, i32 %31, i32 %34)
  %36 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %37 = load i32, i32* @PM2I_RD_PIXEL_CLOCK_STATUS, align 4
  %38 = call i32 @pm2_RDAC_RD(%struct.pm2fb_par* %36, i32 %37)
  %39 = call i32 (...) @rmb()
  store i32 256, i32* %5, align 4
  br label %40

40:                                               ; preds = %52, %12
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %45 = load i32, i32* @PM2R_RD_INDEXED_DATA, align 4
  %46 = call i32 @pm2_RD(%struct.pm2fb_par* %44, i32 %45)
  %47 = load i32, i32* @PM2F_PLL_LOCKED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %55

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  br label %40

55:                                               ; preds = %50, %40
  br label %82

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = sdiv i32 %57, 2
  %59 = call i32 @pm2v_mnp(i32 %58, i8* %6, i8* %7, i8* %8)
  %60 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %61 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %60, i32 8)
  %62 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %63 = load i32, i32* @PM2VR_RD_INDEX_HIGH, align 4
  %64 = load i32, i32* @PM2VI_RD_CLK0_PRESCALE, align 4
  %65 = ashr i32 %64, 8
  %66 = call i32 @pm2_WR(%struct.pm2fb_par* %62, i32 %63, i32 %65)
  %67 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %68 = load i32, i32* @PM2VI_RD_CLK0_PRESCALE, align 4
  %69 = load i8, i8* %6, align 1
  %70 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %67, i32 %68, i8 zeroext %69)
  %71 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %72 = load i32, i32* @PM2VI_RD_CLK0_FEEDBACK, align 4
  %73 = load i8, i8* %7, align 1
  %74 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %71, i32 %72, i8 zeroext %73)
  %75 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %76 = load i32, i32* @PM2VI_RD_CLK0_POSTSCALE, align 4
  %77 = load i8, i8* %8, align 1
  %78 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %75, i32 %76, i8 zeroext %77)
  %79 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %80 = load i32, i32* @PM2VR_RD_INDEX_HIGH, align 4
  %81 = call i32 @pm2_WR(%struct.pm2fb_par* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %2, %56, %55
  ret void
}

declare dso_local i32 @pm2_mnp(i32, i8*, i8*, i8*) #1

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @pm2_RDAC_RD(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @pm2_RD(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2v_mnp(i32, i8*, i8*, i8*) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @pm2v_RDAC_WR(%struct.pm2fb_par*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
