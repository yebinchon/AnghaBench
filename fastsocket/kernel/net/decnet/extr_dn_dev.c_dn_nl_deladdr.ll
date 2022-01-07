; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_nl_deladdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_nl_deladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.dn_dev = type { %struct.dn_ifaddr* }
%struct.dn_ifaddr = type { i32, i32, %struct.dn_ifaddr* }
%struct.ifaddrmsg = type { i32 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@dn_ifa_policy = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i64 0, align 8
@IFA_LABEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @dn_nl_deladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_nl_deladdr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dn_dev*, align 8
  %12 = alloca %struct.ifaddrmsg*, align 8
  %13 = alloca %struct.dn_ifaddr*, align 8
  %14 = alloca %struct.dn_ifaddr**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %8, align 8
  %21 = load i32, i32* @IFA_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %15, align 4
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = icmp ne %struct.net* %28, @init_net
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %96

31:                                               ; preds = %3
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %33 = load i32, i32* @IFA_MAX, align 4
  %34 = load i32, i32* @dn_ifa_policy, align 4
  %35 = call i32 @nlmsg_parse(%struct.nlmsghdr* %32, i32 4, %struct.nlattr** %25, i32 %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %96

39:                                               ; preds = %31
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %15, align 4
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %43 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %42)
  store %struct.ifaddrmsg* %43, %struct.ifaddrmsg** %12, align 8
  %44 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %12, align 8
  %45 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.dn_dev* @dn_dev_by_index(i32 %46)
  store %struct.dn_dev* %47, %struct.dn_dev** %11, align 8
  %48 = icmp eq %struct.dn_dev* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %96

50:                                               ; preds = %39
  %51 = load i32, i32* @EADDRNOTAVAIL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %15, align 4
  %53 = load %struct.dn_dev*, %struct.dn_dev** %11, align 8
  %54 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %53, i32 0, i32 0
  store %struct.dn_ifaddr** %54, %struct.dn_ifaddr*** %14, align 8
  br label %55

55:                                               ; preds = %92, %50
  %56 = load %struct.dn_ifaddr**, %struct.dn_ifaddr*** %14, align 8
  %57 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %56, align 8
  store %struct.dn_ifaddr* %57, %struct.dn_ifaddr** %13, align 8
  %58 = icmp ne %struct.dn_ifaddr* %57, null
  br i1 %58, label %59, label %95

59:                                               ; preds = %55
  %60 = load i64, i64* @IFA_LOCAL, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i64, i64* @IFA_LOCAL, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %13, align 8
  %69 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %68, i32 0, i32 1
  %70 = call i64 @nla_memcmp(%struct.nlattr* %67, i32* %69, i32 2)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %92

73:                                               ; preds = %64, %59
  %74 = load i64, i64* @IFA_LABEL, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i64, i64* @IFA_LABEL, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %13, align 8
  %83 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @nla_strcmp(%struct.nlattr* %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %92

88:                                               ; preds = %78, %73
  %89 = load %struct.dn_dev*, %struct.dn_dev** %11, align 8
  %90 = load %struct.dn_ifaddr**, %struct.dn_ifaddr*** %14, align 8
  %91 = call i32 @dn_dev_del_ifa(%struct.dn_dev* %89, %struct.dn_ifaddr** %90, i32 1)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %98

92:                                               ; preds = %87, %72
  %93 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %13, align 8
  %94 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %93, i32 0, i32 2
  store %struct.dn_ifaddr** %94, %struct.dn_ifaddr*** %14, align 8
  br label %55

95:                                               ; preds = %55
  br label %96

96:                                               ; preds = %95, %49, %38, %30
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %98

98:                                               ; preds = %96, %88
  %99 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.dn_dev* @dn_dev_by_index(i32) #1

declare dso_local i64 @nla_memcmp(%struct.nlattr*, i32*, i32) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @dn_dev_del_ifa(%struct.dn_dev*, %struct.dn_ifaddr**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
