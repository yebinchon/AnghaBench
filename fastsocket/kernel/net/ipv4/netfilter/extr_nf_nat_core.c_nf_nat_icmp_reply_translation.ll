; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_nf_nat_icmp_reply_translation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_nf_nat_icmp_reply_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { i32 }
%struct.sk_buff = type { i64, i64, i64, i64 }
%struct.anon = type { %struct.icmphdr, %struct.iphdr }
%struct.icmphdr = type { i64, i64 }
%struct.iphdr = type { i32, i32 }
%struct.nf_conntrack_l4proto = type { i32 }

@IP_CT_RELATED = common dso_local global i64 0, align 8
@IP_CT_IS_REPLY = common dso_local global i64 0, align 8
@ICMP_REDIRECT = common dso_local global i64 0, align 8
@IPS_NAT_DONE_MASK = common dso_local global i32 0, align 4
@IPS_NAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"icmp_reply_translation: translating error %p manip %u dir %s\0A\00", align 1
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ORIG\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"REPLY\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@l3proto = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@IPS_SRC_NAT = common dso_local global i64 0, align 8
@IPS_DST_NAT = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_icmp_reply_translation(%struct.nf_conn* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.anon*, align 8
  %11 = alloca %struct.nf_conntrack_l4proto*, align 8
  %12 = alloca %struct.nf_conntrack_tuple, align 4
  %13 = alloca %struct.nf_conntrack_tuple, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = call i32 @ip_hdrlen(%struct.sk_buff* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @CTINFO2DIR(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @HOOK2MANIP(i32 %22)
  store i32 %23, i32* %17, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 24
  %28 = trunc i64 %27 to i32
  %29 = call i32 @skb_make_writable(%struct.sk_buff* %24, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %238

32:                                               ; preds = %4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = call i32 @ip_hdrlen(%struct.sk_buff* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %36, i64 %39
  %41 = bitcast i8* %40 to %struct.anon*
  store %struct.anon* %41, %struct.anon** %10, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i64 @nf_ip_checksum(%struct.sk_buff* %42, i32 %43, i32 %44, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %238

48:                                               ; preds = %32
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IP_CT_RELATED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IP_CT_RELATED, align 8
  %59 = load i64, i64* @IP_CT_IS_REPLY, align 8
  %60 = add nsw i64 %58, %59
  %61 = icmp eq i64 %57, %60
  br label %62

62:                                               ; preds = %54, %48
  %63 = phi i1 [ true, %48 ], [ %61, %54 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @NF_CT_ASSERT(i32 %64)
  %66 = load %struct.anon*, %struct.anon** %10, align 8
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ICMP_REDIRECT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %62
  %73 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %74 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IPS_NAT_DONE_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @IPS_NAT_DONE_MASK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %238

81:                                               ; preds = %72
  %82 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %83 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IPS_NAT_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %238

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %62
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %98 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %91, i32 %92, i8* %97)
  %99 = load i32, i32* @PF_INET, align 4
  %100 = load %struct.anon*, %struct.anon** %10, align 8
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32 %99, i32 %103)
  store %struct.nf_conntrack_l4proto* %104, %struct.nf_conntrack_l4proto** %11, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %107 = call i32 @ip_hdrlen(%struct.sk_buff* %106)
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, 16
  %110 = trunc i64 %109 to i32
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = call i32 @ip_hdrlen(%struct.sk_buff* %111)
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, 16
  %115 = load %struct.anon*, %struct.anon** %10, align 8
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %118, 4
  %120 = sext i32 %119 to i64
  %121 = add i64 %114, %120
  %122 = trunc i64 %121 to i32
  %123 = load i64, i64* @AF_INET, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.anon*, %struct.anon** %10, align 8
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @l3proto, align 4
  %130 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %11, align 8
  %131 = call i32 @nf_ct_get_tuple(%struct.sk_buff* %105, i32 %110, i32 %122, i32 %124, i32 %128, %struct.nf_conntrack_tuple* %12, i32 %129, %struct.nf_conntrack_l4proto* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  br label %238

134:                                              ; preds = %90
  %135 = load %struct.anon*, %struct.anon** %10, align 8
  %136 = getelementptr inbounds %struct.anon, %struct.anon* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %141 = call i32 @ip_hdrlen(%struct.sk_buff* %140)
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, 16
  %144 = trunc i64 %143 to i32
  %145 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %146 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %17, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 @manip_pkt(i32 %138, %struct.sk_buff* %139, i32 %144, %struct.nf_conntrack_tuple* %154, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %134
  store i32 0, i32* %5, align 4
  br label %238

162:                                              ; preds = %134
  %163 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %194

168:                                              ; preds = %162
  %169 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to i8*
  %173 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %174 = call i32 @ip_hdrlen(%struct.sk_buff* %173)
  %175 = sext i32 %174 to i64
  %176 = getelementptr i8, i8* %172, i64 %175
  %177 = bitcast i8* %176 to %struct.anon*
  store %struct.anon* %177, %struct.anon** %10, align 8
  %178 = load %struct.anon*, %struct.anon** %10, align 8
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %179, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %184 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = sub nsw i64 %185, %187
  %189 = call i32 @skb_checksum(%struct.sk_buff* %181, i32 %182, i64 %188, i32 0)
  %190 = call i64 @csum_fold(i32 %189)
  %191 = load %struct.anon*, %struct.anon** %10, align 8
  %192 = getelementptr inbounds %struct.anon, %struct.anon* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %192, i32 0, i32 1
  store i64 %190, i64* %193, align 8
  br label %194

194:                                              ; preds = %168, %162
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i64, i64* @IPS_SRC_NAT, align 8
  store i64 %199, i64* %16, align 8
  br label %202

200:                                              ; preds = %194
  %201 = load i64, i64* @IPS_DST_NAT, align 8
  store i64 %201, i64* %16, align 8
  br label %202

202:                                              ; preds = %200, %198
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load i32, i32* @IPS_NAT_MASK, align 4
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %16, align 8
  %210 = xor i64 %209, %208
  store i64 %210, i64* %16, align 8
  br label %211

211:                                              ; preds = %206, %202
  %212 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %213 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %16, align 8
  %217 = and i64 %215, %216
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %211
  %220 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %221 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %220, i32 0, i32 1
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = call i32 @nf_ct_invert_tuplepr(%struct.nf_conntrack_tuple* %13, %struct.nf_conntrack_tuple* %229)
  %231 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %232 = load i32, i32* %17, align 4
  %233 = call i32 @manip_pkt(i32 0, %struct.sk_buff* %231, i32 0, %struct.nf_conntrack_tuple* %13, i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %219
  store i32 0, i32* %5, align 4
  br label %238

236:                                              ; preds = %219
  br label %237

237:                                              ; preds = %236, %211
  store i32 1, i32* %5, align 4
  br label %238

238:                                              ; preds = %237, %235, %161, %133, %88, %80, %47, %31
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @HOOK2MANIP(i32) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @nf_ip_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @NF_CT_ASSERT(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.sk_buff*, i32, i8*) #1

declare dso_local %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32, i32) #1

declare dso_local i32 @nf_ct_get_tuple(%struct.sk_buff*, i32, i32, i32, i32, %struct.nf_conntrack_tuple*, i32, %struct.nf_conntrack_l4proto*) #1

declare dso_local i32 @manip_pkt(i32, %struct.sk_buff*, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i64 @csum_fold(i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @nf_ct_invert_tuplepr(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
