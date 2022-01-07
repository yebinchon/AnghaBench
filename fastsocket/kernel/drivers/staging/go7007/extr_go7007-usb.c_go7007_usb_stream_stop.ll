; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-usb.c_go7007_usb_stream_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-usb.c_go7007_usb_stream_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i64, i64, %struct.go7007_usb* }
%struct.go7007_usb = type { i32*, i32* }

@STATUS_SHUTDOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*)* @go7007_usb_stream_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_usb_stream_stop(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.go7007_usb*, align 8
  %5 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  %6 = load %struct.go7007*, %struct.go7007** %3, align 8
  %7 = getelementptr inbounds %struct.go7007, %struct.go7007* %6, i32 0, i32 2
  %8 = load %struct.go7007_usb*, %struct.go7007_usb** %7, align 8
  store %struct.go7007_usb* %8, %struct.go7007_usb** %4, align 8
  %9 = load %struct.go7007*, %struct.go7007** %3, align 8
  %10 = getelementptr inbounds %struct.go7007, %struct.go7007* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STATUS_SHUTDOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %21 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_kill_urb(i32 %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load %struct.go7007*, %struct.go7007** %3, align 8
  %33 = getelementptr inbounds %struct.go7007, %struct.go7007* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %42 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_kill_urb(i32 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %37

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %31
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
