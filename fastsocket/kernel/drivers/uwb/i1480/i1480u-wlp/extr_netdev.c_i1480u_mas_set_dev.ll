; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_netdev.c_i1480u_mas_set_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_netdev.c_i1480u_mas_set_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_dev = type { i32 }
%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.device }
%struct.device = type { i32 }

@UWB_ADDR_STRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Set IP MAS (%s to %s) failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_dev*, %struct.uwb_rc*, i32, i32, i32, i64*)* @i1480u_mas_set_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480u_mas_set_dev(%struct.uwb_dev* %0, %struct.uwb_rc* %1, i32 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.uwb_dev*, align 8
  %8 = alloca %struct.uwb_rc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.uwb_dev* %0, %struct.uwb_dev** %7, align 8
  store %struct.uwb_rc* %1, %struct.uwb_rc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %19 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.device* %20, %struct.device** %14, align 8
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %22 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %23 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i64*, i64** %12, align 8
  %28 = call i32 @i1480u_set_ip_mas(%struct.uwb_rc* %21, i32* %23, i32 %24, i32 %25, i32 %26, i64* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %6
  %32 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %15, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %36 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %17, align 8
  %39 = trunc i64 %33 to i32
  %40 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %41 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @uwb_dev_addr_print(i8* %35, i32 %39, i32* %42)
  %44 = trunc i64 %37 to i32
  %45 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %46 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %45, i32 0, i32 0
  %47 = call i32 @uwb_dev_addr_print(i8* %38, i32 %44, i32* %46)
  %48 = load %struct.device*, %struct.device** %14, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %38, i32 %49)
  %51 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %51)
  br label %52

52:                                               ; preds = %31, %6
  %53 = load i32, i32* %13, align 4
  ret i32 %53
}

declare dso_local i32 @i1480u_set_ip_mas(%struct.uwb_rc*, i32*, i32, i32, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @uwb_dev_addr_print(i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
