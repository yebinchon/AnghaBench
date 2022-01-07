; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pn_netlink.c_addr_doit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pn_netlink.c_addr_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.ifaddrmsg = type { i32 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ifa_phonet_policy = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RTM_NEWADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @addr_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.ifaddrmsg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load i32, i32* @IFA_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %26 = call i32 @capable(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %99

31:                                               ; preds = %3
  %32 = call i32 (...) @ASSERT_RTNL()
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %34 = load i32, i32* @IFA_MAX, align 4
  %35 = load i32, i32* @ifa_phonet_policy, align 4
  %36 = call i32 @nlmsg_parse(%struct.nlmsghdr* %33, i32 4, %struct.nlattr** %24, i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %99

41:                                               ; preds = %31
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %43 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %42)
  store %struct.ifaddrmsg* %43, %struct.ifaddrmsg** %12, align 8
  %44 = load i64, i64* @IFA_LOCAL, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp eq %struct.nlattr* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %99

51:                                               ; preds = %41
  %52 = load i64, i64* @IFA_LOCAL, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i32 @nla_get_u8(%struct.nlattr* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %99

62:                                               ; preds = %51
  %63 = load %struct.net*, %struct.net** %8, align 8
  %64 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %12, align 8
  %65 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.net_device* @__dev_get_by_index(%struct.net* %63, i32 %66)
  store %struct.net_device* %67, %struct.net_device** %11, align 8
  %68 = load %struct.net_device*, %struct.net_device** %11, align 8
  %69 = icmp eq %struct.net_device* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %99

73:                                               ; preds = %62
  %74 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %75 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RTM_NEWADDR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.net_device*, %struct.net_device** %11, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @phonet_address_add(%struct.net_device* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  br label %87

83:                                               ; preds = %73
  %84 = load %struct.net_device*, %struct.net_device** %11, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @phonet_address_del(%struct.net_device* %84, i32 %85)
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %92 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.net_device*, %struct.net_device** %11, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @phonet_address_notify(i64 %93, %struct.net_device* %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %87
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %99

99:                                               ; preds = %97, %70, %59, %48, %39, %28
  %100 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @phonet_address_add(%struct.net_device*, i32) #1

declare dso_local i32 @phonet_address_del(%struct.net_device*, i32) #1

declare dso_local i32 @phonet_address_notify(i64, %struct.net_device*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
