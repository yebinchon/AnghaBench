; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/extr_usb-skeleton.c_skel_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/extr_usb-skeleton.c_skel_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.usb_skel = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @skel_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skel_flush(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_skel*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.usb_skel*
  store %struct.usb_skel* %11, %struct.usb_skel** %6, align 8
  %12 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %13 = icmp eq %struct.usb_skel* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %19 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %22 = call i32 @skel_draw_down(%struct.usb_skel* %21)
  %23 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %24 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %23, i32 0, i32 2
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %27 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %17
  %31 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %32 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EPIPE, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EPIPE, align 4
  %39 = sub nsw i32 0, %38
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %39, %37 ], [ %42, %40 ]
  br label %46

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  store i32 %47, i32* %7, align 4
  %48 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %49 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %51 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %54 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %46, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @skel_draw_down(%struct.usb_skel*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
