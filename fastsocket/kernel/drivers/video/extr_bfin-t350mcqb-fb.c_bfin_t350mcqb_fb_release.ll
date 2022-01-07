; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bfin-t350mcqb-fb.c_bfin_t350mcqb_fb_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bfin-t350mcqb-fb.c_bfin_t350mcqb_fb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.bfin_t350mcqbfb_info* }
%struct.bfin_t350mcqbfb_info = type { i64, i32, i64 }

@CH_PPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @bfin_t350mcqb_fb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_t350mcqb_fb_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfin_t350mcqbfb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %7, align 8
  store %struct.bfin_t350mcqbfb_info* %8, %struct.bfin_t350mcqbfb_info** %5, align 8
  %9 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %5, align 8
  %10 = getelementptr inbounds %struct.bfin_t350mcqbfb_info, %struct.bfin_t350mcqbfb_info* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %5, align 8
  %13 = getelementptr inbounds %struct.bfin_t350mcqbfb_info, %struct.bfin_t350mcqbfb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %5, align 8
  %17 = getelementptr inbounds %struct.bfin_t350mcqbfb_info, %struct.bfin_t350mcqbfb_info* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %5, align 8
  %19 = getelementptr inbounds %struct.bfin_t350mcqbfb_info, %struct.bfin_t350mcqbfb_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = call i32 (...) @bfin_t350mcqb_disable_ppi()
  %24 = call i32 (...) @SSYNC()
  %25 = load i32, i32* @CH_PPI, align 4
  %26 = call i32 @disable_dma(i32 %25)
  %27 = call i32 (...) @bfin_t350mcqb_stop_timers()
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %5, align 8
  %30 = getelementptr inbounds %struct.bfin_t350mcqbfb_info, %struct.bfin_t350mcqbfb_info* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bfin_t350mcqb_disable_ppi(...) #1

declare dso_local i32 @SSYNC(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @bfin_t350mcqb_stop_timers(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
