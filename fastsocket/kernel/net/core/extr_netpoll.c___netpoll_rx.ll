; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c___netpoll_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c___netpoll_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.netpoll_info* }
%struct.netpoll_info = type { i32, %struct.netpoll* }
%struct.netpoll = type { i64, i64, i32, i32 (%struct.netpoll*, i32, i8*, i32)* }
%struct.iphdr = type { i32, i32, i64, i64, i64, i32 }
%struct.udphdr = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_P_ARP = common dso_local global i32 0, align 4
@trapped = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__netpoll_rx(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.udphdr*, align 8
  %9 = alloca %struct.netpoll_info*, align 8
  %10 = alloca %struct.netpoll*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.netpoll_info*, %struct.netpoll_info** %14, align 8
  store %struct.netpoll_info* %15, %struct.netpoll_info** %9, align 8
  %16 = load %struct.netpoll_info*, %struct.netpoll_info** %9, align 8
  %17 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %16, i32 0, i32 1
  %18 = load %struct.netpoll*, %struct.netpoll** %17, align 8
  store %struct.netpoll* %18, %struct.netpoll** %10, align 8
  %19 = load %struct.netpoll*, %struct.netpoll** %10, align 8
  %20 = icmp ne %struct.netpoll* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %236

22:                                               ; preds = %1
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ARPHRD_ETHER, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %236

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @ETH_P_ARP, align 4
  %36 = call i64 @htons(i32 %35)
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = call i64 @atomic_read(i32* @trapped)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.netpoll_info*, %struct.netpoll_info** %9, align 8
  %43 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %42, i32 0, i32 0
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i32 @skb_queue_tail(i32* %43, %struct.sk_buff* %44)
  store i32 1, i32* %2, align 4
  br label %243

46:                                               ; preds = %38, %31
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohs(i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @ETH_P_IP, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %236

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PACKET_OTHERHOST, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %236

63:                                               ; preds = %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call i64 @skb_shared(%struct.sk_buff* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %236

68:                                               ; preds = %63
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.iphdr*
  store %struct.iphdr* %72, %struct.iphdr** %7, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @pskb_may_pull(%struct.sk_buff* %73, i32 40)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %236

77:                                               ; preds = %68
  %78 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %79 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 5
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %84 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 4
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %77
  br label %236

88:                                               ; preds = %82
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %90 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %91 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %92, 4
  %94 = call i32 @pskb_may_pull(%struct.sk_buff* %89, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %236

97:                                               ; preds = %88
  %98 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %99 = bitcast %struct.iphdr* %98 to i32*
  %100 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %101 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @ip_fast_csum(i32* %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %236

106:                                              ; preds = %97
  %107 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %108 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ntohs(i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %119 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %120, 4
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116, %106
  br label %236

124:                                              ; preds = %116
  %125 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %236

130:                                              ; preds = %124
  %131 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %132 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @IPPROTO_UDP, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %236

137:                                              ; preds = %130
  %138 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %139 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %140, 4
  %142 = load i32, i32* %5, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %5, align 4
  %144 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %145 = bitcast %struct.iphdr* %144 to i8*
  %146 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %147 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %148, 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %145, i64 %150
  %152 = bitcast i8* %151 to %struct.udphdr*
  store %struct.udphdr* %152, %struct.udphdr** %8, align 8
  %153 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %154 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ntohs(i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %137
  br label %236

161:                                              ; preds = %137
  %162 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %163 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %166 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %169 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @checksum_udp(%struct.sk_buff* %162, %struct.udphdr* %163, i32 %164, i64 %167, i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %161
  br label %236

174:                                              ; preds = %161
  %175 = load %struct.netpoll*, %struct.netpoll** %10, align 8
  %176 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load %struct.netpoll*, %struct.netpoll** %10, align 8
  %181 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %184 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %182, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %236

188:                                              ; preds = %179, %174
  %189 = load %struct.netpoll*, %struct.netpoll** %10, align 8
  %190 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load %struct.netpoll*, %struct.netpoll** %10, align 8
  %195 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %198 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %196, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %236

202:                                              ; preds = %193, %188
  %203 = load %struct.netpoll*, %struct.netpoll** %10, align 8
  %204 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = load %struct.netpoll*, %struct.netpoll** %10, align 8
  %209 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %212 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ntohs(i32 %213)
  %215 = icmp ne i32 %210, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %207
  br label %236

217:                                              ; preds = %207, %202
  %218 = load %struct.netpoll*, %struct.netpoll** %10, align 8
  %219 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %218, i32 0, i32 3
  %220 = load i32 (%struct.netpoll*, i32, i8*, i32)*, i32 (%struct.netpoll*, i32, i8*, i32)** %219, align 8
  %221 = load %struct.netpoll*, %struct.netpoll** %10, align 8
  %222 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %223 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ntohs(i32 %224)
  %226 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %227 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %226, i64 1
  %228 = bitcast %struct.udphdr* %227 to i8*
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = sub i64 %230, 12
  %232 = trunc i64 %231 to i32
  %233 = call i32 %220(%struct.netpoll* %221, i32 %225, i8* %228, i32 %232)
  %234 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %235 = call i32 @kfree_skb(%struct.sk_buff* %234)
  store i32 1, i32* %2, align 4
  br label %243

236:                                              ; preds = %216, %201, %187, %173, %160, %136, %129, %123, %105, %96, %87, %76, %67, %62, %55, %30, %21
  %237 = call i64 @atomic_read(i32* @trapped)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %241 = call i32 @kfree_skb(%struct.sk_buff* %240)
  store i32 1, i32* %2, align 4
  br label %243

242:                                              ; preds = %236
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %242, %239, %217, %41
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @ip_fast_csum(i32*, i32) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i64 @checksum_udp(%struct.sk_buff*, %struct.udphdr*, i32, i64, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
