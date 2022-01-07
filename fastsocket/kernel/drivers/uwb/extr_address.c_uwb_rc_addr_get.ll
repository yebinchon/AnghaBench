; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_address.c_uwb_rc_addr_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_address.c_uwb_rc_addr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_rc_evt_dev_addr_mgmt = type { i32 }
%struct.uwb_dev_addr = type { i32* }
%struct.uwb_mac_addr = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, i8*, i32)* @uwb_rc_addr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rc_addr_get(%struct.uwb_rc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uwb_rc_evt_dev_addr_mgmt, align 4
  %11 = alloca %struct.uwb_dev_addr*, align 8
  %12 = alloca %struct.uwb_mac_addr*, align 8
  %13 = alloca i32*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.uwb_dev_addr*
  store %struct.uwb_dev_addr* %15, %struct.uwb_dev_addr** %11, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.uwb_mac_addr*
  store %struct.uwb_mac_addr* %17, %struct.uwb_mac_addr** %12, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %31 [
    i32 129, label %21
    i32 128, label %25
  ]

21:                                               ; preds = %3
  %22 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %11, align 8
  %23 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %13, align 8
  br label %33

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, 2
  store i32 %27, i32* %9, align 4
  %28 = load %struct.uwb_mac_addr*, %struct.uwb_mac_addr** %12, align 8
  %29 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %59

33:                                               ; preds = %25, %21
  %34 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @uwb_rc_dev_addr_mgmt(%struct.uwb_rc* %34, i32 %35, i32* %36, %struct.uwb_rc_evt_dev_addr_mgmt* %10)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %54 [
    i32 129, label %42
    i32 128, label %48
  ]

42:                                               ; preds = %40
  %43 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %11, align 8
  %44 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.uwb_rc_evt_dev_addr_mgmt, %struct.uwb_rc_evt_dev_addr_mgmt* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32** %44, i32 %46, i32 8)
  br label %56

48:                                               ; preds = %40
  %49 = load %struct.uwb_mac_addr*, %struct.uwb_mac_addr** %12, align 8
  %50 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.uwb_rc_evt_dev_addr_mgmt, %struct.uwb_rc_evt_dev_addr_mgmt* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32** %50, i32 %52, i32 8)
  br label %56

54:                                               ; preds = %40
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %54, %48, %42
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %31
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @uwb_rc_dev_addr_mgmt(%struct.uwb_rc*, i32, i32*, %struct.uwb_rc_evt_dev_addr_mgmt*) #1

declare dso_local i32 @memcpy(i32**, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
