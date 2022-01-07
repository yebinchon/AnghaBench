; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_disconnect_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_disconnect_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsotg = type { i32* }

@S3C_HSOTG_EPS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@disconnect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsotg*)* @s3c_hsotg_disconnect_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsotg_disconnect_irq(%struct.s3c_hsotg* %0) #0 {
  %2 = alloca %struct.s3c_hsotg*, align 8
  %3 = alloca i32, align 4
  store %struct.s3c_hsotg* %0, %struct.s3c_hsotg** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @S3C_HSOTG_EPS, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %10 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %11 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* @ESHUTDOWN, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i32 @kill_all_requests(%struct.s3c_hsotg* %9, i32* %15, i32 %17, i32 1)
  br label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %24 = load i32, i32* @disconnect, align 4
  %25 = call i32 @call_gadget(%struct.s3c_hsotg* %23, i32 %24)
  ret void
}

declare dso_local i32 @kill_all_requests(%struct.s3c_hsotg*, i32*, i32, i32) #1

declare dso_local i32 @call_gadget(%struct.s3c_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
