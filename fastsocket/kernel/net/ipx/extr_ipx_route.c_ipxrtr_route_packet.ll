; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_ipx_route.c_ipxrtr_route_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_ipx_route.c_ipxrtr_route_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i32, i8*, i32, i64 }
%struct.sock = type { i64 }
%struct.sockaddr_ipx = type { i32, i32, i64, i32 }
%struct.iovec = type { i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.ipx_sock = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.ipxhdr = type { %struct.TYPE_9__, i8*, %struct.TYPE_8__, i32, i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ipx_route = type { i32, i64, %struct.ipx_interface* }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@ipx_primary_net = common dso_local global %struct.ipx_interface* null, align 8
@ENETUNREACH = common dso_local global i32 0, align 4
@IPX_NODE_LEN = common dso_local global i32 0, align 4
@IPX_FRAME_8023 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipxrtr_route_packet(%struct.sock* %0, %struct.sockaddr_ipx* %1, %struct.iovec* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sockaddr_ipx*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ipx_sock*, align 8
  %13 = alloca %struct.ipx_interface*, align 8
  %14 = alloca %struct.ipxhdr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ipx_route*, align 8
  %18 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sockaddr_ipx* %1, %struct.sockaddr_ipx** %7, align 8
  store %struct.iovec* %2, %struct.iovec** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = call %struct.ipx_sock* @ipx_sk(%struct.sock* %19)
  store %struct.ipx_sock* %20, %struct.ipx_sock** %12, align 8
  store %struct.ipx_route* null, %struct.ipx_route** %17, align 8
  %21 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %5
  %26 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_primary_net, align 8
  %27 = icmp ne %struct.ipx_interface* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_primary_net, align 8
  %30 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %7, align 8
  %33 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_primary_net, align 8
  store %struct.ipx_interface* %34, %struct.ipx_interface** %13, align 8
  br label %49

35:                                               ; preds = %25, %5
  %36 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %7, align 8
  %37 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.ipx_route* @ipxrtr_lookup(i64 %38)
  store %struct.ipx_route* %39, %struct.ipx_route** %17, align 8
  %40 = load i32, i32* @ENETUNREACH, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %18, align 4
  %42 = load %struct.ipx_route*, %struct.ipx_route** %17, align 8
  %43 = icmp ne %struct.ipx_route* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %238

45:                                               ; preds = %35
  %46 = load %struct.ipx_route*, %struct.ipx_route** %17, align 8
  %47 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %46, i32 0, i32 2
  %48 = load %struct.ipx_interface*, %struct.ipx_interface** %47, align 8
  store %struct.ipx_interface* %48, %struct.ipx_interface** %13, align 8
  br label %49

49:                                               ; preds = %45, %28
  %50 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %51 = call i32 @ipxitf_hold(%struct.ipx_interface* %50)
  %52 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %53 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %16, align 4
  %55 = load i64, i64* %9, align 8
  %56 = add i64 40, %55
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %56, %58
  store i64 %59, i64* %15, align 8
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %60, i64 %61, i32 %62, i32* %18)
  store %struct.sk_buff* %63, %struct.sk_buff** %11, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %49
  br label %229

67:                                               ; preds = %49
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @skb_reserve(%struct.sk_buff* %68, i32 %69)
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  store %struct.sock* %71, %struct.sock** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %75 = call i32 @skb_reset_network_header(%struct.sk_buff* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = call i32 @skb_reset_transport_header(%struct.sk_buff* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = call i32 @skb_put(%struct.sk_buff* %78, i64 40)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = call %struct.ipxhdr* @ipx_hdr(%struct.sk_buff* %80)
  store %struct.ipxhdr* %81, %struct.ipxhdr** %14, align 8
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 40
  %84 = trunc i64 %83 to i32
  %85 = call i8* @htons(i32 %84)
  %86 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %87 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = call %struct.TYPE_10__* @IPX_SKB_CB(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %7, align 8
  %92 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %95 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %97 = call %struct.TYPE_10__* @IPX_SKB_CB(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 -1, i32* %99, align 8
  %100 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %101 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ntohs(i32 %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp eq i32 %104, 1107
  br i1 %105, label %109, label %106

106:                                              ; preds = %67
  %107 = load i32, i32* %18, align 4
  %108 = icmp eq i32 %107, 1106
  br i1 %108, label %109, label %125

109:                                              ; preds = %106, %67
  %110 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %111 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %114 = call %struct.TYPE_10__* @IPX_SKB_CB(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i64 %112, i64* %115, align 8
  %116 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %117 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %121 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IPX_NODE_LEN, align 4
  %124 = call i32 @memcpy(i32 %119, i32 %122, i32 %123)
  br label %145

125:                                              ; preds = %106
  %126 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %127 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %132 = call %struct.TYPE_10__* @IPX_SKB_CB(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  store i64 %130, i64* %133, align 8
  %134 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %135 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %139 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %138, i32 0, i32 1
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @IPX_NODE_LEN, align 4
  %144 = call i32 @memcpy(i32 %137, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %125, %109
  %146 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %147 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %150 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %7, align 8
  %153 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %156 = call %struct.TYPE_10__* @IPX_SKB_CB(%struct.sk_buff* %155)
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i64 %154, i64* %157, align 8
  %158 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %159 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %7, align 8
  %163 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @IPX_NODE_LEN, align 4
  %166 = call i32 @memcpy(i32 %161, i32 %164, i32 %165)
  %167 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %7, align 8
  %168 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %171 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %174 = load i64, i64* %9, align 8
  %175 = call i32 @skb_put(%struct.sk_buff* %173, i64 %174)
  %176 = load %struct.iovec*, %struct.iovec** %8, align 8
  %177 = load i64, i64* %9, align 8
  %178 = call i32 @memcpy_fromiovec(i32 %175, %struct.iovec* %176, i64 %177)
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %145
  %182 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %183 = call i32 @kfree_skb(%struct.sk_buff* %182)
  br label %229

184:                                              ; preds = %145
  %185 = load %struct.sock*, %struct.sock** %6, align 8
  %186 = getelementptr inbounds %struct.sock, %struct.sock* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %184
  %190 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %191 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* @IPX_FRAME_8023, align 4
  %194 = call i8* @htons(i32 %193)
  %195 = icmp eq i8* %192, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %189, %184
  %197 = call i8* @htons(i32 65535)
  %198 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %199 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  br label %207

200:                                              ; preds = %189
  %201 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %202 = load i64, i64* %9, align 8
  %203 = add i64 %202, 40
  %204 = call i8* @ipx_cksum(%struct.ipxhdr* %201, i64 %203)
  %205 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %206 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %205, i32 0, i32 1
  store i8* %204, i8** %206, align 8
  br label %207

207:                                              ; preds = %200, %196
  %208 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %210 = load %struct.ipx_route*, %struct.ipx_route** %17, align 8
  %211 = icmp ne %struct.ipx_route* %210, null
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load %struct.ipx_route*, %struct.ipx_route** %17, align 8
  %214 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load %struct.ipx_route*, %struct.ipx_route** %17, align 8
  %219 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  br label %226

221:                                              ; preds = %212, %207
  %222 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %223 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  br label %226

226:                                              ; preds = %221, %217
  %227 = phi i32 [ %220, %217 ], [ %225, %221 ]
  %228 = call i32 @ipxitf_send(%struct.ipx_interface* %208, %struct.sk_buff* %209, i32 %227)
  store i32 %228, i32* %18, align 4
  br label %229

229:                                              ; preds = %226, %181, %66
  %230 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %231 = call i32 @ipxitf_put(%struct.ipx_interface* %230)
  %232 = load %struct.ipx_route*, %struct.ipx_route** %17, align 8
  %233 = icmp ne %struct.ipx_route* %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load %struct.ipx_route*, %struct.ipx_route** %17, align 8
  %236 = call i32 @ipxrtr_put(%struct.ipx_route* %235)
  br label %237

237:                                              ; preds = %234, %229
  br label %238

238:                                              ; preds = %237, %44
  %239 = load i32, i32* %18, align 4
  ret i32 %239
}

declare dso_local %struct.ipx_sock* @ipx_sk(%struct.sock*) #1

declare dso_local %struct.ipx_route* @ipxrtr_lookup(i64) #1

declare dso_local i32 @ipxitf_hold(%struct.ipx_interface*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local %struct.ipxhdr* @ipx_hdr(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.TYPE_10__* @IPX_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy_fromiovec(i32, %struct.iovec*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @ipx_cksum(%struct.ipxhdr*, i64) #1

declare dso_local i32 @ipxitf_send(%struct.ipx_interface*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ipxitf_put(%struct.ipx_interface*) #1

declare dso_local i32 @ipxrtr_put(%struct.ipx_route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
