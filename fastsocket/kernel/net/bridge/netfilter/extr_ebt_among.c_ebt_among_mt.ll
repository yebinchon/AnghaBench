; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_among.c_ebt_among_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_among.c_ebt_among_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.ebt_among_info* }
%struct.ebt_among_info = type { i32 }
%struct.ebt_mac_wormhash = type { i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@EBT_AMONG_SRC_NEG = common dso_local global i32 0, align 4
@EBT_AMONG_DST_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @ebt_among_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_among_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ebt_among_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ebt_mac_wormhash*, align 8
  %10 = alloca %struct.ebt_mac_wormhash*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %13 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %14 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %13, i32 0, i32 0
  %15 = load %struct.ebt_among_info*, %struct.ebt_among_info** %14, align 8
  store %struct.ebt_among_info* %15, %struct.ebt_among_info** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.ebt_among_info*, %struct.ebt_among_info** %6, align 8
  %17 = call %struct.ebt_mac_wormhash* @ebt_among_wh_dst(%struct.ebt_among_info* %16)
  store %struct.ebt_mac_wormhash* %17, %struct.ebt_mac_wormhash** %9, align 8
  %18 = load %struct.ebt_among_info*, %struct.ebt_among_info** %6, align 8
  %19 = call %struct.ebt_mac_wormhash* @ebt_among_wh_src(%struct.ebt_among_info* %18)
  store %struct.ebt_mac_wormhash* %19, %struct.ebt_mac_wormhash** %10, align 8
  %20 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %10, align 8
  %21 = icmp ne %struct.ebt_mac_wormhash* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i64 @get_ip_src(%struct.sk_buff* %27, i32* %12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %92

31:                                               ; preds = %22
  %32 = load %struct.ebt_among_info*, %struct.ebt_among_info** %6, align 8
  %33 = getelementptr inbounds %struct.ebt_among_info, %struct.ebt_among_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EBT_AMONG_SRC_NEG, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @ebt_mac_wormhash_contains(%struct.ebt_mac_wormhash* %39, i8* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %92

45:                                               ; preds = %38
  br label %54

46:                                               ; preds = %31
  %47 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @ebt_mac_wormhash_contains(%struct.ebt_mac_wormhash* %47, i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %92

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %9, align 8
  %57 = icmp ne %struct.ebt_mac_wormhash* %56, null
  br i1 %57, label %58, label %91

58:                                               ; preds = %55
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %7, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i64 @get_ip_dst(%struct.sk_buff* %63, i32* %11)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %92

67:                                               ; preds = %58
  %68 = load %struct.ebt_among_info*, %struct.ebt_among_info** %6, align 8
  %69 = getelementptr inbounds %struct.ebt_among_info, %struct.ebt_among_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EBT_AMONG_DST_NEG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %67
  %75 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %9, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @ebt_mac_wormhash_contains(%struct.ebt_mac_wormhash* %75, i8* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %92

81:                                               ; preds = %74
  br label %90

82:                                               ; preds = %67
  %83 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %9, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @ebt_mac_wormhash_contains(%struct.ebt_mac_wormhash* %83, i8* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %92

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %81
  br label %91

91:                                               ; preds = %90, %55
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %88, %80, %66, %52, %44, %30
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.ebt_mac_wormhash* @ebt_among_wh_dst(%struct.ebt_among_info*) #1

declare dso_local %struct.ebt_mac_wormhash* @ebt_among_wh_src(%struct.ebt_among_info*) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @get_ip_src(%struct.sk_buff*, i32*) #1

declare dso_local i64 @ebt_mac_wormhash_contains(%struct.ebt_mac_wormhash*, i8*, i32) #1

declare dso_local i64 @get_ip_dst(%struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
