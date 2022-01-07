; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_parse_gre_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_parse_gre_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tnl_ptk_info = type { i32, i8*, i8*, i32 }
%struct.gre_base_hdr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GRE_VERSION = common dso_local global i32 0, align 4
@GRE_ROUTING = common dso_local global i32 0, align 4
@GRE_CSUM = common dso_local global i32 0, align 4
@GRE_KEY = common dso_local global i32 0, align 4
@GRE_SEQ = common dso_local global i32 0, align 4
@ETH_P_WCCP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tnl_ptk_info*, i32*)* @parse_gre_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_gre_header(%struct.sk_buff* %0, %struct.tnl_ptk_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tnl_ptk_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gre_base_hdr*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tnl_ptk_info* %1, %struct.tnl_ptk_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @ip_hdrlen(%struct.sk_buff* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @pskb_may_pull(%struct.sk_buff* %14, i32 8)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %169

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i64 @skb_network_header(%struct.sk_buff* %25)
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = inttoptr i64 %29 to %struct.gre_base_hdr*
  store %struct.gre_base_hdr* %30, %struct.gre_base_hdr** %9, align 8
  %31 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %32 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GRE_VERSION, align 4
  %35 = load i32, i32* @GRE_ROUTING, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %169

43:                                               ; preds = %24
  %44 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %45 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gre_flags_to_tnl_flags(i32 %46)
  %48 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %49 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %51 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ip_gre_calc_hlen(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @pskb_may_pull(%struct.sk_buff* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %43
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %169

61:                                               ; preds = %43
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i64 @skb_network_header(%struct.sk_buff* %62)
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = inttoptr i64 %66 to %struct.gre_base_hdr*
  store %struct.gre_base_hdr* %67, %struct.gre_base_hdr** %9, align 8
  %68 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %69 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %72 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %74 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %73, i64 1
  %75 = bitcast %struct.gre_base_hdr* %74 to i8**
  store i8** %75, i8*** %10, align 8
  %76 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %77 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @GRE_CSUM, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %61
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call i64 @check_checksum(%struct.sk_buff* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32*, i32** %7, align 8
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %169

90:                                               ; preds = %82
  %91 = load i8**, i8*** %10, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i32 1
  store i8** %92, i8*** %10, align 8
  br label %93

93:                                               ; preds = %90, %61
  %94 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %95 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @GRE_KEY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i8**, i8*** %10, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %104 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load i8**, i8*** %10, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %106, i8*** %10, align 8
  br label %110

107:                                              ; preds = %93
  %108 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %109 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %108, i32 0, i32 2
  store i8* null, i8** %109, align 8
  br label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %112 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @GRE_SEQ, align 4
  %115 = and i32 %113, %114
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load i8**, i8*** %10, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %122 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i8**, i8*** %10, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  store i8** %124, i8*** %10, align 8
  br label %128

125:                                              ; preds = %110
  %126 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %127 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %126, i32 0, i32 1
  store i8* null, i8** %127, align 8
  br label %128

128:                                              ; preds = %125, %118
  %129 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %130 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %128
  %134 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %135 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ETH_P_WCCP, align 4
  %138 = call i32 @htons(i32 %137)
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %162

140:                                              ; preds = %133
  %141 = load i32, i32* @ETH_P_IP, align 4
  %142 = call i32 @htons(i32 %141)
  %143 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %144 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i8**, i8*** %10, align 8
  %146 = bitcast i8** %145 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 240
  %149 = icmp ne i32 %148, 64
  br i1 %149, label %150, label %161

150:                                              ; preds = %140
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 4
  store i32 %152, i32* %11, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @pskb_may_pull(%struct.sk_buff* %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %169

160:                                              ; preds = %150
  br label %161

161:                                              ; preds = %160, %140
  br label %162

162:                                              ; preds = %161, %133, %128
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %166 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @iptunnel_pull_header(%struct.sk_buff* %163, i32 %164, i32 %167)
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %162, %157, %86, %58, %40, %21
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @gre_flags_to_tnl_flags(i32) #1

declare dso_local i32 @ip_gre_calc_hlen(i32) #1

declare dso_local i64 @check_checksum(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @iptunnel_pull_header(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
