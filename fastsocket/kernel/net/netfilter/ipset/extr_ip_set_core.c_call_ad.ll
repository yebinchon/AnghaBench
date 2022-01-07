; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_call_ad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_call_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_set = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ip_set*, i32)*, i32 (%struct.ip_set*, %struct.nlattr**, i32, i32*, i32)* }
%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i64, i32 }
%struct.nlmsgerr = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IPSET_FLAG_EXIST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IPSET_ERR_EXIST = common dso_local global i32 0, align 4
@IPSET_ATTR_CMD_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_ERROR = common dso_local global i32 0, align 4
@ip_set_adt_policy = common dso_local global i32 0, align 4
@IPSET_ATTR_LINENO = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.ip_set*, %struct.nlattr**, i32, i32, i32)* @call_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_ad(%struct.sock* %0, %struct.sk_buff* %1, %struct.ip_set* %2, %struct.nlattr** %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ip_set*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nlmsghdr*, align 8
  %21 = alloca %struct.nlmsghdr*, align 8
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca %struct.nlmsgerr*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.nlattr*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_4__, align 4
  %32 = alloca %struct.TYPE_4__, align 4
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store %struct.ip_set* %2, %struct.ip_set** %11, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @IPSET_FLAG_EXIST, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %19, align 4
  br label %36

36:                                               ; preds = %76, %7
  %37 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %38 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %37, i32 0, i32 0
  %39 = call i32 @write_lock_bh(i32* %38)
  %40 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %41 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (%struct.ip_set*, %struct.nlattr**, i32, i32*, i32)*, i32 (%struct.ip_set*, %struct.nlattr**, i32, i32*, i32)** %43, align 8
  %45 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %46 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 %44(%struct.ip_set* %45, %struct.nlattr** %46, i32 %47, i32* %18, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %51 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %50, i32 0, i32 0
  %52 = call i32 @write_unlock_bh(i32* %51)
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %60 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.ip_set*, i32)*, i32 (%struct.ip_set*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.ip_set*, i32)* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %67 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32 (%struct.ip_set*, i32)*, i32 (%struct.ip_set*, i32)** %69, align 8
  %71 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  %74 = call i32 %70(%struct.ip_set* %71, i32 %72)
  store i32 %74, i32* %16, align 4
  %75 = icmp eq i32 %74, 0
  br label %76

76:                                               ; preds = %65, %58, %53
  %77 = phi i1 [ false, %58 ], [ false, %53 ], [ %75, %65 ]
  br i1 %77, label %36, label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @IPSET_ERR_EXIST, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %78
  store i32 0, i32* %8, align 4
  br label %180

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %178

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %178

96:                                               ; preds = %93
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %97)
  store %struct.nlmsghdr* %98, %struct.nlmsghdr** %21, align 8
  %99 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %100 = call i32 @nlmsg_len(%struct.nlmsghdr* %99)
  %101 = sext i32 %100 to i64
  %102 = add i64 8, %101
  store i64 %102, i64* %24, align 8
  %103 = call i32 @NLMSG_SPACE(i32 4)
  store i32 %103, i32* %25, align 4
  %104 = load i32, i32* @IPSET_ATTR_CMD_MAX, align 4
  %105 = add nsw i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = call i8* @llvm.stacksave()
  store i8* %107, i8** %26, align 8
  %108 = alloca %struct.nlattr*, i64 %106, align 16
  store i64 %106, i64* %27, align 8
  %109 = load i64, i64* %24, align 8
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.sk_buff* @nlmsg_new(i64 %109, i32 %110)
  store %struct.sk_buff* %111, %struct.sk_buff** %22, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %113 = icmp eq %struct.sk_buff* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %96
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %176

117:                                              ; preds = %96
  %118 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %120 = call i32 @NETLINK_CB(%struct.sk_buff* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %125 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @NLMSG_ERROR, align 4
  %128 = load i64, i64* %24, align 8
  %129 = call %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff* %118, i32 %123, i32 %126, i32 %127, i64 %128, i32 0)
  store %struct.nlmsghdr* %129, %struct.nlmsghdr** %20, align 8
  %130 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %131 = call %struct.nlmsgerr* @nlmsg_data(%struct.nlmsghdr* %130)
  store %struct.nlmsgerr* %131, %struct.nlmsgerr** %23, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.nlmsgerr*, %struct.nlmsgerr** %23, align 8
  %134 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.nlmsgerr*, %struct.nlmsgerr** %23, align 8
  %136 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %135, i32 0, i32 1
  %137 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %138 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %139 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @memcpy(i32* %136, %struct.nlmsghdr* %137, i64 %140)
  %142 = load %struct.nlmsgerr*, %struct.nlmsgerr** %23, align 8
  %143 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %142, i32 0, i32 1
  %144 = bitcast i32* %143 to i8*
  %145 = load i32, i32* %25, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr i8, i8* %144, i64 %146
  %148 = bitcast i8* %147 to %struct.nlattr*
  store %struct.nlattr* %148, %struct.nlattr** %28, align 8
  %149 = load i32, i32* @IPSET_ATTR_CMD_MAX, align 4
  %150 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %151 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %152 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %25, align 4
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 %153, %155
  %157 = load i32, i32* @ip_set_adt_policy, align 4
  %158 = call i32 @nla_parse(%struct.nlattr** %108, i32 %149, %struct.nlattr* %150, i64 %156, i32 %157)
  %159 = load i64, i64* @IPSET_ATTR_LINENO, align 8
  %160 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %108, i64 %159
  %161 = load %struct.nlattr*, %struct.nlattr** %160, align 8
  %162 = call i32* @nla_data(%struct.nlattr* %161)
  store i32* %162, i32** %29, align 8
  %163 = load i32, i32* %18, align 4
  %164 = load i32*, i32** %29, align 8
  store i32 %163, i32* %164, align 4
  %165 = load %struct.sock*, %struct.sock** %9, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %168 = call i32 @NETLINK_CB(%struct.sk_buff* %167)
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %168, i32* %169, align 4
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @MSG_DONTWAIT, align 4
  %173 = call i32 @netlink_unicast(%struct.sock* %165, %struct.sk_buff* %166, i32 %171, i32 %172)
  %174 = load i32, i32* @EINTR, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %176

176:                                              ; preds = %117, %114
  %177 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %177)
  br label %180

178:                                              ; preds = %93, %90
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %178, %176, %89
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local i32 @NLMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.nlmsgerr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i32*, %struct.nlmsghdr*, i64) #1

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, %struct.nlattr*, i64, i32) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
