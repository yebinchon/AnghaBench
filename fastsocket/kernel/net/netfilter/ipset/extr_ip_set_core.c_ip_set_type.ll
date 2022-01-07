; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPSET_ATTR_TYPENAME = common dso_local global i64 0, align 8
@IPSET_ATTR_FAMILY = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_CMD_TYPE = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTOCOL = common dso_local global i64 0, align 8
@IPSET_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_ATTR_REVISION = common dso_local global i64 0, align 8
@IPSET_ATTR_REVISION_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Send TYPE, nlmsg_len: %u\0A\00", align 1
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ip_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_type(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %20 = call i64 @protocol_failed(%struct.nlattr** %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %4
  %23 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %24 = load i64, i64* @IPSET_ATTR_TYPENAME, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp eq %struct.nlattr* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %30 = load i64, i64* @IPSET_ATTR_FAMILY, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp eq %struct.nlattr* %32, null
  br label %34

34:                                               ; preds = %28, %22, %4
  %35 = phi i1 [ true, %22 ], [ true, %4 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %135

42:                                               ; preds = %34
  %43 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %44 = load i64, i64* @IPSET_ATTR_FAMILY, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i32 @nla_get_u8(%struct.nlattr* %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %49 = load i64, i64* @IPSET_ATTR_TYPENAME, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i8* @nla_data(%struct.nlattr* %51)
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @find_set_type_minmax(i8* %53, i32 %54, i32* %13, i32* %14)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %5, align 4
  br label %135

60:                                               ; preds = %42
  %61 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.sk_buff* @nlmsg_new(i32 %61, i32 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %10, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = icmp eq %struct.sk_buff* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %135

69:                                               ; preds = %60
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call i32 @NETLINK_CB(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %77 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IPSET_CMD_TYPE, align 4
  %80 = call %struct.nlmsghdr* @start_msg(%struct.sk_buff* %70, i32 %75, i32 %78, i32 0, i32 %79)
  store %struct.nlmsghdr* %80, %struct.nlmsghdr** %11, align 8
  %81 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %82 = icmp ne %struct.nlmsghdr* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %69
  br label %130

84:                                               ; preds = %69
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = load i64, i64* @IPSET_ATTR_PROTOCOL, align 8
  %87 = load i32, i32* @IPSET_PROTOCOL, align 4
  %88 = call i32 @NLA_PUT_U8(%struct.sk_buff* %85, i64 %86, i32 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = load i64, i64* @IPSET_ATTR_TYPENAME, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %89, i64 %90, i8* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = load i64, i64* @IPSET_ATTR_FAMILY, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @NLA_PUT_U8(%struct.sk_buff* %93, i64 %94, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = load i64, i64* @IPSET_ATTR_REVISION, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @NLA_PUT_U8(%struct.sk_buff* %97, i64 %98, i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = load i64, i64* @IPSET_ATTR_REVISION_MIN, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @NLA_PUT_U8(%struct.sk_buff* %101, i64 %102, i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %106 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %107 = call i32 @nlmsg_end(%struct.sk_buff* %105, %struct.nlmsghdr* %106)
  %108 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %109 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load %struct.sock*, %struct.sock** %6, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = call i32 @NETLINK_CB(%struct.sk_buff* %114)
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MSG_DONTWAIT, align 4
  %120 = call i32 @netlink_unicast(%struct.sock* %112, %struct.sk_buff* %113, i32 %118, i32 %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %84
  %124 = load i32, i32* %16, align 4
  store i32 %124, i32* %5, align 4
  br label %135

125:                                              ; preds = %84
  store i32 0, i32* %5, align 4
  br label %135

126:                                              ; No predecessors!
  %127 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %128 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %129 = call i32 @nlmsg_cancel(%struct.sk_buff* %127, %struct.nlmsghdr* %128)
  br label %130

130:                                              ; preds = %126, %83
  %131 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %132 = call i32 @kfree_skb(%struct.sk_buff* %131)
  %133 = load i32, i32* @EMSGSIZE, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %130, %125, %123, %66, %58, %39
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @protocol_failed(%struct.nlattr**) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @find_set_type_minmax(i8*, i32, i32*, i32*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @start_msg(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i64, i8*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
