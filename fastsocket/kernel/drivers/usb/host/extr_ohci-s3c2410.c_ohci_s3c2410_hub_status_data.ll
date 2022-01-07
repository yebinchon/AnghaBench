; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-s3c2410.c_ohci_s3c2410_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-s3c2410.c_ohci_s3c2410_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.s3c2410_hcd_info = type { %struct.s3c2410_hcd_port* }
%struct.s3c2410_hcd_port = type { i32, i32 }

@S3C_HCDFLG_USED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"oc change on port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @ohci_s3c2410_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_s3c2410_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s3c2410_hcd_info*, align 8
  %7 = alloca %struct.s3c2410_hcd_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = call %struct.s3c2410_hcd_info* @to_s3c2410_info(%struct.usb_hcd* %10)
  store %struct.s3c2410_hcd_info* %11, %struct.s3c2410_hcd_info** %6, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @ohci_hub_status_data(%struct.usb_hcd* %12, i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %6, align 8
  %16 = icmp eq %struct.s3c2410_hcd_info* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %6, align 8
  %21 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %20, i32 0, i32 0
  %22 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %21, align 8
  %23 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %22, i64 0
  store %struct.s3c2410_hcd_port* %23, %struct.s3c2410_hcd_port** %7, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %60, %19
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %65

27:                                               ; preds = %24
  %28 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %7, align 8
  %29 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %59

32:                                               ; preds = %27
  %33 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %7, align 8
  %34 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @S3C_HCDFLG_USED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %32
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  %52 = shl i32 1, %51
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = or i32 %56, %52
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  br label %59

59:                                               ; preds = %49, %32, %27
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %7, align 8
  %62 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %61, i32 1
  store %struct.s3c2410_hcd_port* %62, %struct.s3c2410_hcd_port** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %24

65:                                               ; preds = %24
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %17
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.s3c2410_hcd_info* @to_s3c2410_info(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_hub_status_data(%struct.usb_hcd*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
