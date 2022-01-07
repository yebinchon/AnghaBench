; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_ip.c_ebt_ip_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_ip.c_ebt_ip_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.ebt_ip_info* }
%struct.ebt_ip_info = type { i32, i64, i32, i32, i32, i32, i64, i64*, i64* }
%struct.iphdr = type { i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.tcpudphdr = type { i64, i32, i32, i64, i32, i32, i32, i32 }

@EBT_IP_TOS = common dso_local global i32 0, align 4
@EBT_IP_SOURCE = common dso_local global i32 0, align 4
@EBT_IP_DEST = common dso_local global i32 0, align 4
@EBT_IP_PROTO = common dso_local global i32 0, align 4
@EBT_IP_DPORT = common dso_local global i32 0, align 4
@EBT_IP_SPORT = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @ebt_ip_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_ip_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ebt_ip_info*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.iphdr, align 8
  %9 = alloca %struct.tcpudphdr*, align 8
  %10 = alloca %struct.tcpudphdr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %13 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %14 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %13, i32 0, i32 0
  %15 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %14, align 8
  store %struct.ebt_ip_info* %15, %struct.ebt_ip_info** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = bitcast %struct.iphdr* %8 to %struct.tcpudphdr*
  %18 = call %struct.tcpudphdr* @skb_header_pointer(%struct.sk_buff* %16, i32 0, i32 40, %struct.tcpudphdr* %17)
  %19 = bitcast %struct.tcpudphdr* %18 to %struct.iphdr*
  store %struct.iphdr* %19, %struct.iphdr** %7, align 8
  %20 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %21 = icmp eq %struct.iphdr* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %219

23:                                               ; preds = %2
  %24 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %25 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @EBT_IP_TOS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %32 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @EBT_IP_TOS, align 4
  %40 = call i64 @FWINV(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %219

43:                                               ; preds = %30, %23
  %44 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %45 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EBT_IP_SOURCE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %55 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %53, %56
  %58 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %59 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @EBT_IP_SOURCE, align 4
  %64 = call i64 @FWINV(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %219

67:                                               ; preds = %50, %43
  %68 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %69 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @EBT_IP_DEST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %67
  %75 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %79 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %77, %80
  %82 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %83 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %81, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* @EBT_IP_DEST, align 4
  %88 = call i64 @FWINV(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %219

91:                                               ; preds = %74, %67
  %92 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %93 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @EBT_IP_PROTO, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %218

98:                                               ; preds = %91
  %99 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %100 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %103 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* @EBT_IP_PROTO, align 4
  %108 = call i64 @FWINV(i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %219

111:                                              ; preds = %98
  %112 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %113 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @EBT_IP_DPORT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %111
  %119 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %120 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @EBT_IP_SPORT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  br label %219

126:                                              ; preds = %118, %111
  %127 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %128 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ntohs(i32 %129)
  %131 = load i32, i32* @IP_OFFSET, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %219

135:                                              ; preds = %126
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %138 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %139, 4
  %141 = call %struct.tcpudphdr* @skb_header_pointer(%struct.sk_buff* %136, i32 %140, i32 40, %struct.tcpudphdr* %10)
  store %struct.tcpudphdr* %141, %struct.tcpudphdr** %9, align 8
  %142 = load %struct.tcpudphdr*, %struct.tcpudphdr** %9, align 8
  %143 = icmp eq %struct.tcpudphdr* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %219

145:                                              ; preds = %135
  %146 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %147 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @EBT_IP_DPORT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %181

152:                                              ; preds = %145
  %153 = load %struct.tcpudphdr*, %struct.tcpudphdr** %9, align 8
  %154 = getelementptr inbounds %struct.tcpudphdr, %struct.tcpudphdr* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ntohs(i32 %155)
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %11, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %160 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %159, i32 0, i32 7
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %158, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %152
  %166 = load i64, i64* %11, align 8
  %167 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %168 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %167, i32 0, i32 7
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %166, %171
  br label %173

173:                                              ; preds = %165, %152
  %174 = phi i1 [ true, %152 ], [ %172, %165 ]
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* @EBT_IP_DPORT, align 4
  %177 = call i64 @FWINV(i32 %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %219

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %145
  %182 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %183 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @EBT_IP_SPORT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %217

188:                                              ; preds = %181
  %189 = load %struct.tcpudphdr*, %struct.tcpudphdr** %9, align 8
  %190 = getelementptr inbounds %struct.tcpudphdr, %struct.tcpudphdr* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ntohs(i32 %191)
  %193 = sext i32 %192 to i64
  store i64 %193, i64* %12, align 8
  %194 = load i64, i64* %12, align 8
  %195 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %196 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %195, i32 0, i32 8
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %194, %199
  br i1 %200, label %209, label %201

201:                                              ; preds = %188
  %202 = load i64, i64* %12, align 8
  %203 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %204 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %203, i32 0, i32 8
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp sgt i64 %202, %207
  br label %209

209:                                              ; preds = %201, %188
  %210 = phi i1 [ true, %188 ], [ %208, %201 ]
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* @EBT_IP_SPORT, align 4
  %213 = call i64 @FWINV(i32 %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  store i32 0, i32* %3, align 4
  br label %219

216:                                              ; preds = %209
  br label %217

217:                                              ; preds = %216, %181
  br label %218

218:                                              ; preds = %217, %91
  store i32 1, i32* %3, align 4
  br label %219

219:                                              ; preds = %218, %215, %179, %144, %134, %125, %110, %90, %66, %42, %22
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local %struct.tcpudphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcpudphdr*) #1

declare dso_local i64 @FWINV(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
