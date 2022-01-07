; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IPSET_ATTR_SETNAME = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ip_set_list = common dso_local global %struct.ip_set** null, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_CMD_HEADER = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_ATTR_TYPENAME = common dso_local global i64 0, align 8
@IPSET_ATTR_FAMILY = common dso_local global i32 0, align 4
@IPSET_ATTR_REVISION = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ip_set_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_header(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.ip_set*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__, align 4
  %16 = alloca %struct.TYPE_4__, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %18 = call i64 @protocol_failed(%struct.nlattr** %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %22 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp eq %struct.nlattr* %24, null
  br label %26

26:                                               ; preds = %20, %4
  %27 = phi i1 [ true, %4 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %134

34:                                               ; preds = %26
  %35 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %36 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i32 @nla_data(%struct.nlattr* %38)
  %40 = call i64 @find_set_id(i32 %39)
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @IPSET_INVALID_ID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %134

47:                                               ; preds = %34
  %48 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %48, i64 %49
  %51 = load %struct.ip_set*, %struct.ip_set** %50, align 8
  store %struct.ip_set* %51, %struct.ip_set** %10, align 8
  %52 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.sk_buff* @nlmsg_new(i32 %52, i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %11, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = icmp eq %struct.sk_buff* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %134

60:                                               ; preds = %47
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call i32 @NETLINK_CB(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %68 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IPSET_CMD_HEADER, align 4
  %71 = call %struct.nlmsghdr* @start_msg(%struct.sk_buff* %61, i32 %66, i32 %69, i32 0, i32 %70)
  store %struct.nlmsghdr* %71, %struct.nlmsghdr** %12, align 8
  %72 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %73 = icmp ne %struct.nlmsghdr* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %129

75:                                               ; preds = %60
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = load i32, i32* @IPSET_ATTR_PROTOCOL, align 4
  %78 = load i32, i32* @IPSET_PROTOCOL, align 4
  %79 = call i32 @NLA_PUT_U8(%struct.sk_buff* %76, i32 %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %82 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %83 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %80, i64 %81, i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %87 = load i64, i64* @IPSET_ATTR_TYPENAME, align 8
  %88 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %89 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %86, i64 %87, i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %95 = load i32, i32* @IPSET_ATTR_FAMILY, align 4
  %96 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %97 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @NLA_PUT_U8(%struct.sk_buff* %94, i32 %95, i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = load i32, i32* @IPSET_ATTR_REVISION, align 4
  %102 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %103 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @NLA_PUT_U8(%struct.sk_buff* %100, i32 %101, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %109 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %110 = call i32 @nlmsg_end(%struct.sk_buff* %108, %struct.nlmsghdr* %109)
  %111 = load %struct.sock*, %struct.sock** %6, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = call i32 @NETLINK_CB(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MSG_DONTWAIT, align 4
  %119 = call i32 @netlink_unicast(%struct.sock* %111, %struct.sk_buff* %112, i32 %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %75
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %5, align 4
  br label %134

124:                                              ; preds = %75
  store i32 0, i32* %5, align 4
  br label %134

125:                                              ; No predecessors!
  %126 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %127 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %128 = call i32 @nlmsg_cancel(%struct.sk_buff* %126, %struct.nlmsghdr* %127)
  br label %129

129:                                              ; preds = %125, %74
  %130 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %131 = call i32 @kfree_skb(%struct.sk_buff* %130)
  %132 = load i32, i32* @EMSGSIZE, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %129, %124, %122, %57, %44, %31
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @protocol_failed(%struct.nlattr**) #1

declare dso_local i64 @find_set_id(i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @start_msg(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
