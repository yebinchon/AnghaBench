; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-rc.c_uwb_rc_mac_addr_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-rc.c_uwb_rc_mac_addr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.uwb_dev }
%struct.uwb_dev = type { %struct.uwb_mac_addr, %struct.device }
%struct.uwb_mac_addr = type { i32* }
%struct.device = type { i32 }

@UWB_ADDR_STRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cannot retrieve UWB EUI-48 address: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot set EUI-48 address %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*)* @uwb_rc_mac_addr_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rc_mac_addr_setup(%struct.uwb_rc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.uwb_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uwb_mac_addr, align 8
  %10 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %12 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %15 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %14, i32 0, i32 0
  store %struct.uwb_dev* %15, %struct.uwb_dev** %6, align 8
  %16 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %21 = call i32 @uwb_rc_mac_addr_get(%struct.uwb_rc* %20, %struct.uwb_mac_addr* %9)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %60

29:                                               ; preds = %1
  %30 = call i64 @uwb_mac_addr_unset(%struct.uwb_mac_addr* %9)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = call i64 @uwb_mac_addr_bcast(%struct.uwb_mac_addr* %9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32, %29
  %36 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %9, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 2, i32* %38, align 4
  %39 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %9, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = call i32 @get_random_bytes(i32* %41, i32 7)
  %43 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %44 = call i32 @uwb_rc_mac_addr_set(%struct.uwb_rc* %43, %struct.uwb_mac_addr* %9)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = trunc i64 %17 to i32
  %49 = call i32 @uwb_mac_addr_print(i8* %19, i32 %48, %struct.uwb_mac_addr* %9)
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %60

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.uwb_dev*, %struct.uwb_dev** %6, align 8
  %57 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %56, i32 0, i32 0
  %58 = bitcast %struct.uwb_mac_addr* %57 to i8*
  %59 = bitcast %struct.uwb_mac_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %47, %24
  %61 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uwb_rc_mac_addr_get(%struct.uwb_rc*, %struct.uwb_mac_addr*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i64 @uwb_mac_addr_unset(%struct.uwb_mac_addr*) #2

declare dso_local i64 @uwb_mac_addr_bcast(%struct.uwb_mac_addr*) #2

declare dso_local i32 @get_random_bytes(i32*, i32) #2

declare dso_local i32 @uwb_rc_mac_addr_set(%struct.uwb_rc*, %struct.uwb_mac_addr*) #2

declare dso_local i32 @uwb_mac_addr_print(i8*, i32, %struct.uwb_mac_addr*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
