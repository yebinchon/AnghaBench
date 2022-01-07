; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c___ip_make_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c___ip_make_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32, i32, i32, i32*, i32*, i64, i32, %struct.sk_buff* }
%struct.sock = type { i64, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.inet_cork = type { i32, i32*, i32, %struct.ip_options* }
%struct.ip_options = type { i32 }
%struct.inet_sock = type { i64, i32, i32 }
%struct.net = type { i32 }
%struct.rtable = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iphdr = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.sk_buff* }
%struct.icmphdr = type { i32 }

@IP_PMTUDISC_DO = common dso_local global i64 0, align 8
@IP_DF = common dso_local global i32 0, align 4
@IPCORK_OPT = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__ip_make_skb(%struct.sock* %0, %struct.sk_buff_head* %1, %struct.inet_cork* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.inet_cork*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca %struct.inet_sock*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.ip_options*, align 8
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca %struct.iphdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store %struct.inet_cork* %2, %struct.inet_cork** %6, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call %struct.inet_sock* @inet_sk(%struct.sock* %17)
  store %struct.inet_sock* %18, %struct.inet_sock** %10, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.net* @sock_net(%struct.sock* %19)
  store %struct.net* %20, %struct.net** %11, align 8
  store %struct.ip_options* null, %struct.ip_options** %12, align 8
  %21 = load %struct.inet_cork*, %struct.inet_cork** %6, align 8
  %22 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.rtable*
  store %struct.rtable* %24, %struct.rtable** %13, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %26 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %7, align 8
  %27 = icmp eq %struct.sk_buff* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %239

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.sk_buff** %32, %struct.sk_buff*** %9, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i64 @skb_network_header(%struct.sk_buff* %36)
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call i32 @skb_network_offset(%struct.sk_buff* %41)
  %43 = call i32 @__skb_pull(%struct.sk_buff* %40, i32 %42)
  br label %44

44:                                               ; preds = %39, %29
  br label %45

45:                                               ; preds = %49, %44
  %46 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %47 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %8, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i32 @skb_network_header_len(%struct.sk_buff* %51)
  %53 = call i32 @__skb_pull(%struct.sk_buff* %50, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 9
  store %struct.sk_buff** %57, %struct.sk_buff*** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 6
  store i32* null, i32** %82, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 5
  store i32* null, i32** %84, align 8
  br label %45

85:                                               ; preds = %45
  %86 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %87 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IP_PMTUDISC_DO, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %96 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IP_PMTUDISC_DO, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %116, label %100

100:                                              ; preds = %94
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.rtable*, %struct.rtable** %13, align 8
  %105 = getelementptr inbounds %struct.rtable, %struct.rtable* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i64 @dst_mtu(i32* %106)
  %108 = icmp sle i64 %103, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %100
  %110 = load %struct.sock*, %struct.sock** %4, align 8
  %111 = load %struct.rtable*, %struct.rtable** %13, align 8
  %112 = getelementptr inbounds %struct.rtable, %struct.rtable* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i64 @ip_dont_fragment(%struct.sock* %110, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109, %94
  %117 = load i32, i32* @IP_DF, align 4
  %118 = call i32 @htons(i32 %117)
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %116, %109, %100
  %120 = load %struct.inet_cork*, %struct.inet_cork** %6, align 8
  %121 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IPCORK_OPT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.inet_cork*, %struct.inet_cork** %6, align 8
  %128 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %127, i32 0, i32 3
  %129 = load %struct.ip_options*, %struct.ip_options** %128, align 8
  store %struct.ip_options* %129, %struct.ip_options** %12, align 8
  br label %130

130:                                              ; preds = %126, %119
  %131 = load %struct.rtable*, %struct.rtable** %13, align 8
  %132 = getelementptr inbounds %struct.rtable, %struct.rtable* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @RTN_MULTICAST, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %138 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %16, align 4
  br label %146

140:                                              ; preds = %130
  %141 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %142 = load %struct.rtable*, %struct.rtable** %13, align 8
  %143 = getelementptr inbounds %struct.rtable, %struct.rtable* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = call i32 @ip_select_ttl(%struct.inet_sock* %141, i32* %144)
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %140, %136
  %147 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to %struct.iphdr*
  store %struct.iphdr* %150, %struct.iphdr** %14, align 8
  %151 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %152 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %151, i32 0, i32 0
  store i32 4, i32* %152, align 8
  %153 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 1
  store i32 5, i32* %154, align 4
  %155 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %156 = icmp ne %struct.ip_options* %155, null
  br i1 %156, label %157, label %173

157:                                              ; preds = %146
  %158 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %159 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = ashr i32 %160, 2
  %162 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %163 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %168 = load %struct.inet_cork*, %struct.inet_cork** %6, align 8
  %169 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.rtable*, %struct.rtable** %13, align 8
  %172 = call i32 @ip_options_build(%struct.sk_buff* %166, %struct.ip_options* %167, i32 %170, %struct.rtable* %171, i32 0)
  br label %173

173:                                              ; preds = %157, %146
  %174 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %175 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %178 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %177, i32 0, i32 7
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %181 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 4
  %182 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %183 = load %struct.rtable*, %struct.rtable** %13, align 8
  %184 = getelementptr inbounds %struct.rtable, %struct.rtable* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load %struct.sock*, %struct.sock** %4, align 8
  %187 = call i32 @ip_select_ident(%struct.iphdr* %182, i32* %185, %struct.sock* %186)
  %188 = load i32, i32* %16, align 4
  %189 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %190 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 8
  %191 = load %struct.sock*, %struct.sock** %4, align 8
  %192 = getelementptr inbounds %struct.sock, %struct.sock* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %195 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %194, i32 0, i32 2
  store i64 %193, i64* %195, align 8
  %196 = load %struct.rtable*, %struct.rtable** %13, align 8
  %197 = getelementptr inbounds %struct.rtable, %struct.rtable* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %200 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 4
  %201 = load %struct.rtable*, %struct.rtable** %13, align 8
  %202 = getelementptr inbounds %struct.rtable, %struct.rtable* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %205 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 8
  %206 = load %struct.sock*, %struct.sock** %4, align 8
  %207 = getelementptr inbounds %struct.sock, %struct.sock* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 8
  %211 = load %struct.sock*, %struct.sock** %4, align 8
  %212 = getelementptr inbounds %struct.sock, %struct.sock* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  %216 = load %struct.inet_cork*, %struct.inet_cork** %6, align 8
  %217 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %216, i32 0, i32 1
  store i32* null, i32** %217, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %219 = load %struct.rtable*, %struct.rtable** %13, align 8
  %220 = getelementptr inbounds %struct.rtable, %struct.rtable* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = call i32 @skb_dst_set(%struct.sk_buff* %218, i32* %221)
  %223 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %224 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @IPPROTO_ICMP, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %173
  %229 = load %struct.net*, %struct.net** %11, align 8
  %230 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %231 = call i64 @skb_transport_header(%struct.sk_buff* %230)
  %232 = inttoptr i64 %231 to %struct.icmphdr*
  %233 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @icmp_out_count(%struct.net* %229, i32 %234)
  br label %236

236:                                              ; preds = %228, %173
  %237 = load %struct.inet_cork*, %struct.inet_cork** %6, align 8
  %238 = call i32 @ip_cork_release(%struct.inet_cork* %237)
  br label %239

239:                                              ; preds = %236, %28
  %240 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %240
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i64 @dst_mtu(i32*) #1

declare dso_local i64 @ip_dont_fragment(%struct.sock*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_select_ttl(%struct.inet_sock*, i32*) #1

declare dso_local i32 @ip_options_build(%struct.sk_buff*, %struct.ip_options*, i32, %struct.rtable*, i32) #1

declare dso_local i32 @ip_select_ident(%struct.iphdr*, i32*, %struct.sock*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @icmp_out_count(%struct.net*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @ip_cork_release(%struct.inet_cork*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
