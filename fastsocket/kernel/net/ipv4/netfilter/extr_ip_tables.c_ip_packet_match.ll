; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_tables.c_ip_packet_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_tables.c_ip_packet_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32, i32, i32 }
%struct.ipt_ip = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IPT_INV_SRCIP = common dso_local global i32 0, align 4
@IPT_INV_DSTIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Source or dest mismatch.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"SRC: %pI4. Mask: %pI4. Target: %pI4.%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" (INV)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"DST: %pI4 Mask: %pI4 Target: %pI4.%s\0A\00", align 1
@IPT_INV_VIA_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"VIA in mismatch (%s vs %s).%s\0A\00", align 1
@IPT_INV_VIA_OUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"VIA out mismatch (%s vs %s).%s\0A\00", align 1
@IPT_INV_PROTO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Packet protocol %hi does not match %hi.%s\0A\00", align 1
@IPT_F_FRAG = common dso_local global i32 0, align 4
@IPT_INV_FRAG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Fragment rule but not fragment.%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iphdr*, i8*, i8*, %struct.ipt_ip*, i32)* @ip_packet_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_packet_match(%struct.iphdr* %0, i8* %1, i8* %2, %struct.ipt_ip* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipt_ip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.iphdr* %0, %struct.iphdr** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.ipt_ip* %3, %struct.ipt_ip** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %17 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %15, %19
  %21 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %22 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %20, %24
  %26 = zext i1 %25 to i32
  %27 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %28 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IPT_INV_SRCIP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = xor i32 %26, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %5
  %39 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %43 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %41, %45
  %47 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %48 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %46, %50
  %52 = zext i1 %51 to i32
  %53 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %54 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IPT_INV_DSTIP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = xor i32 %52, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %38, %5
  %65 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 0
  %68 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %69 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %68, i32 0, i32 10
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %72 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %75 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IPT_INV_SRCIP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %82 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32* %67, i32* %70, i32* %73, i8* %81)
  %83 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %84 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %83, i32 0, i32 1
  %85 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %86 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %89 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %92 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IPT_INV_DSTIP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %99 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32* %84, i32* %87, i32* %90, i8* %98)
  store i32 0, i32* %6, align 4
  br label %251

100:                                              ; preds = %38
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %103 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %106 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ifname_compare_aligned(i8* %101, i32 %104, i32 %107)
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %113 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IPT_INV_VIA_IN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = xor i32 %111, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %100
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %126 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %129 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IPT_INV_VIA_IN, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %136 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %124, i32 %127, i8* %135)
  store i32 0, i32* %6, align 4
  br label %251

137:                                              ; preds = %100
  %138 = load i8*, i8** %9, align 8
  %139 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %140 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %143 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @ifname_compare_aligned(i8* %138, i32 %141, i32 %144)
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %12, align 8
  %147 = icmp ne i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %150 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IPT_INV_VIA_OUT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = xor i32 %148, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %137
  %161 = load i8*, i8** %9, align 8
  %162 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %163 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %166 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @IPT_INV_VIA_OUT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %173 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %161, i32 %164, i8* %172)
  store i32 0, i32* %6, align 4
  br label %251

174:                                              ; preds = %137
  %175 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %176 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %215

179:                                              ; preds = %174
  %180 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %181 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %184 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %182, %185
  %187 = zext i1 %186 to i32
  %188 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %189 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @IPT_INV_PROTO, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = xor i32 %187, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %179
  %200 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %201 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %204 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %207 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @IPT_INV_PROTO, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %214 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %202, i32 %205, i8* %213)
  store i32 0, i32* %6, align 4
  br label %251

215:                                              ; preds = %179, %174
  %216 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %217 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @IPT_F_FRAG, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  br label %226

226:                                              ; preds = %222, %215
  %227 = phi i1 [ false, %215 ], [ %225, %222 ]
  %228 = zext i1 %227 to i32
  %229 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %230 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @IPT_INV_FRAG, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  %236 = xor i1 %235, true
  %237 = zext i1 %236 to i32
  %238 = xor i32 %228, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %226
  %241 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %242 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @IPT_INV_FRAG, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %249 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %248)
  store i32 0, i32* %6, align 4
  br label %251

250:                                              ; preds = %226
  store i32 1, i32* %6, align 4
  br label %251

251:                                              ; preds = %250, %240, %199, %160, %123, %64
  %252 = load i32, i32* %6, align 4
  ret i32 %252
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i64 @ifname_compare_aligned(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
