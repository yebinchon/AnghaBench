; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bf54x-lq043fb.c_bfin_bf54x_fb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bf54x-lq043fb.c_bfin_bf54x_fb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.bfin_bf54xfb_info* }
%struct.bfin_bf54xfb_info = type { i32, i32 }

@CH_EPPI0 = common dso_local global i32 0, align 4
@EPPI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @bfin_bf54x_fb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_bf54x_fb_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfin_bf54xfb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %7, align 8
  store %struct.bfin_bf54xfb_info* %8, %struct.bfin_bf54xfb_info** %5, align 8
  %9 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %5, align 8
  %10 = getelementptr inbounds %struct.bfin_bf54xfb_info, %struct.bfin_bf54xfb_info* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %5, align 8
  %13 = getelementptr inbounds %struct.bfin_bf54xfb_info, %struct.bfin_bf54xfb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %5, align 8
  %17 = getelementptr inbounds %struct.bfin_bf54xfb_info, %struct.bfin_bf54xfb_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 1
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = call i32 @bfin_write_EPPI0_CONTROL(i32 0)
  %22 = call i32 (...) @SSYNC()
  %23 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %5, align 8
  %24 = call i32 @config_dma(%struct.bfin_bf54xfb_info* %23)
  %25 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %5, align 8
  %26 = call i32 @config_ppi(%struct.bfin_bf54xfb_info* %25)
  %27 = load i32, i32* @CH_EPPI0, align 4
  %28 = call i32 @enable_dma(i32 %27)
  %29 = call i32 (...) @bfin_read_EPPI0_CONTROL()
  %30 = load i32, i32* @EPPI_EN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @bfin_write_EPPI0_CONTROL(i32 %31)
  br label %33

33:                                               ; preds = %20, %2
  %34 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %5, align 8
  %35 = getelementptr inbounds %struct.bfin_bf54xfb_info, %struct.bfin_bf54xfb_info* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock(i32* %35)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bfin_write_EPPI0_CONTROL(i32) #1

declare dso_local i32 @SSYNC(...) #1

declare dso_local i32 @config_dma(%struct.bfin_bf54xfb_info*) #1

declare dso_local i32 @config_ppi(%struct.bfin_bf54xfb_info*) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @bfin_read_EPPI0_CONTROL(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
