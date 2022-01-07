; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ecn.c_match_tcp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ecn.c_match_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipt_ecn_info = type { i32, i32 }
%struct.tcphdr = type { i32, i32 }

@IPT_ECN_OP_MATCH_ECE = common dso_local global i32 0, align 4
@IPT_ECN_OP_MATCH_CWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ipt_ecn_info*, i32*)* @match_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_tcp(%struct.sk_buff* %0, %struct.ipt_ecn_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipt_ecn_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tcphdr, align 4
  %9 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ipt_ecn_info* %1, %struct.ipt_ecn_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @ip_hdrlen(%struct.sk_buff* %11)
  %13 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %10, i32 %12, i32 8, %struct.tcphdr* %8)
  store %struct.tcphdr* %13, %struct.tcphdr** %9, align 8
  %14 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %15 = icmp eq %struct.tcphdr* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %77

18:                                               ; preds = %3
  %19 = load %struct.ipt_ecn_info*, %struct.ipt_ecn_info** %6, align 8
  %20 = getelementptr inbounds %struct.ipt_ecn_info, %struct.ipt_ecn_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IPT_ECN_OP_MATCH_ECE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = load %struct.ipt_ecn_info*, %struct.ipt_ecn_info** %6, align 8
  %27 = getelementptr inbounds %struct.ipt_ecn_info, %struct.ipt_ecn_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IPT_ECN_OP_MATCH_ECE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %34 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %77

38:                                               ; preds = %32
  br label %46

39:                                               ; preds = %25
  %40 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %41 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %77

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %38
  br label %47

47:                                               ; preds = %46, %18
  %48 = load %struct.ipt_ecn_info*, %struct.ipt_ecn_info** %6, align 8
  %49 = getelementptr inbounds %struct.ipt_ecn_info, %struct.ipt_ecn_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IPT_ECN_OP_MATCH_CWR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %47
  %55 = load %struct.ipt_ecn_info*, %struct.ipt_ecn_info** %6, align 8
  %56 = getelementptr inbounds %struct.ipt_ecn_info, %struct.ipt_ecn_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IPT_ECN_OP_MATCH_CWR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %63 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %77

67:                                               ; preds = %61
  br label %75

68:                                               ; preds = %54
  %69 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %70 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %77

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %67
  br label %76

76:                                               ; preds = %75, %47
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %73, %66, %44, %37, %16
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
