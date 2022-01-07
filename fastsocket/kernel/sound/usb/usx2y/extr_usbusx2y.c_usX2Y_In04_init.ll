; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_In04_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_In04_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usX2Ydev = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i_usX2Y_In04Int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usX2Y_In04_init(%struct.usX2Ydev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usX2Ydev*, align 8
  store %struct.usX2Ydev* %0, %struct.usX2Ydev** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i32 @usb_alloc_urb(i32 0, i32 %4)
  %6 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %7 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = icmp ne i32 %5, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kmalloc(i32 21, i32 %13)
  %15 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %16 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = icmp ne i32 %14, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %20 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_free_urb(i32 %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %12
  %26 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %27 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %26, i32 0, i32 3
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %30 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %33 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %36 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_rcvintpipe(i32 %37, i32 4)
  %39 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %40 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @i_usX2Y_In04Int, align 4
  %43 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %44 = call i32 @usb_fill_int_urb(i32 %31, i32 %34, i32 %38, i32 %41, i32 21, i32 %42, %struct.usX2Ydev* %43, i32 10)
  %45 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %46 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @usb_submit_urb(i32 %47, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %25, %18, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i32, i32, i32, %struct.usX2Ydev*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
