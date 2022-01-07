; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_csk_diag_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_csk_diag_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.inet_diag_req = type { i32 }
%struct.inet_diag_entry = type { i64, i32, i32, i32, i32*, i32* }
%struct.nlattr = type { i32 }
%struct.inet_sock = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@INET_DIAG_REQ_BYTECODE = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.netlink_callback*)* @inet_csk_diag_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_csk_diag_dump(%struct.sock* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.inet_diag_req*, align 8
  %9 = alloca %struct.inet_diag_entry, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca %struct.TYPE_11__, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = call %struct.inet_diag_req* @NLMSG_DATA(%struct.TYPE_10__* %15)
  store %struct.inet_diag_req* %16, %struct.inet_diag_req** %8, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = call i64 @nlmsg_attrlen(%struct.TYPE_10__* %19, i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %3
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %24 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = load i32, i32* @INET_DIAG_REQ_BYTECODE, align 4
  %27 = call %struct.nlattr* @nlmsg_find_attr(%struct.TYPE_10__* %25, i32 4, i32 %26)
  store %struct.nlattr* %27, %struct.nlattr** %10, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call %struct.inet_sock* @inet_sk(%struct.sock* %28)
  store %struct.inet_sock* %29, %struct.inet_sock** %11, align 8
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %35 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 5
  store i32* %35, i32** %36, align 8
  %37 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %38 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 4
  store i32* %38, i32** %39, align 8
  %40 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %41 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %45 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohs(i32 %46)
  %48 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %9, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %54 = call i32 @nla_data(%struct.nlattr* %53)
  %55 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %56 = call i32 @nla_len(%struct.nlattr* %55)
  %57 = call i32 @inet_diag_bc_run(i32 %54, i32 %56, %struct.inet_diag_entry* %9)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %84

60:                                               ; preds = %22
  br label %61

61:                                               ; preds = %60, %3
  %62 = load %struct.sock*, %struct.sock** %5, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load %struct.inet_diag_req*, %struct.inet_diag_req** %8, align 8
  %65 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %68 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @NETLINK_CB(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %75 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NLM_F_MULTI, align 4
  %80 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %81 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = call i32 @inet_csk_diag_fill(%struct.sock* %62, %struct.sk_buff* %63, i32 %66, i32 %73, i32 %78, i32 %79, %struct.TYPE_10__* %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %61, %59
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.inet_diag_req* @NLMSG_DATA(%struct.TYPE_10__*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @inet_diag_bc_run(i32, i32, %struct.inet_diag_entry*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @inet_csk_diag_fill(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
