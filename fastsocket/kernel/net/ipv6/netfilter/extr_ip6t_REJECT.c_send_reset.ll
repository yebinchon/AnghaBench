; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_REJECT.c_send_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_REJECT.c_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.ipv6hdr = type { i64, i32, i32, i32, i32 }
%struct.dst_entry = type { i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.flowi = type { i32, i32, i32, i32, i64 }

@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ip6t_REJECT: addr is not unicast.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ip6t_REJECT: Can't get TCP header.\0A\00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"ip6t_REJECT: proto(%d) != IPPROTO_TCP, or too short. otcplen = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ip6t_REJECT: RST is set\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"ip6t_REJECT: TCP checksum is invalid\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"ip6t_REJECT: Can't alloc skb\0A\00", align 1
@RTAX_HOPLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.sk_buff*)* @send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_reset(%struct.net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcphdr, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipv6hdr*, align 8
  %13 = alloca %struct.ipv6hdr*, align 8
  %14 = alloca %struct.dst_entry*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.flowi, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %17)
  store %struct.ipv6hdr* %18, %struct.ipv6hdr** %12, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %14, align 8
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %20 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %19, i32 0, i32 3
  %21 = call i32 @ipv6_addr_type(i32* %20)
  %22 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %27 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %26, i32 0, i32 2
  %28 = call i32 @ipv6_addr_type(i32* %27)
  %29 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25, %2
  %33 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %288

34:                                               ; preds = %25
  %35 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %36 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %15, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %40 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %39, i64 1
  %41 = bitcast %struct.ipv6hdr* %40 to i64*
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i64, i64* %41, i64 %46
  %48 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %38, i64* %47, i64* %15)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %34
  %58 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %288

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %8, align 4
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* @IPPROTO_TCP, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %70, 80
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %59
  %73 = load i64, i64* %15, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %73, i32 %74)
  br label %288

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @skb_copy_bits(%struct.sk_buff* %77, i32 %78, %struct.tcphdr* %6, i32 80)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (...) @BUG()
  br label %83

83:                                               ; preds = %81, %76
  %84 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %288

