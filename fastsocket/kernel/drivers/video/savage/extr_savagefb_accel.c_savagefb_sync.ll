; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_accel.c_savagefb_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_accel.c_savagefb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.savagefb_par* }
%struct.savagefb_par = type { i32 (%struct.savagefb_par*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @savagefb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.savagefb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 0
  %6 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  store %struct.savagefb_par* %6, %struct.savagefb_par** %3, align 8
  %7 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %8 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %7, i32 0, i32 0
  %9 = load i32 (%struct.savagefb_par*)*, i32 (%struct.savagefb_par*)** %8, align 8
  %10 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %11 = call i32 %9(%struct.savagefb_par* %10)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
