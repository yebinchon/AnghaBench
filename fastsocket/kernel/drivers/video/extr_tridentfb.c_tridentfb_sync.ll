; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_tridentfb_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_tridentfb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.tridentfb_par* }
%struct.tridentfb_par = type { i32 (%struct.tridentfb_par*)* }

@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @tridentfb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tridentfb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.tridentfb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 1
  %6 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  store %struct.tridentfb_par* %6, %struct.tridentfb_par** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %15 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %14, i32 0, i32 0
  %16 = load i32 (%struct.tridentfb_par*)*, i32 (%struct.tridentfb_par*)** %15, align 8
  %17 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %18 = call i32 %16(%struct.tridentfb_par* %17)
  br label %19

19:                                               ; preds = %13, %1
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
