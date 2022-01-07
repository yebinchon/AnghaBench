; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_parse_tlv_tnl_enc_lim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_parse_tlv_tnl_enc_lim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64* }
%struct.ipv6hdr = type { i64 }
%struct.ipv6_opt_hdr = type { i32, i64 }
%struct.frag_hdr = type { i64 }
%struct.ipv6_tlv_tnl_enc_lim = type { i64, i32 }

@NEXTHDR_NONE = common dso_local global i64 0, align 8
@NEXTHDR_FRAGMENT = common dso_local global i64 0, align 8
@NEXTHDR_AUTH = common dso_local global i64 0, align 8
@NEXTHDR_DEST = common dso_local global i64 0, align 8
@IPV6_TLV_TNL_ENCAP_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64*)* @parse_tlv_tnl_enc_lim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tlv_tnl_enc_lim(%struct.sk_buff* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipv6_opt_hdr*, align 8
  %11 = alloca %struct.frag_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6_tlv_tnl_enc_lim*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64* %1, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = bitcast i64* %14 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %15, %struct.ipv6hdr** %6, align 8
  %16 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %17 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  store i32 8, i32* %8, align 4
  br label %19

19:                                               ; preds = %141, %2
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @ipv6_ext_hdr(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @NEXTHDR_NONE, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %148

29:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  %30 = load i64*, i64** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = getelementptr inbounds i64, i64* %33, i64 16
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ugt i64* %34, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %29
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = ptrtoint i64* %41 to i64
  %46 = ptrtoint i64* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = add i64 %51, 16
  %53 = trunc i64 %52 to i32
  %54 = call i32 @pskb_may_pull(%struct.sk_buff* %40, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %39
  br label %148

57:                                               ; preds = %39, %29
  %58 = load i64*, i64** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = bitcast i64* %61 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %62, %struct.ipv6_opt_hdr** %10, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @NEXTHDR_FRAGMENT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  %68 = bitcast %struct.ipv6_opt_hdr* %67 to %struct.frag_hdr*
  store %struct.frag_hdr* %68, %struct.frag_hdr** %11, align 8
  %69 = load %struct.frag_hdr*, %struct.frag_hdr** %11, align 8
  %70 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %148

74:                                               ; preds = %66
  store i32 8, i32* %9, align 4
  br label %89

75:                                               ; preds = %57
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @NEXTHDR_AUTH, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  %81 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 2
  %84 = shl i32 %83, 2
  store i32 %84, i32* %9, align 4
  br label %88

85:                                               ; preds = %75
  %86 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  %87 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88, %74
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @NEXTHDR_DEST, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %141

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 2
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %93, %139
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, 16
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = icmp ugt i64 %99, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %140

106:                                              ; preds = %96
  %107 = load i64*, i64** %5, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = bitcast i64* %110 to %struct.ipv6_tlv_tnl_enc_lim*
  store %struct.ipv6_tlv_tnl_enc_lim* %111, %struct.ipv6_tlv_tnl_enc_lim** %13, align 8
  %112 = load %struct.ipv6_tlv_tnl_enc_lim*, %struct.ipv6_tlv_tnl_enc_lim** %13, align 8
  %113 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, %struct.ipv6_tlv_tnl_enc_lim* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IPV6_TLV_TNL_ENCAP_LIMIT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %106
  %118 = load %struct.ipv6_tlv_tnl_enc_lim*, %struct.ipv6_tlv_tnl_enc_lim** %13, align 8
  %119 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, %struct.ipv6_tlv_tnl_enc_lim* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %3, align 4
  br label %149

124:                                              ; preds = %117, %106
  %125 = load %struct.ipv6_tlv_tnl_enc_lim*, %struct.ipv6_tlv_tnl_enc_lim** %13, align 8
  %126 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, %struct.ipv6_tlv_tnl_enc_lim* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.ipv6_tlv_tnl_enc_lim*, %struct.ipv6_tlv_tnl_enc_lim** %13, align 8
  %131 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, %struct.ipv6_tlv_tnl_enc_lim* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 2
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %12, align 4
  br label %139

136:                                              ; preds = %124
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %136, %129
  br label %96

140:                                              ; preds = %105
  br label %141

141:                                              ; preds = %140, %89
  %142 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  %143 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %7, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %19

148:                                              ; preds = %73, %56, %27
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %122
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i64 @ipv6_ext_hdr(i64) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
