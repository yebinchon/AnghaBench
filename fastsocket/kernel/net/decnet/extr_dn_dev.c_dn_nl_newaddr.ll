; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_nl_newaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_nl_newaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net_device = type { i32, %struct.dn_dev* }
%struct.dn_dev = type { i32 }
%struct.ifaddrmsg = type { i32, i32, i32 }
%struct.dn_ifaddr = type { i32, %struct.dn_dev*, i32, i32, i8*, i8* }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@dn_ifa_policy = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i64 0, align 8
@IFA_LABEL = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @dn_nl_newaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_nl_newaddr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.dn_dev*, align 8
  %13 = alloca %struct.ifaddrmsg*, align 8
  %14 = alloca %struct.dn_ifaddr*, align 8
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
  %26 = load %struct.net*, %struct.net** %8, align 8
  %27 = icmp ne %struct.net* %26, @init_net
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %148

31:                                               ; preds = %3
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %33 = load i32, i32* @IFA_MAX, align 4
  %34 = load i32, i32* @dn_ifa_policy, align 4
  %35 = call i32 @nlmsg_parse(%struct.nlmsghdr* %32, i32 12, %struct.nlattr** %25, i32 %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %148

40:                                               ; preds = %31
  %41 = load i64, i64* @IFA_LOCAL, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp eq %struct.nlattr* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %148

48:                                               ; preds = %40
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %50 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %49)
  store %struct.ifaddrmsg* %50, %struct.ifaddrmsg** %13, align 8
  %51 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %13, align 8
  %52 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.net_device* @__dev_get_by_index(%struct.net* @init_net, i32 %53)
  store %struct.net_device* %54, %struct.net_device** %11, align 8
  %55 = icmp eq %struct.net_device* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %148

59:                                               ; preds = %48
  %60 = load %struct.net_device*, %struct.net_device** %11, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load %struct.dn_dev*, %struct.dn_dev** %61, align 8
  store %struct.dn_dev* %62, %struct.dn_dev** %12, align 8
  %63 = icmp eq %struct.dn_dev* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.net_device*, %struct.net_device** %11, align 8
  %66 = call %struct.dn_dev* @dn_dev_create(%struct.net_device* %65, i32* %15)
  store %struct.dn_dev* %66, %struct.dn_dev** %12, align 8
  %67 = load %struct.dn_dev*, %struct.dn_dev** %12, align 8
  %68 = icmp ne %struct.dn_dev* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %148

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %59
  %73 = call %struct.dn_ifaddr* (...) @dn_dev_alloc_ifa()
  store %struct.dn_ifaddr* %73, %struct.dn_ifaddr** %14, align 8
  %74 = icmp eq %struct.dn_ifaddr* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @ENOBUFS, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %148

78:                                               ; preds = %72
  %79 = load i64, i64* @IFA_ADDRESS, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = icmp eq %struct.nlattr* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i64, i64* @IFA_LOCAL, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = load i64, i64* @IFA_ADDRESS, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %87
  store %struct.nlattr* %86, %struct.nlattr** %88, align 8
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i64, i64* @IFA_LOCAL, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = call i8* @nla_get_le16(%struct.nlattr* %92)
  %94 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %95 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load i64, i64* @IFA_ADDRESS, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = call i8* @nla_get_le16(%struct.nlattr* %98)
  %100 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %101 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %13, align 8
  %103 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %106 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %13, align 8
  %108 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %111 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.dn_dev*, %struct.dn_dev** %12, align 8
  %113 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %114 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %113, i32 0, i32 1
  store %struct.dn_dev* %112, %struct.dn_dev** %114, align 8
  %115 = load i64, i64* @IFA_LABEL, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = icmp ne %struct.nlattr* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %89
  %120 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %121 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* @IFA_LABEL, align 8
  %124 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %123
  %125 = load %struct.nlattr*, %struct.nlattr** %124, align 8
  %126 = load i32, i32* @IFNAMSIZ, align 4
  %127 = call i32 @nla_strlcpy(i32 %122, %struct.nlattr* %125, i32 %126)
  br label %137

128:                                              ; preds = %89
  %129 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %130 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.net_device*, %struct.net_device** %11, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IFNAMSIZ, align 4
  %136 = call i32 @memcpy(i32 %131, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %128, %119
  %138 = load %struct.dn_dev*, %struct.dn_dev** %12, align 8
  %139 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %140 = call i32 @dn_dev_insert_ifa(%struct.dn_dev* %138, %struct.dn_ifaddr* %139)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %145 = call i32 @dn_dev_free_ifa(%struct.dn_ifaddr* %144)
  br label %146

146:                                              ; preds = %143, %137
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %148

148:                                              ; preds = %146, %75, %69, %56, %45, %38, %28
  %149 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.dn_dev* @dn_dev_create(%struct.net_device*, i32*) #1

declare dso_local %struct.dn_ifaddr* @dn_dev_alloc_ifa(...) #1

declare dso_local i8* @nla_get_le16(%struct.nlattr*) #1

declare dso_local i32 @nla_strlcpy(i32, %struct.nlattr*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dn_dev_insert_ifa(%struct.dn_dev*, %struct.dn_ifaddr*) #1

declare dso_local i32 @dn_dev_free_ifa(%struct.dn_ifaddr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
