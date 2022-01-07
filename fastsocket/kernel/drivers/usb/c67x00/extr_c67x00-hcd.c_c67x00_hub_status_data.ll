; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-hcd.c_c67x00_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-hcd.c_c67x00_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.c67x00_hcd = type { %struct.c67x00_sie* }
%struct.c67x00_sie = type { i32 }

@C67X00_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @c67x00_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.c67x00_hcd*, align 8
  %6 = alloca %struct.c67x00_sie*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.c67x00_hcd* @hcd_to_c67x00_hcd(%struct.usb_hcd* %9)
  store %struct.c67x00_hcd* %10, %struct.c67x00_hcd** %5, align 8
  %11 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %5, align 8
  %12 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %11, i32 0, i32 0
  %13 = load %struct.c67x00_sie*, %struct.c67x00_sie** %12, align 8
  store %struct.c67x00_sie* %13, %struct.c67x00_sie** %6, align 8
  %14 = load i8*, i8** %4, align 8
  store i8 0, i8* %14, align 1
  %15 = load %struct.c67x00_sie*, %struct.c67x00_sie** %6, align 8
  %16 = call i32 @c67x00_ll_usb_get_status(%struct.c67x00_sie* %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %36, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @C67X00_PORTS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @PORT_CONNECT_CHANGE(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = or i32 %32, %29
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %30, align 1
  br label %35

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = shl i32 %42, 1
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  ret i32 %50
}

declare dso_local %struct.c67x00_hcd* @hcd_to_c67x00_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @c67x00_ll_usb_get_status(%struct.c67x00_sie*) #1

declare dso_local i32 @PORT_CONNECT_CHANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
