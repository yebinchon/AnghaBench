; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrlabel.c_ip6addrlbl_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrlabel.c_ip6addrlbl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ifaddrlblmsg = type { i64, i32, i64 }
%struct.in6_addr = type { i32 }
%struct.ip6addrlbl_entry = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@IFAL_MAX = common dso_local global i32 0, align 4
@ifal_policy = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFAL_ADDRESS = common dso_local global i64 0, align 8
@ip6addrlbl_table = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ESRCH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_NEWADDRLABEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @ip6addrlbl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6addrlbl_get(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifaddrlblmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ip6addrlbl_entry*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__, align 4
  %19 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  %24 = load i32, i32* @IFAL_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %30 = load i32, i32* @IFAL_MAX, align 4
  %31 = load i32, i32* @ifal_policy, align 4
  %32 = call i32 @nlmsg_parse(%struct.nlmsghdr* %29, i32 24, %struct.nlattr** %28, i32 %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %159

37:                                               ; preds = %3
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %39 = call %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.ifaddrlblmsg* %39, %struct.ifaddrlblmsg** %9, align 8
  %40 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %41 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %47 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 128
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %37
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %159

53:                                               ; preds = %45
  %54 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %55 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.net*, %struct.net** %8, align 8
  %60 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %61 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @__dev_get_by_index(%struct.net* %59, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %159

68:                                               ; preds = %58, %53
  %69 = load i64, i64* @IFAL_ADDRESS, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = icmp ne %struct.nlattr* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %159

76:                                               ; preds = %68
  %77 = load i64, i64* @IFAL_ADDRESS, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = call %struct.in6_addr* @nla_data(%struct.nlattr* %79)
  store %struct.in6_addr* %80, %struct.in6_addr** %12, align 8
  %81 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %82 = icmp ne %struct.in6_addr* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %159

86:                                               ; preds = %76
  %87 = call i32 (...) @rcu_read_lock()
  %88 = load %struct.net*, %struct.net** %8, align 8
  %89 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %90 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %91 = call i32 @ipv6_addr_type(%struct.in6_addr* %90)
  %92 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %93 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call %struct.ip6addrlbl_entry* @__ipv6_addr_label(%struct.net* %88, %struct.in6_addr* %89, i32 %91, i64 %94)
  store %struct.ip6addrlbl_entry* %95, %struct.ip6addrlbl_entry** %15, align 8
  %96 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %15, align 8
  %97 = icmp ne %struct.ip6addrlbl_entry* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %86
  %99 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %15, align 8
  %100 = call i64 @ip6addrlbl_hold(%struct.ip6addrlbl_entry* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store %struct.ip6addrlbl_entry* null, %struct.ip6addrlbl_entry** %15, align 8
  br label %103

103:                                              ; preds = %102, %98, %86
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ip6addrlbl_table, i32 0, i32 0), align 4
  store i32 %104, i32* %13, align 4
  %105 = call i32 (...) @rcu_read_unlock()
  %106 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %15, align 8
  %107 = icmp ne %struct.ip6addrlbl_entry* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @ESRCH, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %14, align 4
  br label %157

111:                                              ; preds = %103
  %112 = call i32 (...) @ip6addrlbl_msgsize()
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call %struct.sk_buff* @nlmsg_new(i32 %112, i32 %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %16, align 8
  %115 = icmp ne %struct.sk_buff* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %15, align 8
  %118 = call i32 @ip6addrlbl_put(%struct.ip6addrlbl_entry* %117)
  %119 = load i32, i32* @ENOBUFS, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %159

121:                                              ; preds = %111
  %122 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %123 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %15, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = call i32 @NETLINK_CB(%struct.sk_buff* %125)
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %131 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RTM_NEWADDRLABEL, align 4
  %134 = call i32 @ip6addrlbl_fill(%struct.sk_buff* %122, %struct.ip6addrlbl_entry* %123, i32 %124, i32 %129, i32 %132, i32 %133, i32 0)
  store i32 %134, i32* %14, align 4
  %135 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %15, align 8
  %136 = call i32 @ip6addrlbl_put(%struct.ip6addrlbl_entry* %135)
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %121
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @EMSGSIZE, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @WARN_ON(i32 %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %147 = call i32 @kfree_skb(%struct.sk_buff* %146)
  br label %157

148:                                              ; preds = %121
  %149 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %150 = load %struct.net*, %struct.net** %8, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = call i32 @NETLINK_CB(%struct.sk_buff* %151)
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @rtnl_unicast(%struct.sk_buff* %149, %struct.net* %150, i32 %155)
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %148, %139, %108
  %158 = load i32, i32* %14, align 4
  store i32 %158, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %159

159:                                              ; preds = %157, %116, %83, %73, %65, %50, %35
  %160 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.in6_addr* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip6addrlbl_entry* @__ipv6_addr_label(%struct.net*, %struct.in6_addr*, i32, i64) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i64 @ip6addrlbl_hold(%struct.ip6addrlbl_entry*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @ip6addrlbl_msgsize(...) #1

declare dso_local i32 @ip6addrlbl_put(%struct.ip6addrlbl_entry*) #1

declare dso_local i32 @ip6addrlbl_fill(%struct.sk_buff*, %struct.ip6addrlbl_entry*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
