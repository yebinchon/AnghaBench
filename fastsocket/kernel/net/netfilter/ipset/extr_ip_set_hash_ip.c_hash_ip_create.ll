; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_ip.c_hash_ip_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_ip.c_hash_ip_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i64, %struct.ip_set_hash*, i32, i32* }
%struct.ip_set_hash = type { i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@IPSET_DEFAULT_HASHSIZE = common dso_local global i64 0, align 8
@IPSET_DEFAULT_MAXELEM = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IPSET_ERR_INVALID_FAMILY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Create set %s with family %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@IPSET_ATTR_HASHSIZE = common dso_local global i64 0, align 8
@IPSET_ATTR_MAXELEM = common dso_local global i64 0, align 8
@IPSET_ATTR_TIMEOUT = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_MIMINAL_HASHSIZE = common dso_local global i64 0, align 8
@IPSET_ATTR_NETMASK = common dso_local global i64 0, align 8
@IPSET_ERR_INVALID_NETMASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_NO_TIMEOUT = common dso_local global i32 0, align 4
@hash_ip4_tvariant = common dso_local global i32 0, align 4
@hash_ip6_tvariant = common dso_local global i32 0, align 4
@hash_ip4_variant = common dso_local global i32 0, align 4
@hash_ip6_variant = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"create %s hashsize %u (%u) maxelem %u: %p(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.nlattr**, i64)* @hash_ip_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_ip_create(%struct.ip_set* %0, %struct.nlattr** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ip_set_hash*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* @IPSET_DEFAULT_HASHSIZE, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* @IPSET_DEFAULT_MAXELEM, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %17 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_INET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %23 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_INET6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @IPSET_ERR_INVALID_FAMILY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %264

30:                                               ; preds = %21, %3
  %31 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %32 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 32, i32 128
  store i32 %37, i32* %10, align 4
  %38 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %39 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %42 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AF_INET, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 (i8*, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %47)
  %49 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %50 = load i64, i64* @IPSET_ATTR_HASHSIZE, align 8
  %51 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %30
  %54 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %55 = load i64, i64* @IPSET_ATTR_MAXELEM, align 8
  %56 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %60 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %61 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %58, %53, %30
  %65 = phi i1 [ true, %53 ], [ true, %30 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %264

72:                                               ; preds = %64
  %73 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %74 = load i64, i64* @IPSET_ATTR_HASHSIZE, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %73, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %80 = load i64, i64* @IPSET_ATTR_HASHSIZE, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = call i64 @ip_set_get_h32(%struct.nlattr* %82)
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @IPSET_MIMINAL_HASHSIZE, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i64, i64* @IPSET_MIMINAL_HASHSIZE, align 8
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %87, %78
  br label %90

90:                                               ; preds = %89, %72
  %91 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %92 = load i64, i64* @IPSET_ATTR_MAXELEM, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %91, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %98 = load i64, i64* @IPSET_ATTR_MAXELEM, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %97, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = call i64 @ip_set_get_h32(%struct.nlattr* %100)
  store i64 %101, i64* %9, align 8
  br label %102

102:                                              ; preds = %96, %90
  %103 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %104 = load i64, i64* @IPSET_ATTR_NETMASK, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = icmp ne %struct.nlattr* %106, null
  br i1 %107, label %108, label %138

108:                                              ; preds = %102
  %109 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %110 = load i64, i64* @IPSET_ATTR_NETMASK, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %109, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = call i32 @nla_get_u8(%struct.nlattr* %112)
  store i32 %113, i32* %10, align 4
  %114 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %115 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AF_INET, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = load i32, i32* %10, align 4
  %121 = icmp sgt i32 %120, 32
  br i1 %121, label %134, label %122

122:                                              ; preds = %119, %108
  %123 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %124 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AF_INET6, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* %10, align 4
  %130 = icmp sgt i32 %129, 128
  br i1 %130, label %134, label %131

131:                                              ; preds = %128, %122
  %132 = load i32, i32* %10, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131, %128, %119
  %135 = load i32, i32* @IPSET_ERR_INVALID_NETMASK, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %264

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %102
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call %struct.ip_set_hash* @kzalloc(i32 32, i32 %139)
  store %struct.ip_set_hash* %140, %struct.ip_set_hash** %13, align 8
  %141 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %142 = icmp ne %struct.ip_set_hash* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %264

146:                                              ; preds = %138
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %149 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %152 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %154 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %153, i32 0, i32 4
  %155 = call i32 @get_random_bytes(i32* %154, i32 4)
  %156 = load i32, i32* @IPSET_NO_TIMEOUT, align 4
  %157 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %158 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load i64, i64* %8, align 8
  %160 = call i32 @htable_bits(i64 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i64 @htable_size(i32 %161)
  store i64 %162, i64* %12, align 8
  %163 = load i64, i64* %12, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %146
  %166 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %167 = call i32 @kfree(%struct.ip_set_hash* %166)
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %264

170:                                              ; preds = %146
  %171 = load i64, i64* %12, align 8
  %172 = call %struct.TYPE_2__* @ip_set_alloc(i64 %171)
  %173 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %174 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %173, i32 0, i32 1
  store %struct.TYPE_2__* %172, %struct.TYPE_2__** %174, align 8
  %175 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %176 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %175, i32 0, i32 1
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = icmp ne %struct.TYPE_2__* %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %170
  %180 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %181 = call i32 @kfree(%struct.ip_set_hash* %180)
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %264

184:                                              ; preds = %170
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %187 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %186, i32 0, i32 1
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 4
  %190 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %191 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %192 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %191, i32 0, i32 1
  store %struct.ip_set_hash* %190, %struct.ip_set_hash** %192, align 8
  %193 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %194 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %195 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %193, i64 %194
  %196 = load %struct.nlattr*, %struct.nlattr** %195, align 8
  %197 = icmp ne %struct.nlattr* %196, null
  br i1 %197, label %198, label %227

198:                                              ; preds = %184
  %199 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %200 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %201 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %199, i64 %200
  %202 = load %struct.nlattr*, %struct.nlattr** %201, align 8
  %203 = call i32 @ip_set_timeout_uget(%struct.nlattr* %202)
  %204 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %205 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 8
  %206 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %207 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @AF_INET, align 8
  %210 = icmp eq i64 %208, %209
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32* @hash_ip4_tvariant, i32* @hash_ip6_tvariant
  %213 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %214 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %213, i32 0, i32 3
  store i32* %212, i32** %214, align 8
  %215 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %216 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @AF_INET, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %198
  %221 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %222 = call i32 @hash_ip4_gc_init(%struct.ip_set* %221)
  br label %226

223:                                              ; preds = %198
  %224 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %225 = call i32 @hash_ip6_gc_init(%struct.ip_set* %224)
  br label %226

226:                                              ; preds = %223, %220
  br label %237

227:                                              ; preds = %184
  %228 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %229 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @AF_INET, align 8
  %232 = icmp eq i64 %230, %231
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32* @hash_ip4_variant, i32* @hash_ip6_variant
  %235 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %236 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %235, i32 0, i32 3
  store i32* %234, i32** %236, align 8
  br label %237

237:                                              ; preds = %227, %226
  %238 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %239 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %242 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %241, i32 0, i32 1
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @jhash_size(i32 %245)
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %250 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %249, i32 0, i32 1
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %255 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %258 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %257, i32 0, i32 1
  %259 = load %struct.ip_set_hash*, %struct.ip_set_hash** %258, align 8
  %260 = load %struct.ip_set_hash*, %struct.ip_set_hash** %13, align 8
  %261 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %260, i32 0, i32 1
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = call i32 (i8*, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %240, i8* %248, i32 %253, i64 %256, %struct.ip_set_hash* %259, %struct.TYPE_2__* %262)
  store i32 0, i32* %4, align 4
  br label %264

264:                                              ; preds = %237, %179, %165, %143, %134, %69, %27
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local i32 @pr_debug(i8*, i32, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_set_optattr_netorder(%struct.nlattr**, i64) #1

declare dso_local i64 @ip_set_get_h32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.ip_set_hash* @kzalloc(i32, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @htable_bits(i64) #1

declare dso_local i64 @htable_size(i32) #1

declare dso_local i32 @kfree(%struct.ip_set_hash*) #1

declare dso_local %struct.TYPE_2__* @ip_set_alloc(i64) #1

declare dso_local i32 @ip_set_timeout_uget(%struct.nlattr*) #1

declare dso_local i32 @hash_ip4_gc_init(%struct.ip_set*) #1

declare dso_local i32 @hash_ip6_gc_init(%struct.ip_set*) #1

declare dso_local i32 @jhash_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
