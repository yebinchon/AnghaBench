; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_setlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_setlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ifinfomsg = type { i64 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_MAX = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@ifla_policy = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @rtnl_setlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_setlink(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.ifinfomsg*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %7, align 8
  %18 = load i32, i32* @IFLA_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @IFNAMSIZ, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %27 = load i32, i32* @IFLA_MAX, align 4
  %28 = load i32, i32* @ifla_policy, align 4
  %29 = call i32 @nlmsg_parse(%struct.nlmsghdr* %26, i32 8, %struct.nlattr** %22, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %89

33:                                               ; preds = %3
  %34 = load i64, i64* @IFLA_IFNAME, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i64, i64* @IFLA_IFNAME, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = load i32, i32* @IFNAMSIZ, align 4
  %43 = call i32 @nla_strlcpy(i8* %25, %struct.nlattr* %41, i32 %42)
  br label %46

44:                                               ; preds = %33
  %45 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %45, align 16
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %50 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %49)
  store %struct.ifinfomsg* %50, %struct.ifinfomsg** %8, align 8
  %51 = load %struct.ifinfomsg*, %struct.ifinfomsg** %8, align 8
  %52 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.net*, %struct.net** %7, align 8
  %57 = load %struct.ifinfomsg*, %struct.ifinfomsg** %8, align 8
  %58 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call %struct.net_device* @dev_get_by_index(%struct.net* %56, i64 %59)
  store %struct.net_device* %60, %struct.net_device** %9, align 8
  br label %71

61:                                               ; preds = %46
  %62 = load i64, i64* @IFLA_IFNAME, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.net*, %struct.net** %7, align 8
  %68 = call %struct.net_device* @dev_get_by_name(%struct.net* %67, i8* %25)
  store %struct.net_device* %68, %struct.net_device** %9, align 8
  br label %70

69:                                               ; preds = %61
  br label %89

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.net_device*, %struct.net_device** %9, align 8
  %73 = icmp eq %struct.net_device* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %89

77:                                               ; preds = %71
  %78 = load %struct.net_device*, %struct.net_device** %9, align 8
  %79 = call i32 @validate_linkmsg(%struct.net_device* %78, %struct.nlattr** %22)
  store i32 %79, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %86

82:                                               ; preds = %77
  %83 = load %struct.net_device*, %struct.net_device** %9, align 8
  %84 = load %struct.ifinfomsg*, %struct.ifinfomsg** %8, align 8
  %85 = call i32 @do_setlink(%struct.net_device* %83, %struct.ifinfomsg* %84, %struct.nlattr** %22, i8* %25, i32 0)
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %82, %81
  %87 = load %struct.net_device*, %struct.net_device** %9, align 8
  %88 = call i32 @dev_put(%struct.net_device* %87)
  br label %89

89:                                               ; preds = %86, %74, %69, %32
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i32 %90
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.net_device* @dev_get_by_name(%struct.net*, i8*) #1

declare dso_local i32 @validate_linkmsg(%struct.net_device*, %struct.nlattr**) #1

declare dso_local i32 @do_setlink(%struct.net_device*, %struct.ifinfomsg*, %struct.nlattr**, i8*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
