; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_irq_fifoempty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_irq_fifoempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsotg = type { %struct.s3c_hsotg_ep* }
%struct.s3c_hsotg_ep = type { i64, i32 }

@S3C_HSOTG_EPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsotg*, i32)* @s3c_hsotg_irq_fifoempty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsotg_irq_fifoempty(%struct.s3c_hsotg* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c_hsotg_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s3c_hsotg* %0, %struct.s3c_hsotg** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %49, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @S3C_HSOTG_EPS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %14 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %13, i32 0, i32 0
  %15 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %15, i64 %17
  store %struct.s3c_hsotg_ep* %18, %struct.s3c_hsotg_ep** %5, align 8
  %19 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %20 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %49

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %29 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %37 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %27
  br label %49

41:                                               ; preds = %35, %32
  %42 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %43 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %44 = call i32 @s3c_hsotg_trytx(%struct.s3c_hsotg* %42, %struct.s3c_hsotg_ep* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %52

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %40, %23
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %8

52:                                               ; preds = %47, %8
  ret void
}

declare dso_local i32 @s3c_hsotg_trytx(%struct.s3c_hsotg*, %struct.s3c_hsotg_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
