; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_wss_state_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_wss_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_wss = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp_wss*, i8*)* @wlp_wss_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_wss_state_show(%struct.wlp_wss* %0, i8* %1) #0 {
  %3 = alloca %struct.wlp_wss*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.wlp_wss* %0, %struct.wlp_wss** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.wlp_wss*, %struct.wlp_wss** %3, align 8
  %7 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %6, i32 0, i32 0
  %8 = call i64 @mutex_lock_interruptible(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %22

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load %struct.wlp_wss*, %struct.wlp_wss** %3, align 8
  %15 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wlp_wss_strstate(i32 %16)
  %18 = call i32 @scnprintf(i8* %12, i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.wlp_wss*, %struct.wlp_wss** %3, align 8
  %20 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  br label %22

22:                                               ; preds = %11, %10
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @wlp_wss_strstate(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
