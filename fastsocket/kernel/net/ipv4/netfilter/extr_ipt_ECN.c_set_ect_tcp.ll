; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ECN.c_set_ect_tcp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ECN.c_set_ect_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipt_ECN_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.tcphdr = type { i64, i64, i32 }

@IPT_ECN_OP_SET_ECE = common dso_local global i32 0, align 4
@IPT_ECN_OP_SET_CWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ipt_ECN_info*)* @set_ect_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ect_tcp(%struct.sk_buff* %0, %struct.ipt_ECN_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipt_ECN_info*, align 8
  %6 = alloca %struct.tcphdr, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ipt_ECN_info* %1, %struct.ipt_ECN_info** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @ip_hdrlen(%struct.sk_buff* %10)
  %12 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %9, i32 %11, i32 24, %struct.tcphdr* %6)
  store %struct.tcphdr* %12, %struct.tcphdr** %7, align 8
  %13 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %14 = icmp ne %struct.tcphdr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

16:                                               ; preds = %2
  %17 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %5, align 8
  %18 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IPT_ECN_OP_SET_ECE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %25 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %5, align 8
  %28 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %23, %16
  %34 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %5, align 8
  %35 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IPT_ECN_OP_SET_CWR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %5, align 8
  %45 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40, %33
  store i32 1, i32* %3, align 4
  br label %113

51:                                               ; preds = %40, %23
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @ip_hdrlen(%struct.sk_buff* %53)
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 24
  %57 = trunc i64 %56 to i32
  %58 = call i32 @skb_make_writable(%struct.sk_buff* %52, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %113

61:                                               ; preds = %51
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i64 @ip_hdr(%struct.sk_buff* %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @ip_hdrlen(%struct.sk_buff* %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %64, i64 %67
  %69 = bitcast i8* %68 to %struct.tcphdr*
  store %struct.tcphdr* %69, %struct.tcphdr** %7, align 8
  %70 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %71 = bitcast %struct.tcphdr* %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  %74 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %5, align 8
  %75 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IPT_ECN_OP_SET_ECE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %61
  %81 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %5, align 8
  %82 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %87 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %80, %61
  %89 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %5, align 8
  %90 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IPT_ECN_OP_SET_CWR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %5, align 8
  %97 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %102 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %95, %88
  %104 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %105 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %104, i32 0, i32 2
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %109 = bitcast %struct.tcphdr* %108 to i32*
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @inet_proto_csum_replace2(i32* %105, %struct.sk_buff* %106, i32 %107, i32 %111, i32 0)
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %103, %60, %50, %15
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @inet_proto_csum_replace2(i32*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
