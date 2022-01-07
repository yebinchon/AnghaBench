; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xen-fbfront.c_xenfb_handle_resize_dpy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xen-fbfront.c_xenfb_handle_resize_dpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenfb_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenfb_info*)* @xenfb_handle_resize_dpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenfb_handle_resize_dpy(%struct.xenfb_info* %0) #0 {
  %2 = alloca %struct.xenfb_info*, align 8
  %3 = alloca i64, align 8
  store %struct.xenfb_info* %0, %struct.xenfb_info** %2, align 8
  %4 = load %struct.xenfb_info*, %struct.xenfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.xenfb_info*, %struct.xenfb_info** %2, align 8
  %9 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.xenfb_info*, %struct.xenfb_info** %2, align 8
  %14 = call i32 @xenfb_queue_full(%struct.xenfb_info* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load %struct.xenfb_info*, %struct.xenfb_info** %2, align 8
  %18 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.xenfb_info*, %struct.xenfb_info** %2, align 8
  %20 = call i32 @xenfb_do_resize(%struct.xenfb_info* %19)
  br label %21

21:                                               ; preds = %16, %12
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.xenfb_info*, %struct.xenfb_info** %2, align 8
  %24 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %23, i32 0, i32 0
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xenfb_queue_full(%struct.xenfb_info*) #1

declare dso_local i32 @xenfb_do_resize(%struct.xenfb_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
