; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_port_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_port_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"...power%s ports...\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@SetPortFeature = common dso_local global i32 0, align 4
@ClearPortFeature = common dso_local global i32 0, align 4
@USB_PORT_FEAT_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, i32)* @ehci_port_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_port_power(%struct.oxu_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @HCS_PPC(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @oxu_dbg(%struct.oxu_hcd* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @HCS_N_PORTS(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %35, %12
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %28 = call i32 @oxu_to_hcd(%struct.oxu_hcd* %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @SetPortFeature, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ClearPortFeature, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = call i32 @oxu_hub_control(i32 %28, i32 %36, i32 %37, i32 %38, i32* null, i32 0)
  br label %23

41:                                               ; preds = %23
  %42 = call i32 @msleep(i32 20)
  br label %43

43:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @HCS_PPC(i32) #1

declare dso_local i32 @oxu_dbg(%struct.oxu_hcd*, i8*, i8*) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @oxu_hub_control(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
