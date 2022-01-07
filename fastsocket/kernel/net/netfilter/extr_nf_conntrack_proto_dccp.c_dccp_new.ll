; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_dccp.c_dccp_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_dccp.c_dccp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.dccp_net = type { i32 }
%struct.dccp_hdr = type { i64 }

@dccp_state_table = common dso_local global i32*** null, align 8
@CT_DCCP_ROLE_CLIENT = common dso_local global i64 0, align 8
@CT_DCCP_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"nf_ct_dccp: not picking up existing connection \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"nf_ct_dccp: invalid state transition \00", align 1
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@CT_DCCP_ROLE_SERVER = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.sk_buff*, i32)* @dccp_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_new(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.dccp_net*, align 8
  %10 = alloca %struct.dccp_hdr, align 8
  %11 = alloca %struct.dccp_hdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %15 = call %struct.net* @nf_ct_net(%struct.nf_conn* %14)
  store %struct.net* %15, %struct.net** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff* %16, i32 %17, i32 8, %struct.dccp_hdr* %10)
  store %struct.dccp_hdr* %18, %struct.dccp_hdr** %11, align 8
  %19 = load %struct.dccp_hdr*, %struct.dccp_hdr** %11, align 8
  %20 = icmp eq %struct.dccp_hdr* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32***, i32**** @dccp_state_table, align 8
  %24 = load i64, i64* @CT_DCCP_ROLE_CLIENT, align 8
  %25 = getelementptr inbounds i32**, i32*** %23, i64 %24
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.dccp_hdr*, %struct.dccp_hdr** %11, align 8
  %28 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @CT_DCCP_NONE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  switch i32 %35, label %36 [
    i32 128, label %45
    i32 129, label %46
  ]

36:                                               ; preds = %3
  %37 = load %struct.net*, %struct.net** %8, align 8
  %38 = call %struct.dccp_net* @dccp_pernet(%struct.net* %37)
  store %struct.dccp_net* %38, %struct.dccp_net** %9, align 8
  %39 = load %struct.dccp_net*, %struct.dccp_net** %9, align 8
  %40 = getelementptr inbounds %struct.dccp_net, %struct.dccp_net* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %69

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %3, %44
  br label %47

46:                                               ; preds = %3
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %69

47:                                               ; preds = %45
  %48 = load i64, i64* @CT_DCCP_ROLE_CLIENT, align 8
  %49 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %50 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %48, i64* %55, align 8
  %56 = load i64, i64* @CT_DCCP_ROLE_SERVER, align 8
  %57 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %58 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %56, i64* %63, align 8
  %64 = load i64, i64* @CT_DCCP_NONE, align 8
  %65 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %66 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i64 %64, i64* %68, align 8
  store i32 1, i32* %4, align 4
  br label %81

69:                                               ; preds = %46, %43
  %70 = load %struct.net*, %struct.net** %8, align 8
  %71 = load i32, i32* @IPPROTO_DCCP, align 4
  %72 = call i64 @LOG_INVALID(%struct.net* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %76 = call i32 @nf_ct_l3num(%struct.nf_conn* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @nf_log_packet(i32 %76, i32 0, %struct.sk_buff* %77, i32* null, i32* null, i32* null, i8* %78)
  br label %80

80:                                               ; preds = %74, %69
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %47
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.dccp_hdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dccp_net* @dccp_pernet(%struct.net*) #1

declare dso_local i64 @LOG_INVALID(%struct.net*, i32) #1

declare dso_local i32 @nf_log_packet(i32, i32, %struct.sk_buff*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
