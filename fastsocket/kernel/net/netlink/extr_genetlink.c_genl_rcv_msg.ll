; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_rcv_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_rcv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32, i32, i32 }
%struct.genl_ops = type { i32, i32 (%struct.sk_buff*, %struct.genl_info*)*, i32, i32, i32* }
%struct.genl_info = type opaque
%struct.genl_family = type { i32, i64, i32, i32 }
%struct.net = type { i32 }
%struct.genl_info.0 = type { i64, i8*, i8*, %struct.nlmsghdr*, i32, i32 }
%struct.genlmsghdr = type { i32 }
%struct.netlink_dump_control = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@GENL_HDRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GENL_ADMIN_PERM = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NLM_F_DUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @genl_rcv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genl_rcv_msg(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.genl_ops*, align 8
  %7 = alloca %struct.genl_family*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.genl_info.0, align 8
  %10 = alloca %struct.genlmsghdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_dump_control, align 8
  %14 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %8, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %20 = call i8* @nlmsg_data(%struct.nlmsghdr* %19)
  %21 = bitcast i8* %20 to %struct.genlmsghdr*
  store %struct.genlmsghdr* %21, %struct.genlmsghdr** %10, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %23 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.genl_family* @genl_family_find_byid(i32 %24)
  store %struct.genl_family* %25, %struct.genl_family** %7, align 8
  %26 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %27 = icmp eq %struct.genl_family* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %182

31:                                               ; preds = %2
  %32 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %33 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.net*, %struct.net** %8, align 8
  %38 = call i32 @net_eq(%struct.net* %37, i32* @init_net)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %182

43:                                               ; preds = %36, %31
  %44 = load i32, i32* @GENL_HDRLEN, align 4
  %45 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %46 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %50 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @nlmsg_msg_size(i32 %52)
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %182

58:                                               ; preds = %43
  %59 = load %struct.genlmsghdr*, %struct.genlmsghdr** %10, align 8
  %60 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %63 = call %struct.genl_ops* @genl_get_cmd(i32 %61, %struct.genl_family* %62)
  store %struct.genl_ops* %63, %struct.genl_ops** %6, align 8
  %64 = load %struct.genl_ops*, %struct.genl_ops** %6, align 8
  %65 = icmp eq %struct.genl_ops* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @EOPNOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %182

69:                                               ; preds = %58
  %70 = load %struct.genl_ops*, %struct.genl_ops** %6, align 8
  %71 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GENL_ADMIN_PERM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* @CAP_NET_ADMIN, align 4
  %79 = call i64 @security_netlink_recv(%struct.sk_buff* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EPERM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %182

84:                                               ; preds = %76, %69
  %85 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %86 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @NLM_F_DUMP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %84
  %92 = load %struct.genl_ops*, %struct.genl_ops** %6, align 8
  %93 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %182

99:                                               ; preds = %91
  %100 = call i32 (...) @genl_unlock()
  %101 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %13, i32 0, i32 0
  %102 = load %struct.genl_ops*, %struct.genl_ops** %6, align 8
  %103 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %101, align 8
  %105 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %13, i32 0, i32 1
  %106 = load %struct.genl_ops*, %struct.genl_ops** %6, align 8
  %107 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %105, align 8
  %109 = load %struct.net*, %struct.net** %8, align 8
  %110 = getelementptr inbounds %struct.net, %struct.net* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %114 = call i32 @netlink_dump_start(i32 %111, %struct.sk_buff* %112, %struct.nlmsghdr* %113, %struct.netlink_dump_control* %13)
  store i32 %114, i32* %12, align 4
  %115 = call i32 (...) @genl_lock()
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %3, align 4
  br label %182

117:                                              ; preds = %84
  %118 = load %struct.genl_ops*, %struct.genl_ops** %6, align 8
  %119 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %118, i32 0, i32 1
  %120 = load i32 (%struct.sk_buff*, %struct.genl_info*)*, i32 (%struct.sk_buff*, %struct.genl_info*)** %119, align 8
  %121 = icmp eq i32 (%struct.sk_buff*, %struct.genl_info*)* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @EOPNOTSUPP, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %182

125:                                              ; preds = %117
  %126 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %127 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %125
  %131 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %134 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %137 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.genl_ops*, %struct.genl_ops** %6, align 8
  %140 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @nlmsg_parse(%struct.nlmsghdr* %131, i32 %132, i64 %135, i32 %138, i32 %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %130
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %3, align 4
  br label %182

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %147, %125
  %149 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %150 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.genl_info.0, %struct.genl_info.0* %9, i32 0, i32 5
  store i32 %151, i32* %152, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = call i32 @NETLINK_CB(%struct.sk_buff* %153)
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %154, i32* %155, align 4
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.genl_info.0, %struct.genl_info.0* %9, i32 0, i32 4
  store i32 %157, i32* %158, align 8
  %159 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %160 = getelementptr inbounds %struct.genl_info.0, %struct.genl_info.0* %9, i32 0, i32 3
  store %struct.nlmsghdr* %159, %struct.nlmsghdr** %160, align 8
  %161 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %162 = call i8* @nlmsg_data(%struct.nlmsghdr* %161)
  %163 = getelementptr inbounds %struct.genl_info.0, %struct.genl_info.0* %9, i32 0, i32 2
  store i8* %162, i8** %163, align 8
  %164 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %165 = call i8* @nlmsg_data(%struct.nlmsghdr* %164)
  %166 = load i32, i32* @GENL_HDRLEN, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr i8, i8* %165, i64 %167
  %169 = getelementptr inbounds %struct.genl_info.0, %struct.genl_info.0* %9, i32 0, i32 1
  store i8* %168, i8** %169, align 8
  %170 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %171 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.genl_info.0, %struct.genl_info.0* %9, i32 0, i32 0
  store i64 %172, i64* %173, align 8
  %174 = load %struct.net*, %struct.net** %8, align 8
  %175 = call i32 @genl_info_net_set(%struct.genl_info.0* %9, %struct.net* %174)
  %176 = load %struct.genl_ops*, %struct.genl_ops** %6, align 8
  %177 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %176, i32 0, i32 1
  %178 = load i32 (%struct.sk_buff*, %struct.genl_info*)*, i32 (%struct.sk_buff*, %struct.genl_info*)** %177, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %180 = bitcast %struct.genl_info.0* %9 to %struct.genl_info*
  %181 = call i32 %178(%struct.sk_buff* %179, %struct.genl_info* %180)
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %148, %145, %122, %99, %96, %81, %66, %55, %40, %28
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i8* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.genl_family* @genl_family_find_byid(i32) #1

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local %struct.genl_ops* @genl_get_cmd(i32, %struct.genl_family*) #1

declare dso_local i64 @security_netlink_recv(%struct.sk_buff*, i32) #1

declare dso_local i32 @genl_unlock(...) #1

declare dso_local i32 @netlink_dump_start(i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local i32 @genl_lock(...) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, i64, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @genl_info_net_set(%struct.genl_info.0*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
