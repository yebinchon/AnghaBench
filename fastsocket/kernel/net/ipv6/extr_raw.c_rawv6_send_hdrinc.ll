; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_rawv6_send_hdrinc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_rawv6_send_hdrinc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.flowi = type { i32 }
%struct.rt6_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i32, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@MSG_PROBE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i8*, i32, %struct.flowi*, %struct.rt6_info*, i32)* @rawv6_send_hdrinc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawv6_send_hdrinc(%struct.sock* %0, i8* %1, i32 %2, %struct.flowi* %3, %struct.rt6_info* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.flowi*, align 8
  %12 = alloca %struct.rt6_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipv6_pinfo*, align 8
  %15 = alloca %struct.ipv6hdr*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.flowi* %3, %struct.flowi** %11, align 8
  store %struct.rt6_info* %4, %struct.rt6_info** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.sock*, %struct.sock** %8, align 8
  %19 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %18)
  store %struct.ipv6_pinfo* %19, %struct.ipv6_pinfo** %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %22 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %20, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %6
  %30 = load %struct.sock*, %struct.sock** %8, align 8
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = load %struct.flowi*, %struct.flowi** %11, align 8
  %33 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %34 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ipv6_local_error(%struct.sock* %30, i32 %31, %struct.flowi* %32, i32 %39)
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %173

43:                                               ; preds = %6
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @MSG_PROBE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %147

49:                                               ; preds = %43
  %50 = load %struct.sock*, %struct.sock** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %54 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i64 @LL_ALLOCATED_SPACE(%struct.TYPE_8__* %57)
  %59 = add nsw i64 %52, %58
  %60 = add nsw i64 %59, 15
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @MSG_DONTWAIT, align 4
  %63 = and i32 %61, %62
  %64 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %50, i64 %60, i32 %63, i32* %17)
  store %struct.sk_buff* %64, %struct.sk_buff** %16, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %66 = icmp eq %struct.sk_buff* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  br label %153

68:                                               ; preds = %49
  %69 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %70 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %71 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i32 @LL_RESERVED_SPACE(%struct.TYPE_8__* %74)
  %76 = call i32 @skb_reserve(%struct.sk_buff* %69, i32 %75)
  %77 = load %struct.sock*, %struct.sock** %8, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sock*, %struct.sock** %8, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %88 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %89 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = call i32 @dst_clone(%struct.TYPE_7__* %90)
  %92 = call i32 @skb_dst_set(%struct.sk_buff* %87, i32 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @skb_put(%struct.sk_buff* %93, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %97 = call i32 @skb_reset_network_header(%struct.sk_buff* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %99 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %98)
  store %struct.ipv6hdr* %99, %struct.ipv6hdr** %15, align 8
  %100 = load i32, i32* @CHECKSUM_NONE, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %109 = bitcast %struct.ipv6hdr* %108 to i8*
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @memcpy_fromiovecend(i8* %109, i8* %110, i32 0, i32 %111)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %68
  br label %148

116:                                              ; preds = %68
  %117 = load %struct.sock*, %struct.sock** %8, align 8
  %118 = call i32 @sock_net(%struct.sock* %117)
  %119 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %120 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @IP6_UPD_PO_STATS(i32 %118, i32 %121, i32 %122, i32 %125)
  %127 = load i32, i32* @PF_INET6, align 4
  %128 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %130 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %131 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i32, i32* @dst_output, align 4
  %136 = call i32 @NF_HOOK(i32 %127, i32 %128, %struct.sk_buff* %129, i32* null, %struct.TYPE_8__* %134, i32 %135)
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %116
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @net_xmit_errno(i32 %140)
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %139, %116
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %153

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %48
  store i32 0, i32* %7, align 4
  br label %173

148:                                              ; preds = %115
  %149 = load i32, i32* @EFAULT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %17, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %152 = call i32 @kfree_skb(%struct.sk_buff* %151)
  br label %153

153:                                              ; preds = %148, %145, %67
  %154 = load %struct.sock*, %struct.sock** %8, align 8
  %155 = call i32 @sock_net(%struct.sock* %154)
  %156 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %157 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %160 = call i32 @IP6_INC_STATS(i32 %155, i32 %158, i32 %159)
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @ENOBUFS, align 4
  %163 = sub nsw i32 0, %162
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %153
  %166 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %167 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  store i32 0, i32* %17, align 4
  br label %171

171:                                              ; preds = %170, %165, %153
  %172 = load i32, i32* %17, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %171, %147, %29
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_local_error(%struct.sock*, i32, %struct.flowi*, i32) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i64 @LL_ALLOCATED_SPACE(%struct.TYPE_8__*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.TYPE_8__*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(%struct.TYPE_7__*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy_fromiovecend(i8*, i8*, i32, i32) #1

declare dso_local i32 @IP6_UPD_PO_STATS(i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
