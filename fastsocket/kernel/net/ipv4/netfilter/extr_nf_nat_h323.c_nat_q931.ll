; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_q931.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_q931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_22__, i32, %struct.TYPE_26__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_32__, %struct.TYPE_30__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i8* }
%struct.nf_ct_h323_master = type { i8** }
%union.nf_inet_addr = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.nf_ct_h323_master }

@ip_nat_q931_expect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"nf_nat_ras: out of TCP ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"nf_nat_ras: expect Q.931 %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*, i32, i8*, %struct.nf_conntrack_expect*)* @nat_q931 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_q931(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32* %4, i32 %5, i8* %6, %struct.nf_conntrack_expect* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.nf_conntrack_expect*, align 8
  %18 = alloca %struct.nf_ct_h323_master*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %union.nf_inet_addr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8** %3, i8*** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.nf_conntrack_expect* %7, %struct.nf_conntrack_expect** %17, align 8
  %22 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %23 = call %struct.TYPE_23__* @nfct_help(%struct.nf_conn* %22)
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  store %struct.nf_ct_h323_master* %25, %struct.nf_ct_h323_master** %18, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @CTINFO2DIR(i32 %26)
  store i32 %27, i32* %19, align 4
  %28 = load i8*, i8** %16, align 8
  %29 = call i64 @ntohs(i8* %28)
  store i64 %29, i64* %20, align 8
  %30 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %38 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  store i8* %36, i8** %40, align 8
  %41 = load i32, i32* @ip_nat_q931_expect, align 4
  %42 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %43 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %19, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %49 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %18, align 8
  %51 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = icmp eq i8* %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %8
  %60 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %18, align 8
  %61 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %62, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @ntohs(i8* %69)
  store i64 %70, i64* %20, align 8
  br label %71

71:                                               ; preds = %59, %8
  br label %72

72:                                               ; preds = %89, %71
  %73 = load i64, i64* %20, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i64, i64* %20, align 8
  %77 = call i8* @htons(i64 %76)
  %78 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %79 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  store i8* %77, i8** %83, align 8
  %84 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %85 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %92

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %20, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %20, align 8
  br label %72

92:                                               ; preds = %87, %72
  %93 = load i64, i64* %20, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = call i64 (...) @net_ratelimit()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95
  store i32 0, i32* %9, align 4
  br label %219

101:                                              ; preds = %92
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = load i8**, i8*** %13, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %109 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %108, i32 0, i32 0
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %109, align 8
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i64, i64* %20, align 8
  %121 = call i8* @htons(i64 %120)
  %122 = call i64 @set_h225_addr(%struct.sk_buff* %102, i8** %103, i32 0, i32* %107, i32* %119, i8* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %188

124:                                              ; preds = %101
  %125 = load i8*, i8** %16, align 8
  %126 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %18, align 8
  %127 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %126, i32 0, i32 0
  %128 = load i8**, i8*** %127, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  store i8* %125, i8** %131, align 8
  %132 = load i64, i64* %20, align 8
  %133 = call i8* @htons(i64 %132)
  %134 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %18, align 8
  %135 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %134, i32 0, i32 0
  %136 = load i8**, i8*** %135, align 8
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %136, i64 %141
  store i8* %133, i8** %142, align 8
  %143 = load i32, i32* %15, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %187

145:                                              ; preds = %124
  %146 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %147 = load i8**, i8*** %13, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = load i32*, i32** %14, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = call i64 @get_h225_addr(%struct.nf_conn* %146, i8* %148, i32* %150, %union.nf_inet_addr* %21, i8** %16)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %187

153:                                              ; preds = %145
  %154 = bitcast %union.nf_inet_addr* %21 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ntohl(i32 %155)
  %157 = and i32 %156, -16777216
  %158 = icmp eq i32 %157, 2130706432
  br i1 %158, label %159, label %187

159:                                              ; preds = %153
  %160 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %161 = load i8**, i8*** %13, align 8
  %162 = load i32*, i32** %14, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %165 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %164, i32 0, i32 0
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %165, align 8
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 0
  %176 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %18, align 8
  %177 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %176, i32 0, i32 0
  %178 = load i8**, i8*** %177, align 8
  %179 = load i32, i32* %19, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %178, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @set_h225_addr(%struct.sk_buff* %160, i8** %161, i32 0, i32* %163, i32* %175, i8* %185)
  br label %187

187:                                              ; preds = %159, %153, %145, %124
  br label %191

188:                                              ; preds = %101
  %189 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %190 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %189)
  store i32 -1, i32* %9, align 4
  br label %219

191:                                              ; preds = %187
  %192 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %193 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 0
  %197 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %198 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = call i64 @ntohs(i8* %203)
  %205 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %206 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %211 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i64 @ntohs(i8* %216)
  %218 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32* %196, i64 %204, i32* %209, i64 %217)
  store i32 0, i32* %9, align 4
  br label %219

219:                                              ; preds = %191, %188, %100
  %220 = load i32, i32* %9, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_23__* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @set_h225_addr(%struct.sk_buff*, i8**, i32, i32*, i32*, i8*) #1

declare dso_local i64 @get_h225_addr(%struct.nf_conn*, i8*, i32*, %union.nf_inet_addr*, i8**) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
