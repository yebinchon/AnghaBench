; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_ip6.c_ebt_ip6_mt_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_ip6.c_ebt_ip6_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ebt_ip6_info*, %struct.ebt_entry* }
%struct.ebt_ip6_info = type { i32, i32, i64, i64*, i64* }
%struct.ebt_entry = type { i64, i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@EBT_IPROTO = common dso_local global i32 0, align 4
@EBT_IP6_MASK = common dso_local global i32 0, align 4
@EBT_IP6_DPORT = common dso_local global i32 0, align 4
@EBT_IP6_SPORT = common dso_local global i32 0, align 4
@EBT_IP6_PROTO = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_UDPLITE = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@IPPROTO_DCCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @ebt_ip6_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_ip6_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.ebt_entry*, align 8
  %5 = alloca %struct.ebt_ip6_info*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 1
  %8 = load %struct.ebt_entry*, %struct.ebt_entry** %7, align 8
  store %struct.ebt_entry* %8, %struct.ebt_entry** %4, align 8
  %9 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %9, i32 0, i32 0
  %11 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %10, align 8
  store %struct.ebt_ip6_info* %11, %struct.ebt_ip6_info** %5, align 8
  %12 = load %struct.ebt_entry*, %struct.ebt_entry** %4, align 8
  %13 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_IPV6, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.ebt_entry*, %struct.ebt_entry** %4, align 8
  %20 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EBT_IPROTO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %133

26:                                               ; preds = %18
  %27 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %28 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EBT_IP6_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %36 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EBT_IP6_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %26
  store i32 0, i32* %2, align 4
  br label %133

43:                                               ; preds = %34
  %44 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %45 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EBT_IP6_DPORT, align 4
  %48 = load i32, i32* @EBT_IP6_SPORT, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %43
  %53 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %54 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @EBT_IP6_PROTO, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %133

60:                                               ; preds = %52
  %61 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %62 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IPPROTO_TCP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %60
  %67 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %68 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IPPROTO_UDP, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %74 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IPPROTO_UDPLITE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %80 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IPPROTO_SCTP, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %86 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IPPROTO_DCCP, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %133

91:                                               ; preds = %84, %78, %72, %66, %60
  br label %92

92:                                               ; preds = %91, %43
  %93 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %94 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @EBT_IP6_DPORT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %92
  %100 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %101 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %100, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %106 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %105, i32 0, i32 3
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %104, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %133

112:                                              ; preds = %99, %92
  %113 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %114 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @EBT_IP6_SPORT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %112
  %120 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %121 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %120, i32 0, i32 4
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %126 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %125, i32 0, i32 4
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %124, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %133

132:                                              ; preds = %119, %112
  store i32 1, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %131, %111, %90, %59, %42, %25
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
