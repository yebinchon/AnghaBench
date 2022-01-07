; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_tr.c_tr_type_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_tr.c_tr_type_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, %struct.net_device* }
%struct.net_device = type { i32, i32, i32 }
%struct.trh_hdr = type { i32*, i32*, i32 }
%struct.trllc = type { i64, i64 }

@TR_RII = common dso_local global i32 0, align 4
@TR_RCF_LEN_MASK = common dso_local global i32 0, align 4
@TR_MAXRIFLEN = common dso_local global i32 0, align 4
@TR_ALEN = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@IFF_PROMISC = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@EXTENDED_SAP = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_TR_802_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tr_type_trans(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.trh_hdr*, align 8
  %7 = alloca %struct.trllc*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  store %struct.net_device* %9, %struct.net_device** %11, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_reset_mac_header(%struct.sk_buff* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.trh_hdr* @tr_hdr(%struct.sk_buff* %14)
  store %struct.trh_hdr* %15, %struct.trh_hdr** %6, align 8
  %16 = load %struct.trh_hdr*, %struct.trh_hdr** %6, align 8
  %17 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TR_RII, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.trh_hdr*, %struct.trh_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ntohs(i32 %27)
  %29 = load i32, i32* @TR_RCF_LEN_MASK, align 4
  %30 = and i32 %28, %29
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %24, %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 24
  %37 = load i32, i32* @TR_MAXRIFLEN, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %36, %38
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = add i64 %39, %41
  %43 = inttoptr i64 %42 to %struct.trllc*
  store %struct.trllc* %43, %struct.trllc** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @TR_MAXRIFLEN, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 24, %46
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @skb_pull(%struct.sk_buff* %44, i32 %51)
  %53 = load %struct.trh_hdr*, %struct.trh_hdr** %6, align 8
  %54 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 128
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %32
  %60 = load %struct.trh_hdr*, %struct.trh_hdr** %6, align 8
  %61 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TR_ALEN, align 4
  %67 = call i64 @memcmp(i32* %62, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = load i64, i64* @PACKET_BROADCAST, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %77

73:                                               ; preds = %59
  %74 = load i64, i64* @PACKET_MULTICAST, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  br label %130

78:                                               ; preds = %32
  %79 = load %struct.trh_hdr*, %struct.trh_hdr** %6, align 8
  %80 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %78
  %87 = load %struct.trh_hdr*, %struct.trh_hdr** %6, align 8
  %88 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 0
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %86
  %95 = load %struct.trh_hdr*, %struct.trh_hdr** %6, align 8
  %96 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 94
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i64, i64* @PACKET_MULTICAST, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %129

106:                                              ; preds = %94, %86, %78
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IFF_PROMISC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %106
  %114 = load %struct.trh_hdr*, %struct.trh_hdr** %6, align 8
  %115 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @TR_ALEN, align 4
  %121 = call i64 @memcmp(i32* %116, i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %113
  %124 = load i64, i64* @PACKET_OTHERHOST, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %113
  br label %128

128:                                              ; preds = %127, %106
  br label %129

129:                                              ; preds = %128, %102
  br label %130

130:                                              ; preds = %129, %77
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @PACKET_BROADCAST, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PACKET_MULTICAST, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.trh_hdr*, %struct.trh_hdr** %6, align 8
  %144 = load %struct.net_device*, %struct.net_device** %5, align 8
  %145 = call i32 @tr_add_rif_info(%struct.trh_hdr* %143, %struct.net_device* %144)
  br label %146

146:                                              ; preds = %142, %136, %130
  %147 = load %struct.trllc*, %struct.trllc** %7, align 8
  %148 = getelementptr inbounds %struct.trllc, %struct.trllc* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @EXTENDED_SAP, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %179

152:                                              ; preds = %146
  %153 = load %struct.trllc*, %struct.trllc** %7, align 8
  %154 = getelementptr inbounds %struct.trllc, %struct.trllc* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @ETH_P_IP, align 4
  %157 = call i64 @htons(i32 %156)
  %158 = icmp eq i64 %155, %157
  br i1 %158, label %173, label %159

159:                                              ; preds = %152
  %160 = load %struct.trllc*, %struct.trllc** %7, align 8
  %161 = getelementptr inbounds %struct.trllc, %struct.trllc* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @ETH_P_IPV6, align 4
  %164 = call i64 @htons(i32 %163)
  %165 = icmp eq i64 %162, %164
  br i1 %165, label %173, label %166

166:                                              ; preds = %159
  %167 = load %struct.trllc*, %struct.trllc** %7, align 8
  %168 = getelementptr inbounds %struct.trllc, %struct.trllc* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @ETH_P_ARP, align 4
  %171 = call i64 @htons(i32 %170)
  %172 = icmp eq i64 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %166, %159, %152
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = call i32 @skb_pull(%struct.sk_buff* %174, i32 16)
  %176 = load %struct.trllc*, %struct.trllc** %7, align 8
  %177 = getelementptr inbounds %struct.trllc, %struct.trllc* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %3, align 8
  br label %182

179:                                              ; preds = %166, %146
  %180 = load i32, i32* @ETH_P_TR_802_2, align 4
  %181 = call i64 @htons(i32 %180)
  store i64 %181, i64* %3, align 8
  br label %182

182:                                              ; preds = %179, %173
  %183 = load i64, i64* %3, align 8
  ret i64 %183
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.trh_hdr* @tr_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @tr_add_rif_info(%struct.trh_hdr*, %struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
