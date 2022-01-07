; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_hbh.c_hbh_mt6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_hbh.c_hbh_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32*, %struct.TYPE_2__*, %struct.ip6t_opts* }
%struct.TYPE_2__ = type { i32 }
%struct.ip6t_opts = type { i32, i32, i32, i32, i32* }
%struct.ipv6_opt_hdr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IPv6 OPTS LEN %u %u \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"len %02X %04X %02X \00", align 1
@IP6T_OPTS_LEN = common dso_local global i32 0, align 4
@IP6T_OPTS_INV_LEN = common dso_local global i32 0, align 4
@IP6T_OPTS_OPTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Strict \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"#%d \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Tbad %02X %02X\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Tok \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Lbad %02X %04X\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Lok \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Pad1\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"len%04X \0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"new pointer is too large! \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @hbh_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hbh_mt6(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ipv6_opt_hdr, align 4
  %7 = alloca %struct.ipv6_opt_hdr*, align 8
  %8 = alloca %struct.ip6t_opts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6_opt_hdr, align 4
  %14 = alloca %struct.ipv6_opt_hdr, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %20 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %21 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %20, i32 0, i32 2
  %22 = load %struct.ip6t_opts*, %struct.ip6t_opts** %21, align 8
  store %struct.ip6t_opts* %22, %struct.ip6t_opts** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %25 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ipv6_find_hdr(%struct.sk_buff* %23, i32* %10, i32 %28, i32* null, i32* null)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %39 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %32
  store i32 0, i32* %3, align 4
  br label %285

42:                                               ; preds = %2
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i8* @skb_header_pointer(%struct.sk_buff* %43, i32 %44, i32 4, %struct.ipv6_opt_hdr* %6)
  %46 = bitcast i8* %45 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %46, %struct.ipv6_opt_hdr** %7, align 8
  %47 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %48 = icmp eq %struct.ipv6_opt_hdr* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %51 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32 1, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %285

53:                                               ; preds = %42
  %54 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %55 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %285

64:                                               ; preds = %53
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %67 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %71 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %75 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IP6T_OPTS_LEN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %64
  %81 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %82 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %88 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IP6T_OPTS_INV_LEN, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = xor i32 %86, %95
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %80, %64
  %99 = phi i1 [ true, %64 ], [ %97, %80 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73, i32 %100)
  %102 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %103 = icmp ne %struct.ipv6_opt_hdr* %102, null
  br i1 %103, label %104, label %131

104:                                              ; preds = %98
  %105 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %106 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IP6T_OPTS_LEN, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %104
  %112 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %113 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %119 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IP6T_OPTS_INV_LEN, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = xor i32 %117, %126
  %128 = icmp ne i32 %127, 0
  br label %129

129:                                              ; preds = %111, %104
  %130 = phi i1 [ true, %104 ], [ %128, %111 ]
  br label %131

131:                                              ; preds = %129, %98
  %132 = phi i1 [ false, %98 ], [ %130, %129 ]
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %10, align 4
  %135 = add i32 %134, 2
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sub i32 %136, 2
  store i32 %137, i32* %11, align 4
  %138 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %139 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IP6T_OPTS_OPTS, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %131
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %3, align 4
  br label %285

146:                                              ; preds = %131
  %147 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %148 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %149 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  store i32 0, i32* %9, align 4
  br label %152

152:                                              ; preds = %273, %146
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %155 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ult i32 %153, %156
  br i1 %157, label %158, label %276

158:                                              ; preds = %152
  %159 = load i32, i32* %11, align 4
  %160 = icmp ult i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %276

162:                                              ; preds = %158
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i8* @skb_header_pointer(%struct.sk_buff* %163, i32 %164, i32 4, %struct.ipv6_opt_hdr* %13)
  %166 = bitcast i8* %165 to i32*
  store i32* %166, i32** %15, align 8
  %167 = load i32*, i32** %15, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %276

170:                                              ; preds = %162
  %171 = load i32*, i32** %15, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %174 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 65280
  %181 = ashr i32 %180, 8
  %182 = icmp ne i32 %172, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %170
  %184 = load i32*, i32** %15, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %187 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 65280
  %194 = ashr i32 %193, 8
  %195 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %185, i32 %194)
  store i32 0, i32* %3, align 4
  br label %285

196:                                              ; preds = %170
  %197 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196
  %199 = load i32*, i32** %15, align 8
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %241

202:                                              ; preds = %198
  %203 = load i32, i32* %11, align 4
  %204 = icmp ult i32 %203, 2
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %276

206:                                              ; preds = %202
  %207 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %208 = load i32, i32* %10, align 4
  %209 = add i32 %208, 1
  %210 = call i8* @skb_header_pointer(%struct.sk_buff* %207, i32 %209, i32 4, %struct.ipv6_opt_hdr* %14)
  %211 = bitcast i8* %210 to i32*
  store i32* %211, i32** %16, align 8
  %212 = load i32*, i32** %16, align 8
  %213 = icmp eq i32* %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %276

215:                                              ; preds = %206
  %216 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %217 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %216, i32 0, i32 4
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 255
  store i32 %223, i32* %19, align 4
  %224 = load i32, i32* %19, align 4
  %225 = icmp ne i32 %224, 255
  br i1 %225, label %226, label %236

226:                                              ; preds = %215
  %227 = load i32, i32* %19, align 4
  %228 = load i32*, i32** %16, align 8
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %227, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i32*, i32** %16, align 8
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %19, align 4
  %235 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %233, i32 %234)
  store i32 0, i32* %3, align 4
  br label %285

236:                                              ; preds = %226, %215
  %237 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %238 = load i32*, i32** %16, align 8
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 2
  store i32 %240, i32* %17, align 4
  br label %243

241:                                              ; preds = %198
  %242 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %243

243:                                              ; preds = %241, %236
  %244 = load i32, i32* %17, align 4
  %245 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* %10, align 4
  %247 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %248 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %17, align 4
  %251 = sub i32 %249, %250
  %252 = icmp ugt i32 %246, %251
  br i1 %252, label %257, label %253

253:                                              ; preds = %243
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %17, align 4
  %256 = icmp ult i32 %254, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %253, %243
  %258 = load i32, i32* %9, align 4
  %259 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %260 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = sub i32 %261, 1
  %263 = icmp ult i32 %258, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %257
  %265 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %276

266:                                              ; preds = %257, %253
  %267 = load i32, i32* %17, align 4
  %268 = load i32, i32* %10, align 4
  %269 = add i32 %268, %267
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %17, align 4
  %271 = load i32, i32* %11, align 4
  %272 = sub i32 %271, %270
  store i32 %272, i32* %11, align 4
  br label %273

273:                                              ; preds = %266
  %274 = load i32, i32* %9, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %9, align 4
  br label %152

276:                                              ; preds = %264, %214, %205, %169, %161, %152
  %277 = load i32, i32* %9, align 4
  %278 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %279 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %277, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = load i32, i32* %12, align 4
  store i32 %283, i32* %3, align 4
  br label %285

284:                                              ; preds = %276
  store i32 0, i32* %3, align 4
  br label %285

285:                                              ; preds = %284, %282, %231, %183, %144, %63, %49, %41
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i32*, i32*) #1

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ipv6_opt_hdr*) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
