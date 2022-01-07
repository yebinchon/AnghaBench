; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_wss_properties_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_wss_properties_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_wss = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp_wss*, i8*)* @wlp_wss_properties_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_wss_properties_show(%struct.wlp_wss* %0, i8* %1) #0 {
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
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.wlp_wss*, %struct.wlp_wss** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i32 @__wlp_wss_properties_show(%struct.wlp_wss* %12, i8* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.wlp_wss*, %struct.wlp_wss** %3, align 8
  %17 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @__wlp_wss_properties_show(%struct.wlp_wss*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
