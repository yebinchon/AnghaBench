; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_ip6_packet_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_ip6_packet_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip6t_ip6 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i32, i32 }

@IP6T_INV_SRCIP = common dso_local global i32 0, align 4
@IP6T_INV_DSTIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Source or dest mismatch.\0A\00", align 1
@IP6T_INV_VIA_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"VIA in mismatch (%s vs %s).%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" (INV)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IP6T_INV_VIA_OUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"VIA out mismatch (%s vs %s).%s\0A\00", align 1
@IP6T_F_PROTO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Packet protocol %hi ?= %s%hi.\0A\00", align 1
@IP6T_INV_PROTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8*, i8*, %struct.ip6t_ip6*, i32*, i32*, i32*)* @ip6_packet_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_packet_match(%struct.sk_buff* %0, i8* %1, i8* %2, %struct.ip6t_ip6* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ip6t_ip6*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ipv6hdr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.ip6t_ip6* %3, %struct.ip6t_ip6** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %20)
  store %struct.ipv6hdr* %21, %struct.ipv6hdr** %17, align 8
  %22 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %23 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %22, i32 0, i32 1
  %24 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %25 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %24, i32 0, i32 10
  %26 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %27 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %26, i32 0, i32 9
  %28 = call i32 @ipv6_masked_addr_cmp(i32* %23, i32* %25, i32* %27)
  %29 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %30 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IP6T_INV_SRCIP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = xor i32 %28, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %7
  %41 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %42 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %41, i32 0, i32 0
  %43 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %44 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %43, i32 0, i32 8
  %45 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %46 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %45, i32 0, i32 7
  %47 = call i32 @ipv6_masked_addr_cmp(i32* %42, i32* %44, i32* %46)
  %48 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %49 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IP6T_INV_DSTIP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = xor i32 %47, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %40, %7
  %60 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %201

61:                                               ; preds = %40
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %64 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %67 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ifname_compare_aligned(i8* %62, i32 %65, i32 %68)
  store i64 %69, i64* %16, align 8
  %70 = load i64, i64* %16, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %74 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IP6T_INV_VIA_IN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = xor i32 %72, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %61
  %85 = load i8*, i8** %10, align 8
  %86 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %87 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %90 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IP6T_INV_VIA_IN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %97 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %85, i32 %88, i8* %96)
  store i32 0, i32* %8, align 4
  br label %201

98:                                               ; preds = %61
  %99 = load i8*, i8** %11, align 8
  %100 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %101 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %104 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ifname_compare_aligned(i8* %99, i32 %102, i32 %105)
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %16, align 8
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %111 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IP6T_INV_VIA_OUT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = xor i32 %109, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %98
  %122 = load i8*, i8** %11, align 8
  %123 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %124 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %127 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @IP6T_INV_VIA_OUT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %134 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %122, i32 %125, i8* %133)
  store i32 0, i32* %8, align 4
  br label %201

135:                                              ; preds = %98
  %136 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %137 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IP6T_F_PROTO, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %200

142:                                              ; preds = %135
  %143 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %144 = load i32*, i32** %13, align 8
  %145 = call i32 @ipv6_find_hdr(%struct.sk_buff* %143, i32* %144, i32 -1, i16* %19, i32* null)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load i16, i16* %19, align 2
  %150 = zext i16 %149 to i32
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32*, i32** %15, align 8
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %152, %148
  store i32 0, i32* %8, align 4
  br label %201

155:                                              ; preds = %142
  %156 = load i16, i16* %19, align 2
  %157 = zext i16 %156 to i32
  %158 = load i32*, i32** %14, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %161 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IP6T_INV_PROTO, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %168 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %169 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %159, i8* %167, i32 %170)
  %172 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %173 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %155
  %178 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %179 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @IP6T_INV_PROTO, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  store i32 0, i32* %8, align 4
  br label %201

185:                                              ; preds = %177
  store i32 1, i32* %8, align 4
  br label %201

186:                                              ; preds = %155
  %187 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %188 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %193 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @IP6T_INV_PROTO, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %191
  store i32 0, i32* %8, align 4
  br label %201

199:                                              ; preds = %191, %186
  br label %200

200:                                              ; preds = %199, %135
  store i32 1, i32* %8, align 4
  br label %201

201:                                              ; preds = %200, %198, %185, %184, %154, %121, %84, %59
  %202 = load i32, i32* %8, align 4
  ret i32 %202
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_masked_addr_cmp(i32*, i32*, i32*) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i64 @ifname_compare_aligned(i8*, i32, i32) #1

declare dso_local i32 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i16*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
