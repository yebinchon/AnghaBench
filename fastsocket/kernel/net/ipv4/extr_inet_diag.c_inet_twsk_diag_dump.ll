; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_twsk_diag_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_twsk_diag_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { i64, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.inet_diag_req = type { i32 }
%struct.inet_diag_entry = type { i64, i64, i32, i32, i32*, i32* }
%struct.nlattr = type { i32 }
%struct.TYPE_11__ = type { i32 }

@INET_DIAG_REQ_BYTECODE = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_timewait_sock*, %struct.sk_buff*, %struct.netlink_callback*)* @inet_twsk_diag_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_twsk_diag_dump(%struct.inet_timewait_sock* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_timewait_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.inet_diag_req*, align 8
  %9 = alloca %struct.inet_diag_entry, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.TYPE_11__, align 4
  store %struct.inet_timewait_sock* %0, %struct.inet_timewait_sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = call %struct.inet_diag_req* @NLMSG_DATA(%struct.TYPE_10__* %14)
  store %struct.inet_diag_req* %15, %struct.inet_diag_req** %8, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = call i64 @nlmsg_attrlen(%struct.TYPE_10__* %18, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %3
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load i32, i32* @INET_DIAG_REQ_BYTECODE, align 4
  %26 = call %struct.nlattr* @nlmsg_find_attr(%struct.TYPE_10__* %24, i32 4, i32 %25)
  store %struct.nlattr* %26, %struct.nlattr** %10, align 8
  %27 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %28 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %32 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 5
  store i32* %32, i32** %33, align 8
  %34 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %35 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 4
  store i32* %35, i32** %36, align 8
  %37 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %38 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %42 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ntohs(i32 %43)
  %45 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %48 = call i32 @nla_data(%struct.nlattr* %47)
  %49 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %50 = call i32 @nla_len(%struct.nlattr* %49)
  %51 = call i32 @inet_diag_bc_run(i32 %48, i32 %50, %struct.inet_diag_entry* %9)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %78

54:                                               ; preds = %21
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.inet_diag_req*, %struct.inet_diag_req** %8, align 8
  %59 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %62 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @NETLINK_CB(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %69 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NLM_F_MULTI, align 4
  %74 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %75 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 @inet_twsk_diag_fill(%struct.inet_timewait_sock* %56, %struct.sk_buff* %57, i32 %60, i32 %67, i32 %72, i32 %73, %struct.TYPE_10__* %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %55, %53
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.inet_diag_req* @NLMSG_DATA(%struct.TYPE_10__*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @inet_diag_bc_run(i32, i32, %struct.inet_diag_entry*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @inet_twsk_diag_fill(%struct.inet_timewait_sock*, %struct.sk_buff*, i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
