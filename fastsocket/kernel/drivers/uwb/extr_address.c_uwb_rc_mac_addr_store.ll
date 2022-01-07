; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_address.c_uwb_rc_mac_addr_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_address.c_uwb_rc_mac_addr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.uwb_dev = type { %struct.uwb_rc* }
%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uwb_mac_addr, i32 }
%struct.uwb_mac_addr = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"%hhx:%hhx:%hhx:%hhx:%hhx:%hhx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"refusing to set multicast MAC address %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @uwb_rc_mac_addr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rc_mac_addr_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uwb_dev*, align 8
  %10 = alloca %struct.uwb_rc*, align 8
  %11 = alloca %struct.uwb_mac_addr, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.uwb_dev* @to_uwb_dev(%struct.device* %13)
  store %struct.uwb_dev* %14, %struct.uwb_dev** %9, align 8
  %15 = load %struct.uwb_dev*, %struct.uwb_dev** %9, align 8
  %16 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %15, i32 0, i32 0
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %16, align 8
  store %struct.uwb_rc* %17, %struct.uwb_rc** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %11, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %11, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %11, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %11, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %11, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %11, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %21, i32* %24, i32* %27, i32* %30, i32* %33, i32* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 6
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %68

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %11, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @is_multicast_ether_addr(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.uwb_rc*, %struct.uwb_rc** %10, align 8
  %50 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %68

56:                                               ; preds = %43
  %57 = load %struct.uwb_rc*, %struct.uwb_rc** %10, align 8
  %58 = call i32 @uwb_rc_mac_addr_set(%struct.uwb_rc* %57, %struct.uwb_mac_addr* %11)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.uwb_rc*, %struct.uwb_rc** %10, align 8
  %63 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = bitcast %struct.uwb_mac_addr* %64 to i8*
  %66 = bitcast %struct.uwb_mac_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  br label %67

67:                                               ; preds = %61, %56
  br label %68

68:                                               ; preds = %67, %48, %40
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  br label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %8, align 8
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i64 [ %73, %71 ], [ %75, %74 ]
  %78 = trunc i64 %77 to i32
  ret i32 %78
}

declare dso_local %struct.uwb_dev* @to_uwb_dev(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @uwb_rc_mac_addr_set(%struct.uwb_rc*, %struct.uwb_mac_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
