; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_netlink.c_ieee802154_nl_get_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_netlink.c_ieee802154_nl_get_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.genl_info = type { i64* }

@IEEE802154_ATTR_DEV_NAME = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@IEEE802154_ATTR_DEV_INDEX = common dso_local global i64 0, align 8
@ARPHRD_IEEE802154 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.genl_info*)* @ieee802154_nl_get_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.genl_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.genl_info* %0, %struct.genl_info** %3, align 8
  %7 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %8 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @IEEE802154_ATTR_DEV_NAME, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load i32, i32* @IFNAMSIZ, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @IEEE802154_ATTR_DEV_NAME, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %17 to i32
  %27 = call i32 @nla_strlcpy(i8* %19, i64 %25, i32 %26)
  %28 = call %struct.net_device* @dev_get_by_name(i32* @init_net, i8* %19)
  store %struct.net_device* %28, %struct.net_device** %4, align 8
  %29 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %29)
  br label %49

30:                                               ; preds = %1
  %31 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @IEEE802154_ATTR_DEV_INDEX, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @IEEE802154_ATTR_DEV_INDEX, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @nla_get_u32(i64 %44)
  %46 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %45)
  store %struct.net_device* %46, %struct.net_device** %4, align 8
  br label %48

47:                                               ; preds = %30
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %64

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %14
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = icmp ne %struct.net_device* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %64

53:                                               ; preds = %49
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ARPHRD_IEEE802154, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @dev_put(%struct.net_device* %60)
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %64

62:                                               ; preds = %53
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %63, %struct.net_device** %2, align 8
  br label %64

64:                                               ; preds = %62, %59, %52, %47
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_strlcpy(i8*, i64, i32) #2

declare dso_local %struct.net_device* @dev_get_by_name(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #2

declare dso_local i32 @nla_get_u32(i64) #2

declare dso_local i32 @dev_put(%struct.net_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
