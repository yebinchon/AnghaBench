; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xen-fbfront.c_xenfb_event_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xen-fbfront.c_xenfb_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenfb_info = type { i32, %struct.xenfb_page* }
%struct.xenfb_page = type { i64, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xenfb_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenfb_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xenfb_info*, align 8
  %6 = alloca %struct.xenfb_page*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.xenfb_info*
  store %struct.xenfb_info* %8, %struct.xenfb_info** %5, align 8
  %9 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %10 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %9, i32 0, i32 1
  %11 = load %struct.xenfb_page*, %struct.xenfb_page** %10, align 8
  store %struct.xenfb_page* %11, %struct.xenfb_page** %6, align 8
  %12 = load %struct.xenfb_page*, %struct.xenfb_page** %6, align 8
  %13 = getelementptr inbounds %struct.xenfb_page, %struct.xenfb_page* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.xenfb_page*, %struct.xenfb_page** %6, align 8
  %16 = getelementptr inbounds %struct.xenfb_page, %struct.xenfb_page* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %21 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %20, i32 0, i32 1
  %22 = load %struct.xenfb_page*, %struct.xenfb_page** %21, align 8
  %23 = getelementptr inbounds %struct.xenfb_page, %struct.xenfb_page* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %26 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %25, i32 0, i32 1
  %27 = load %struct.xenfb_page*, %struct.xenfb_page** %26, align 8
  %28 = getelementptr inbounds %struct.xenfb_page, %struct.xenfb_page* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  %29 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %30 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @notify_remote_via_irq(i32 %31)
  br label %33

33:                                               ; preds = %19, %2
  %34 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %35 = load i32, i32* @INT_MAX, align 4
  %36 = load i32, i32* @INT_MAX, align 4
  %37 = load i32, i32* @INT_MAX, align 4
  %38 = sub nsw i32 0, %37
  %39 = load i32, i32* @INT_MAX, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i32 @xenfb_refresh(%struct.xenfb_info* %34, i32 %35, i32 %36, i32 %38, i32 %40)
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %42
}

declare dso_local i32 @notify_remote_via_irq(i32) #1

declare dso_local i32 @xenfb_refresh(%struct.xenfb_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
