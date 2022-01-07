; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_frag.c_frag_mt6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_frag.c_frag_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32*, %struct.ip6t_frag* }
%struct.ip6t_frag = type { i32, i32, i32* }
%struct.frag_hdr = type { i32, i32, i32 }

@NEXTHDR_FRAGMENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"INFO %04X \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"OFFSET %04X \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"RES %02X %04X\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MF %04X \00", align 1
@IP6_MF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ID %u %08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"IPv6 FRAG id %02X \00", align 1
@IP6T_FRAG_INV_IDS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"res %02X %02X%04X %02X \00", align 1
@IP6T_FRAG_RES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"first %02X %02X %02X \00", align 1
@IP6T_FRAG_FST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"mf %02X %02X %02X \00", align 1
@IP6T_FRAG_MF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"last %02X %02X %02X\0A\00", align 1
@IP6T_FRAG_NMF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @frag_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frag_mt6(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.frag_hdr, align 4
  %7 = alloca %struct.frag_hdr*, align 8
  %8 = alloca %struct.ip6t_frag*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %11 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %12 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %11, i32 0, i32 1
  %13 = load %struct.ip6t_frag*, %struct.ip6t_frag** %12, align 8
  store %struct.ip6t_frag* %13, %struct.ip6t_frag** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @NEXTHDR_FRAGMENT, align 4
  %16 = call i32 @ipv6_find_hdr(%struct.sk_buff* %14, i32* %9, i32 %15, i32* null, i32* null)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %26 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %19
  store i32 0, i32* %3, align 4
  br label %324

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.frag_hdr* @skb_header_pointer(%struct.sk_buff* %30, i32 %31, i32 12, %struct.frag_hdr* %6)
  store %struct.frag_hdr* %32, %struct.frag_hdr** %7, align 8
  %33 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %34 = icmp eq %struct.frag_hdr* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %37 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32 1, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %324

39:                                               ; preds = %29
  %40 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %41 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %45 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohs(i32 %46)
  %48 = and i32 %47, -8
  %49 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %51 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %54 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohs(i32 %55)
  %57 = and i32 %56, 6
  %58 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %57)
  %59 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %60 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IP6_MF, align 4
  %63 = call i32 @htons(i32 %62)
  %64 = and i32 %61, %63
  %65 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %67 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ntohl(i32 %68)
  %70 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %71 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohl(i32 %72)
  %74 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %73)
  %75 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %76 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %81 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %86 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ntohl(i32 %87)
  %89 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %90 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IP6T_FRAG_INV_IDS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @id_match(i32 %79, i32 %84, i32 %88, i32 %97)
  %99 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %101 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IP6T_FRAG_RES, align 4
  %104 = and i32 %102, %103
  %105 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %106 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %109 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ntohs(i32 %110)
  %112 = and i32 %111, 6
  %113 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %114 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IP6T_FRAG_RES, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %39
  %120 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %121 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %119
  %125 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %126 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ntohs(i32 %127)
  %129 = and i32 %128, 6
  %130 = icmp ne i32 %129, 0
  br label %131

131:                                              ; preds = %124, %119
  %132 = phi i1 [ true, %119 ], [ %130, %124 ]
  br label %133

133:                                              ; preds = %131, %39
  %134 = phi i1 [ false, %39 ], [ %132, %131 ]
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %104, i32 %107, i32 %112, i32 %136)
  %138 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %139 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IP6T_FRAG_FST, align 4
  %142 = and i32 %140, %141
  %143 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %144 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ntohs(i32 %145)
  %147 = and i32 %146, -8
  %148 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %149 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IP6T_FRAG_FST, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %133
  %155 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %156 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ntohs(i32 %157)
  %159 = and i32 %158, -8
  %160 = icmp ne i32 %159, 0
  br label %161

161:                                              ; preds = %154, %133
  %162 = phi i1 [ false, %133 ], [ %160, %154 ]
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %142, i32 %147, i32 %164)
  %166 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %167 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @IP6T_FRAG_MF, align 4
  %170 = and i32 %168, %169
  %171 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %172 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ntohs(i32 %173)
  %175 = load i32, i32* @IP6_MF, align 4
  %176 = and i32 %174, %175
  %177 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %178 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @IP6T_FRAG_MF, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %161
  %184 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %185 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ntohs(i32 %186)
  %188 = load i32, i32* @IP6_MF, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  br label %192

192:                                              ; preds = %183, %161
  %193 = phi i1 [ false, %161 ], [ %191, %183 ]
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %170, i32 %176, i32 %195)
  %197 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %198 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @IP6T_FRAG_NMF, align 4
  %201 = and i32 %199, %200
  %202 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %203 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ntohs(i32 %204)
  %206 = load i32, i32* @IP6_MF, align 4
  %207 = and i32 %205, %206
  %208 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %209 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @IP6T_FRAG_NMF, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %192
  %215 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %216 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ntohs(i32 %217)
  %219 = load i32, i32* @IP6_MF, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br label %222

222:                                              ; preds = %214, %192
  %223 = phi i1 [ false, %192 ], [ %221, %214 ]
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %201, i32 %207, i32 %225)
  %227 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %228 = icmp ne %struct.frag_hdr* %227, null
  br i1 %228, label %229, label %321

229:                                              ; preds = %222
  %230 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %231 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %236 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %241 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @ntohl(i32 %242)
  %244 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %245 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @IP6T_FRAG_INV_IDS, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  %250 = xor i1 %249, true
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = call i32 @id_match(i32 %234, i32 %239, i32 %243, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %321

255:                                              ; preds = %229
  %256 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %257 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @IP6T_FRAG_RES, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %255
  %263 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %264 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %321, label %267

267:                                              ; preds = %262
  %268 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %269 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @ntohs(i32 %270)
  %272 = and i32 %271, 6
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %321, label %274

274:                                              ; preds = %267, %255
  %275 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %276 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @IP6T_FRAG_FST, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %274
  %282 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %283 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @ntohs(i32 %284)
  %286 = and i32 %285, -8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %321, label %288

288:                                              ; preds = %281, %274
  %289 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %290 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @IP6T_FRAG_MF, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %288
  %296 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %297 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @ntohs(i32 %298)
  %300 = load i32, i32* @IP6_MF, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %321

303:                                              ; preds = %295, %288
  %304 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %305 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @IP6T_FRAG_NMF, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %303
  %311 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %312 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @ntohs(i32 %313)
  %315 = load i32, i32* @IP6_MF, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br label %318

318:                                              ; preds = %310, %303
  %319 = phi i1 [ false, %303 ], [ %317, %310 ]
  %320 = xor i1 %319, true
  br label %321

321:                                              ; preds = %318, %295, %281, %267, %262, %229, %222
  %322 = phi i1 [ false, %295 ], [ false, %281 ], [ false, %267 ], [ false, %262 ], [ false, %229 ], [ false, %222 ], [ %320, %318 ]
  %323 = zext i1 %322 to i32
  store i32 %323, i32* %3, align 4
  br label %324

324:                                              ; preds = %321, %35, %28
  %325 = load i32, i32* %3, align 4
  ret i32 %325
}

declare dso_local i32 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.frag_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.frag_hdr*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @id_match(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
