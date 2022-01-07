; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_ip_nat_sip_expect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_ip_nat_sip_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i64, i32, %struct.TYPE_25__, %struct.TYPE_23__, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.nf_conn = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__, %struct.TYPE_30__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_27__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_26__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_26__ = type { i64 }

@ip_nat_sip_expected = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%pI4:%u\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i32*, %struct.nf_conntrack_expect*, i32, i32)* @ip_nat_sip_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_nat_sip_expect(%struct.sk_buff* %0, i8** %1, i32* %2, %struct.nf_conntrack_expect* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nf_conntrack_expect*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nf_conn*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [22 x i8], align 16
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.nf_conntrack_expect* %3, %struct.nf_conntrack_expect** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %21, i32* %14)
  store %struct.nf_conn* %22, %struct.nf_conn** %15, align 8
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @CTINFO2DIR(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %26 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = load i32, i32* %16, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %37 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %35, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %6
  %52 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %53 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %17, align 8
  br label %73

58:                                               ; preds = %6
  %59 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %60 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %59, i32 0, i32 0
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %17, align 8
  br label %73

73:                                               ; preds = %58, %51
  %74 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %75 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %82 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %80, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %73
  %95 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %96 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @ntohs(i64 %109)
  store i64 %110, i64* %18, align 8
  br label %120

111:                                              ; preds = %73
  %112 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %113 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @ntohs(i64 %118)
  store i64 %119, i64* %18, align 8
  br label %120

120:                                              ; preds = %111, %94
  %121 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %122 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %128 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load i64, i64* %17, align 8
  %130 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %131 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  store i64 %129, i64* %134, align 8
  %135 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %136 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %143 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  store i64 %141, i64* %145, align 8
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %151 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @ip_nat_sip_expected, align 4
  %153 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %154 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %172, %120
  %156 = load i64, i64* %18, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load i64, i64* %18, align 8
  %160 = call i64 @htons(i64 %159)
  %161 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %162 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  store i64 %160, i64* %166, align 8
  %167 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %168 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %167)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %175

171:                                              ; preds = %158
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %18, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %18, align 8
  br label %155

175:                                              ; preds = %170, %155
  %176 = load i64, i64* %18, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* @NF_DROP, align 4
  store i32 %179, i32* %7, align 4
  br label %226

180:                                              ; preds = %175
  %181 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %182 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %188 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %186, %189
  br i1 %190, label %205, label %191

191:                                              ; preds = %180
  %192 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %193 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %200 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %198, %203
  br i1 %204, label %205, label %220

205:                                              ; preds = %191, %180
  %206 = getelementptr inbounds [22 x i8], [22 x i8]* %19, i64 0, i64 0
  %207 = load i64, i64* %18, align 8
  %208 = call i32 @sprintf(i8* %206, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %17, i64 %207)
  store i32 %208, i32* %20, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %210 = load i8**, i8*** %9, align 8
  %211 = load i32*, i32** %10, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %13, align 4
  %214 = getelementptr inbounds [22 x i8], [22 x i8]* %19, i64 0, i64 0
  %215 = load i32, i32* %20, align 4
  %216 = call i32 @mangle_packet(%struct.sk_buff* %209, i8** %210, i32* %211, i32 %212, i32 %213, i8* %214, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %205
  br label %222

219:                                              ; preds = %205
  br label %220

220:                                              ; preds = %219, %191
  %221 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %221, i32* %7, align 4
  br label %226

222:                                              ; preds = %218
  %223 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %224 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %223)
  %225 = load i32, i32* @NF_DROP, align 4
  store i32 %225, i32* %7, align 4
  br label %226

226:                                              ; preds = %222, %220, %178
  %227 = load i32, i32* %7, align 4
  ret i32 %227
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64*, i64) #1

declare dso_local i32 @mangle_packet(%struct.sk_buff*, i8**, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
