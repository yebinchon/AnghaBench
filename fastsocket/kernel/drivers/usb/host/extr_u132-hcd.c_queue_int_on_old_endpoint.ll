; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_queue_int_on_old_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_queue_int_on_old_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32 }
%struct.u132_udev = type { i32 }
%struct.urb = type { i32, %struct.u132* }
%struct.usb_device = type { i32 }
%struct.u132_endp = type { i32, i32, i64, i32, %struct.urb**, i64 }
%struct.u132_urbq = type { %struct.urb*, i32 }

@jiffies = common dso_local global i64 0, align 8
@ENDP_QUEUE_SIZE = common dso_local global i64 0, align 8
@ENDP_QUEUE_MASK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, %struct.u132_udev*, %struct.urb*, %struct.usb_device*, %struct.u132_endp*, i32, i32, i32)* @queue_int_on_old_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_int_on_old_endpoint(%struct.u132* %0, %struct.u132_udev* %1, %struct.urb* %2, %struct.usb_device* %3, %struct.u132_endp* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.u132*, align 8
  %11 = alloca %struct.u132_udev*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca %struct.u132_endp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.u132_urbq*, align 8
  store %struct.u132* %0, %struct.u132** %10, align 8
  store %struct.u132_udev* %1, %struct.u132_udev** %11, align 8
  store %struct.urb* %2, %struct.urb** %12, align 8
  store %struct.usb_device* %3, %struct.usb_device** %13, align 8
  store %struct.u132_endp* %4, %struct.u132_endp** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.u132*, %struct.u132** %10, align 8
  %20 = load %struct.urb*, %struct.urb** %12, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 1
  store %struct.u132* %19, %struct.u132** %21, align 8
  %22 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %23 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i64, i64* @jiffies, align 8
  %25 = load %struct.urb*, %struct.urb** %12, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @msecs_to_jiffies(i32 %27)
  %29 = add nsw i64 %24, %28
  %30 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %31 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %30, i32 0, i32 5
  store i64 %29, i64* %31, align 8
  %32 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %33 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* @ENDP_QUEUE_SIZE, align 8
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %8
  %39 = load %struct.urb*, %struct.urb** %12, align 8
  %40 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %41 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %40, i32 0, i32 4
  %42 = load %struct.urb**, %struct.urb*** %41, align 8
  %43 = load i64, i64* @ENDP_QUEUE_MASK, align 8
  %44 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %45 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = sext i32 %46 to i64
  %49 = and i64 %43, %48
  %50 = getelementptr inbounds %struct.urb*, %struct.urb** %42, i64 %49
  store %struct.urb* %39, %struct.urb** %50, align 8
  br label %73

51:                                               ; preds = %8
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call %struct.u132_urbq* @kmalloc(i32 16, i32 %52)
  store %struct.u132_urbq* %53, %struct.u132_urbq** %18, align 8
  %54 = load %struct.u132_urbq*, %struct.u132_urbq** %18, align 8
  %55 = icmp eq %struct.u132_urbq* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %58 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %74

63:                                               ; preds = %51
  %64 = load %struct.u132_urbq*, %struct.u132_urbq** %18, align 8
  %65 = getelementptr inbounds %struct.u132_urbq, %struct.u132_urbq* %64, i32 0, i32 1
  %66 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %67 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %66, i32 0, i32 1
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  %69 = load %struct.urb*, %struct.urb** %12, align 8
  %70 = load %struct.u132_urbq*, %struct.u132_urbq** %18, align 8
  %71 = getelementptr inbounds %struct.u132_urbq, %struct.u132_urbq* %70, i32 0, i32 0
  store %struct.urb* %69, %struct.urb** %71, align 8
  br label %72

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %38
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.u132_urbq* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