89:                                               ; preds = %83
  %90 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %91 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %90, i32 0, i32 3
  %92 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %93 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %92, i32 0, i32 2
  %94 = load i32, i32* %8, align 4
  %95 = load i64, i64* @IPPROTO_TCP, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @skb_checksum(%struct.sk_buff* %96, i32 %97, i32 %98, i32 0)
  %100 = call i64 @csum_ipv6_magic(i32* %91, i32* %93, i32 %94, i64 %95, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %89
  %103 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %288

104:                                              ; preds = %89
  %105 = call i32 @memset(%struct.flowi* %16, i32 0, i32 24)
  %106 = load i64, i64* @IPPROTO_TCP, align 8
  %107 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 4
  store i64 %106, i64* %107, align 8
  %108 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 3
  %109 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %110 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %109, i32 0, i32 2
  %111 = call i32 @ipv6_addr_copy(i32* %108, i32* %110)
  %112 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 2
  %113 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %114 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %113, i32 0, i32 3
  %115 = call i32 @ipv6_addr_copy(i32* %112, i32* %114)
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  store i32 %120, i32* %121, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @security_skb_classify_flow(%struct.sk_buff* %122, %struct.flowi* %16)
  %124 = load %struct.net*, %struct.net** %3, align 8
  %125 = call %struct.dst_entry* @ip6_route_output(%struct.net* %124, i32* null, %struct.flowi* %16)
  store %struct.dst_entry* %125, %struct.dst_entry** %14, align 8
  %126 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %127 = icmp eq %struct.dst_entry* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %104
  br label %288

129:                                              ; preds = %104
  %130 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %131 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load %struct.net*, %struct.net** %3, align 8
  %136 = call i64 @xfrm_lookup(%struct.net* %135, %struct.dst_entry** %14, %struct.flowi* %16, i32* null, i32 0)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %129
  br label %288

139:                                              ; preds = %134
  %140 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %141 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 15
  %146 = and i32 %145, -16
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add i32 %147, 15
  %149 = zext i32 %148 to i64
  %150 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %151 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = add i64 %153, 24
  %155 = add i64 %154, 80
  %156 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %157 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %155, %158
  %160 = load i32, i32* @GFP_ATOMIC, align 4
  %161 = call %struct.sk_buff* @alloc_skb(i64 %159, i32 %160)
  store %struct.sk_buff* %161, %struct.sk_buff** %5, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = icmp ne %struct.sk_buff* %162, null
  br i1 %163, label %172, label %164

164:                                              ; preds = %139
  %165 = call i64 (...) @net_ratelimit()
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %164
  %170 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %171 = call i32 @dst_release(%struct.dst_entry* %170)
  br label %288

172:                                              ; preds = %139
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %175 = call i32 @skb_dst_set(%struct.sk_buff* %173, %struct.dst_entry* %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = load i32, i32* %9, align 4
  %178 = zext i32 %177 to i64
  %179 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %180 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %178, %181
  %183 = call i32 @skb_reserve(%struct.sk_buff* %176, i64 %182)
  %184 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %185 = call i64 @skb_put(%struct.sk_buff* %184, i32 24)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %187 = call i32 @skb_reset_network_header(%struct.sk_buff* %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %188)
  store %struct.ipv6hdr* %189, %struct.ipv6hdr** %13, align 8
  %190 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %191 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %190, i32 0, i32 1
  store i32 6, i32* %191, align 8
  %192 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %193 = load i32, i32* @RTAX_HOPLIMIT, align 4
  %194 = call i32 @dst_metric(%struct.dst_entry* %192, i32 %193)
  %195 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %196 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 4
  %197 = load i64, i64* @IPPROTO_TCP, align 8
  %198 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %199 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %201 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %200, i32 0, i32 3
  %202 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %203 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %202, i32 0, i32 2
  %204 = call i32 @ipv6_addr_copy(i32* %201, i32* %203)
  %205 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %206 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %205, i32 0, i32 2
  %207 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %208 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %207, i32 0, i32 3
  %209 = call i32 @ipv6_addr_copy(i32* %206, i32* %208)
  %210 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %211 = call i64 @skb_put(%struct.sk_buff* %210, i32 80)
  %212 = inttoptr i64 %211 to %struct.tcphdr*
  store %struct.tcphdr* %212, %struct.tcphdr** %7, align 8
  %213 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %214 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %213, i32 0, i32 1
  store i32 20, i32* %214, align 4
  %215 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 11
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %218 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %217, i32 0, i32 10
  store i32 %216, i32* %218, align 8
  %219 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 10
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %222 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %221, i32 0, i32 11
  store i32 %220, i32* %222, align 4
  %223 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %172
  store i32 0, i32* %11, align 4
  %227 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 9
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %230 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %229, i32 0, i32 6
  store i64 %228, i64* %230, align 8
  %231 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %232 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %231, i32 0, i32 9
  store i64 0, i64* %232, align 8
  br label %256

233:                                              ; preds = %172
  store i32 1, i32* %11, align 4
  %234 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 6
  %235 = load i64, i64* %234, align 8
  %236 = call i64 @ntohl(i64 %235)
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 8
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %236, %238
  %240 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 7
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %239, %241
  %243 = load i32, i32* %8, align 4
  %244 = zext i32 %243 to i64
  %245 = add nsw i64 %242, %244
  %246 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 2
  %249 = sext i32 %248 to i64
  %250 = sub nsw i64 %245, %249
  %251 = call i64 @htonl(i64 %250)
  %252 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %253 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %252, i32 0, i32 9
  store i64 %251, i64* %253, align 8
  %254 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %255 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %254, i32 0, i32 6
  store i64 0, i64* %255, align 8
  br label %256

256:                                              ; preds = %233, %226
  %257 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %258 = bitcast %struct.tcphdr* %257 to i64*
  %259 = getelementptr inbounds i64, i64* %258, i64 13
  store i64 0, i64* %259, align 8
  %260 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 0
  store i32 1, i32* %261, align 8
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %264 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  %265 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %266 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %265, i32 0, i32 5
  store i64 0, i64* %266, align 8
  %267 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %268 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %267, i32 0, i32 4
  store i64 0, i64* %268, align 8
  %269 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %270 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %269, i32 0, i32 3
  store i64 0, i64* %270, align 8
  %271 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %272 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %271)
  %273 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %272, i32 0, i32 3
  %274 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %275 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %274)
  %276 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %275, i32 0, i32 2
  %277 = load i64, i64* @IPPROTO_TCP, align 8
  %278 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %279 = call i32 @csum_partial(%struct.tcphdr* %278, i32 80, i32 0)
  %280 = call i64 @csum_ipv6_magic(i32* %273, i32* %276, i32 80, i64 %277, i32 %279)
  %281 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %282 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %281, i32 0, i32 3
  store i64 %280, i64* %282, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %285 = call i32 @nf_ct_attach(%struct.sk_buff* %283, %struct.sk_buff* %284)
  %286 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %287 = call i32 @ip6_local_out(%struct.sk_buff* %286)
  br label %288

288:                                              ; preds = %256, %169, %138, %128, %102, %87, %72, %57, %32
  ret void
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i64*, i64*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.tcphdr*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @csum_ipv6_magic(i32*, i32*, i32, i64, i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, %struct.flowi*) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, i32*, %struct.flowi*) #1

declare dso_local i64 @xfrm_lookup(%struct.net*, %struct.dst_entry**, %struct.flowi*, i32*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @csum_partial(%struct.tcphdr*, i32, i32) #1

declare dso_local i32 @nf_ct_attach(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @ip6_local_out(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
