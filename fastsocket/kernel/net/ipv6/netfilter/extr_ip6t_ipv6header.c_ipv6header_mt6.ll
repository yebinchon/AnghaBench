; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_ipv6header.c_ipv6header_mt6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_ipv6header.c_ipv6header_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.ip6t_ipv6header_info* }
%struct.ip6t_ipv6header_info = type { i32, i32, i64 }
%struct.ipv6_opt_hdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NEXTHDR_NONE = common dso_local global i32 0, align 4
@MASK_NONE = common dso_local global i32 0, align 4
@NEXTHDR_ESP = common dso_local global i32 0, align 4
@MASK_ESP = common dso_local global i32 0, align 4
@MASK_HOPOPTS = common dso_local global i32 0, align 4
@MASK_ROUTING = common dso_local global i32 0, align 4
@MASK_FRAGMENT = common dso_local global i32 0, align 4
@MASK_AH = common dso_local global i32 0, align 4
@MASK_DSTOPTS = common dso_local global i32 0, align 4
@MASK_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @ipv6header_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6header_mt6(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ip6t_ipv6header_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipv6_opt_hdr*, align 8
  %12 = alloca %struct.ipv6_opt_hdr, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %14 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %15 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %14, i32 0, i32 0
  %16 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %15, align 8
  store %struct.ip6t_ipv6header_info* %16, %struct.ip6t_ipv6header_info** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sub i32 %23, %24
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %113, %2
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @ip6t_ext_hdr(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %114

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @NEXTHDR_NONE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @MASK_NONE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %114

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %167

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @NEXTHDR_ESP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @MASK_ESP, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %114

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call %struct.ipv6_opt_hdr* @skb_header_pointer(%struct.sk_buff* %51, i32 %52, i32 8, %struct.ipv6_opt_hdr* %12)
  store %struct.ipv6_opt_hdr* %53, %struct.ipv6_opt_hdr** %11, align 8
  %54 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %11, align 8
  %55 = icmp eq %struct.ipv6_opt_hdr* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 130
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 8, i32* %13, align 4
  br label %74

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 132
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %11, align 8
  %66 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 2
  %69 = shl i32 %68, 2
  store i32 %69, i32* %13, align 4
  br label %73

70:                                               ; preds = %61
  %71 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %11, align 8
  %72 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %71)
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %70, %64
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32, i32* %9, align 4
  switch i32 %75, label %96 [
    i32 129, label %76
    i32 128, label %80
    i32 130, label %84
    i32 132, label %88
    i32 131, label %92
  ]

76:                                               ; preds = %74
  %77 = load i32, i32* @MASK_HOPOPTS, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %97

80:                                               ; preds = %74
  %81 = load i32, i32* @MASK_ROUTING, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %97

84:                                               ; preds = %74
  %85 = load i32, i32* @MASK_FRAGMENT, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %97

88:                                               ; preds = %74
  %89 = load i32, i32* @MASK_AH, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %97

92:                                               ; preds = %74
  %93 = load i32, i32* @MASK_DSTOPTS, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %97

96:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %167

97:                                               ; preds = %92, %88, %84, %80, %76
  %98 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %11, align 8
  %99 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ugt i32 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %97
  br label %114

113:                                              ; preds = %97
  br label %26

114:                                              ; preds = %112, %46, %34, %26
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @NEXTHDR_NONE, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @NEXTHDR_ESP, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @MASK_PROTO, align 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %122, %118, %114
  %127 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %128 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %126
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %134 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = xor i32 %132, %135
  %137 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %138 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %136, %139
  %141 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %142 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %140, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %3, align 4
  br label %167

148:                                              ; preds = %126
  %149 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %150 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %156 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %154, %157
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %3, align 4
  br label %167

160:                                              ; preds = %148
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %163 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %161, %164
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %160, %153, %131, %96, %41
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip6t_ext_hdr(i32) #1

declare dso_local %struct.ipv6_opt_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ipv6_opt_hdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
