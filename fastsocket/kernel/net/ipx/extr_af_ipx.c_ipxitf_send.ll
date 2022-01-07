; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i64, i32, %struct.datalink_proto*, %struct.net_device* }
%struct.datalink_proto = type { i32 (%struct.datalink_proto*, %struct.sk_buff*, i8*)* }
%struct.sk_buff = type { i32, %struct.net_device*, i64 }
%struct.net_device = type { i32, i32, i8* }
%struct.ipxhdr = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@IPX_NODE_LEN = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ipx_internal_net = common dso_local global %struct.ipx_interface* null, align 8
@ipx_broadcast_node = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ipxcfg_max_hops = common dso_local global i64 0, align 8
@ETH_P_IPX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipxitf_send(%struct.ipx_interface* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipx_interface*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipxhdr*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.datalink_proto*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.ipx_interface* %0, %struct.ipx_interface** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.ipxhdr* @ipx_hdr(%struct.sk_buff* %17)
  store %struct.ipxhdr* %18, %struct.ipxhdr** %8, align 8
  %19 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %20 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %19, i32 0, i32 3
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %9, align 8
  %22 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %23 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %22, i32 0, i32 2
  %24 = load %struct.datalink_proto*, %struct.datalink_proto** %23, align 8
  store %struct.datalink_proto* %24, %struct.datalink_proto** %10, align 8
  %25 = load i32, i32* @IPX_NODE_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  store i32 1, i32* %13, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call %struct.TYPE_8__* @IPX_SKB_CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ipxhdr*, %struct.ipxhdr** %8, align 8
  %34 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call %struct.TYPE_8__* @IPX_SKB_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ipxhdr*, %struct.ipxhdr** %8, align 8
  %40 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call %struct.TYPE_8__* @IPX_SKB_CB(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ipxhdr*, %struct.ipxhdr** %8, align 8
  %47 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call %struct.TYPE_8__* @IPX_SKB_CB(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %3
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = getelementptr inbounds i32, i32* %59, i64 24
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call %struct.TYPE_8__* @IPX_SKB_CB(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = getelementptr inbounds i32, i32* %60, i64 %67
  store i32* %68, i32** %15, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call %struct.TYPE_8__* @IPX_SKB_CB(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %15, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = call %struct.TYPE_8__* @IPX_SKB_CB(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  br label %79

79:                                               ; preds = %55, %3
  %80 = load %struct.datalink_proto*, %struct.datalink_proto** %10, align 8
  %81 = icmp ne %struct.datalink_proto* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load %struct.net_device*, %struct.net_device** %9, align 8
  %84 = icmp ne %struct.net_device* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.net_device*, %struct.net_device** %9, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IFF_LOOPBACK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85, %82, %79
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %92, %85
  %94 = load %struct.ipxhdr*, %struct.ipxhdr** %8, align 8
  %95 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %99 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %142

102:                                              ; preds = %93
  %103 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %104 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_internal_net, align 8
  %105 = icmp eq %struct.ipx_interface* %103, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %108 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* @IPX_NODE_LEN, align 4
  %112 = call i32 @memcmp(i32 %109, i8* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %106, %102
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = call i32 @skb_orphan(%struct.sk_buff* %115)
  %117 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = call i32 @ipxitf_demux_socket(%struct.ipx_interface* %117, %struct.sk_buff* %118, i32 0)
  store i32 %119, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %219

120:                                              ; preds = %106
  %121 = load i32, i32* @ipx_broadcast_node, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* @IPX_NODE_LEN, align 4
  %124 = call i32 @memcmp(i32 %121, i8* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %141, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = call i32 @skb_orphan(%struct.sk_buff* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @ipxitf_demux_socket(%struct.ipx_interface* %133, %struct.sk_buff* %134, i32 %135)
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  br label %218

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %120
  br label %142

142:                                              ; preds = %141, %93
  %143 = load %struct.ipxhdr*, %struct.ipxhdr** %8, align 8
  %144 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %148 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %146, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %142
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = load i32, i32* @GFP_ATOMIC, align 4
  %154 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %152, i32 %153)
  store %struct.sk_buff* %154, %struct.sk_buff** %6, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = icmp ne %struct.sk_buff* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  br label %218

158:                                              ; preds = %151
  %159 = load %struct.ipxhdr*, %struct.ipxhdr** %8, align 8
  %160 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %160, align 8
  %163 = load i64, i64* @ipxcfg_max_hops, align 8
  %164 = icmp sgt i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  store i32 0, i32* %13, align 4
  br label %166

166:                                              ; preds = %165, %158
  br label %167

167:                                              ; preds = %166, %142
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %172 = call i32 @kfree_skb(%struct.sk_buff* %171)
  br label %218

173:                                              ; preds = %167
  %174 = load %struct.net_device*, %struct.net_device** %9, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* @ipx_broadcast_node, align 4
  %178 = load i8*, i8** %7, align 8
  %179 = load i32, i32* @IPX_NODE_LEN, align 4
  %180 = call i32 @memcmp(i32 %177, i8* %178, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %173
  %183 = load %struct.net_device*, %struct.net_device** %9, align 8
  %184 = getelementptr inbounds %struct.net_device, %struct.net_device* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @memcpy(i8* %28, i8* %185, i32 %186)
  br label %197

188:                                              ; preds = %173
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* @IPX_NODE_LEN, align 4
  %191 = load i32, i32* %14, align 4
  %192 = sub nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %189, i64 %193
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @memcpy(i8* %28, i8* %194, i32 %195)
  br label %197

197:                                              ; preds = %188, %182
  %198 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %200 = call %struct.sk_buff* @ipxitf_adjust_skbuff(%struct.ipx_interface* %198, %struct.sk_buff* %199)
  store %struct.sk_buff* %200, %struct.sk_buff** %6, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %202 = icmp ne %struct.sk_buff* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  br label %218

204:                                              ; preds = %197
  %205 = load %struct.net_device*, %struct.net_device** %9, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 1
  store %struct.net_device* %205, %struct.net_device** %207, align 8
  %208 = load i32, i32* @ETH_P_IPX, align 4
  %209 = call i32 @htons(i32 %208)
  %210 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.datalink_proto*, %struct.datalink_proto** %10, align 8
  %213 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %212, i32 0, i32 0
  %214 = load i32 (%struct.datalink_proto*, %struct.sk_buff*, i8*)*, i32 (%struct.datalink_proto*, %struct.sk_buff*, i8*)** %213, align 8
  %215 = load %struct.datalink_proto*, %struct.datalink_proto** %10, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %217 = call i32 %214(%struct.datalink_proto* %215, %struct.sk_buff* %216, i8* %28)
  br label %218

218:                                              ; preds = %204, %203, %170, %157, %139
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %219

219:                                              ; preds = %218, %114
  %220 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %220)
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local %struct.ipxhdr* @ipx_hdr(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_8__* @IPX_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @ipxitf_demux_socket(%struct.ipx_interface*, %struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.sk_buff* @ipxitf_adjust_skbuff(%struct.ipx_interface*, %struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
