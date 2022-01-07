; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_set_memclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_set_memclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2fb_par = type { i32 }

@PM2VR_RD_INDEX_HIGH = common dso_local global i32 0, align 4
@PM2VI_RD_MCLK_CONTROL = common dso_local global i32 0, align 4
@PM2VI_RD_MCLK_PRESCALE = common dso_local global i32 0, align 4
@PM2VI_RD_MCLK_FEEDBACK = common dso_local global i32 0, align 4
@PM2VI_RD_MCLK_POSTSCALE = common dso_local global i32 0, align 4
@PM2I_RD_MEMORY_CLOCK_3 = common dso_local global i32 0, align 4
@PM2I_RD_MEMORY_CLOCK_1 = common dso_local global i32 0, align 4
@PM2I_RD_MEMORY_CLOCK_2 = common dso_local global i32 0, align 4
@PM2I_RD_MEMORY_CLOCK_STATUS = common dso_local global i32 0, align 4
@PM2R_RD_INDEXED_DATA = common dso_local global i32 0, align 4
@PM2F_PLL_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm2fb_par*, i32)* @set_memclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_memclock(%struct.pm2fb_par* %0, i32 %1) #0 {
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
  switch i32 %11, label %107 [
    i32 128, label %12
    i32 129, label %63
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %13, 2
  %15 = call i32 @pm2v_mnp(i32 %14, i8* %6, i8* %7, i8* %8)
  %16 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %17 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %16, i32 12)
  %18 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %19 = load i32, i32* @PM2VR_RD_INDEX_HIGH, align 4
  %20 = load i32, i32* @PM2VI_RD_MCLK_CONTROL, align 4
  %21 = ashr i32 %20, 8
  %22 = call i32 @pm2_WR(%struct.pm2fb_par* %18, i32 %19, i32 %21)
  %23 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %24 = load i32, i32* @PM2VI_RD_MCLK_CONTROL, align 4
  %25 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %23, i32 %24, i32 0)
  %26 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %27 = load i32, i32* @PM2VI_RD_MCLK_PRESCALE, align 4
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %26, i32 %27, i32 %29)
  %31 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %32 = load i32, i32* @PM2VI_RD_MCLK_FEEDBACK, align 4
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %31, i32 %32, i32 %34)
  %36 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %37 = load i32, i32* @PM2VI_RD_MCLK_POSTSCALE, align 4
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %36, i32 %37, i32 %39)
  %41 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %42 = load i32, i32* @PM2VI_RD_MCLK_CONTROL, align 4
  %43 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %41, i32 %42, i32 1)
  %44 = call i32 (...) @rmb()
  store i32 256, i32* %5, align 4
  br label %45

45:                                               ; preds = %56, %12
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %50 = load i32, i32* @PM2VI_RD_MCLK_CONTROL, align 4
  %51 = call i32 @pm2v_RDAC_RD(%struct.pm2fb_par* %49, i32 %50)
  %52 = and i32 %51, 2
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %59

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  br label %45

59:                                               ; preds = %54, %45
  %60 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %61 = load i32, i32* @PM2VR_RD_INDEX_HIGH, align 4
  %62 = call i32 @pm2_WR(%struct.pm2fb_par* %60, i32 %61, i32 0)
  br label %107

63:                                               ; preds = %2
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @pm2_mnp(i32 %64, i8* %6, i8* %7, i8* %8)
  %66 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %67 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %66, i32 10)
  %68 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %69 = load i32, i32* @PM2I_RD_MEMORY_CLOCK_3, align 4
  %70 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %68, i32 %69, i32 6)
  %71 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %72 = load i32, i32* @PM2I_RD_MEMORY_CLOCK_1, align 4
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %71, i32 %72, i32 %74)
  %76 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %77 = load i32, i32* @PM2I_RD_MEMORY_CLOCK_2, align 4
  %78 = load i8, i8* %7, align 1
  %79 = zext i8 %78 to i32
  %80 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %76, i32 %77, i32 %79)
  %81 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %82 = load i32, i32* @PM2I_RD_MEMORY_CLOCK_3, align 4
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 8, %84
  %86 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %81, i32 %82, i32 %85)
  %87 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %88 = load i32, i32* @PM2I_RD_MEMORY_CLOCK_STATUS, align 4
  %89 = call i32 @pm2_RDAC_RD(%struct.pm2fb_par* %87, i32 %88)
  %90 = call i32 (...) @rmb()
  store i32 256, i32* %5, align 4
  br label %91

91:                                               ; preds = %103, %63
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %96 = load i32, i32* @PM2R_RD_INDEXED_DATA, align 4
  %97 = call i32 @pm2_RD(%struct.pm2fb_par* %95, i32 %96)
  %98 = load i32, i32* @PM2F_PLL_LOCKED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %106

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %5, align 4
  br label %91

106:                                              ; preds = %101, %91
  br label %107

107:                                              ; preds = %2, %106, %59
  ret void
}

declare dso_local i32 @pm2v_mnp(i32, i8*, i8*, i8*) #1

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @pm2v_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @pm2v_RDAC_RD(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_mnp(i32, i8*, i8*, i8*) #1

declare dso_local i32 @pm2_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @pm2_RDAC_RD(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_RD(%struct.pm2fb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
