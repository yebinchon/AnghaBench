; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_spdadd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_spdadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i64, i32, i32 }
%struct.net = type { i32 }
%struct.sadb_lifetime = type { i32, i32, i32, i32 }
%struct.sadb_address = type { i32, i32 }
%struct.sadb_x_policy = type { i64, i64, i32 }
%struct.xfrm_policy = type { %struct.TYPE_4__, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i64, i8*, i32, i32, i8*, i64, i32, i64, i32 }
%struct.km_event = type { i32, i32, i32 }
%struct.sadb_x_sec_ctx = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32 }
%struct.sockaddr_in = type { i64 }

@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@SADB_X_EXT_POLICY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPSEC_POLICY_IPSEC = common dso_local global i64 0, align 8
@IPSEC_DIR_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IPSEC_POLICY_DISCARD = common dso_local global i64 0, align 8
@XFRM_POLICY_BLOCK = common dso_local global i32 0, align 4
@XFRM_POLICY_ALLOW = common dso_local global i32 0, align 4
@SADB_X_EXT_SEC_CTX = common dso_local global i32 0, align 4
@XFRM_INF = common dso_local global i8* null, align 8
@SADB_EXT_LIFETIME_HARD = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_SOFT = common dso_local global i32 0, align 4
@SADB_X_SPDUPDATE = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@XFRM_MSG_UPDPOLICY = common dso_local global i32 0, align 4
@XFRM_MSG_NEWPOLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_spdadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_spdadd(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sadb_lifetime*, align 8
  %13 = alloca %struct.sadb_address*, align 8
  %14 = alloca %struct.sadb_x_policy*, align 8
  %15 = alloca %struct.xfrm_policy*, align 8
  %16 = alloca %struct.km_event, align 4
  %17 = alloca %struct.sadb_x_sec_ctx*, align 8
  %18 = alloca %struct.xfrm_user_sec_ctx*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = call %struct.net* @sock_net(%struct.sock* %19)
  store %struct.net* %20, %struct.net** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load i8**, i8*** %9, align 8
  %22 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %9, align 8
  %28 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @present_and_same_family(i8* %26, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i8**, i8*** %9, align 8
  %37 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35, %4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %400

46:                                               ; preds = %35
  %47 = load i8**, i8*** %9, align 8
  %48 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to %struct.sadb_x_policy*
  store %struct.sadb_x_policy* %53, %struct.sadb_x_policy** %14, align 8
  %54 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %55 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IPSEC_POLICY_IPSEC, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %400

62:                                               ; preds = %46
  %63 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %64 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %69 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IPSEC_DIR_MAX, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %62
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %400

76:                                               ; preds = %67
  %77 = load %struct.net*, %struct.net** %10, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net* %77, i32 %78)
  store %struct.xfrm_policy* %79, %struct.xfrm_policy** %15, align 8
  %80 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %81 = icmp eq %struct.xfrm_policy* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @ENOBUFS, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %400

85:                                               ; preds = %76
  %86 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %87 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IPSEC_POLICY_DISCARD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @XFRM_POLICY_BLOCK, align 4
  br label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @XFRM_POLICY_ALLOW, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %98 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %100 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %103 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load i8**, i8*** %9, align 8
  %105 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = bitcast i8* %109 to %struct.sadb_address*
  store %struct.sadb_address* %110, %struct.sadb_address** %13, align 8
  %111 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %112 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %113 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 9
  %115 = call i64 @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address* %111, i32* %114)
  %116 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %117 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %116, i32 0, i32 5
  store i64 %115, i64* %117, align 8
  %118 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %119 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %95
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %11, align 4
  br label %393

125:                                              ; preds = %95
  %126 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %127 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %130 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 8
  store i64 %128, i64* %131, align 8
  %132 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %133 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %136 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 7
  store i32 %134, i32* %137, align 8
  %138 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %139 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @pfkey_proto_to_xfrm(i32 %140)
  %142 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %143 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  store i8* %141, i8** %144, align 8
  %145 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %146 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %145, i64 1
  %147 = bitcast %struct.sadb_address* %146 to %struct.sockaddr_in*
  %148 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %151 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 6
  store i64 %149, i64* %152, align 8
  %153 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %154 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %125
  %159 = call i8* @htons(i32 65535)
  %160 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %161 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 5
  store i8* %159, i8** %162, align 8
  br label %163

163:                                              ; preds = %158, %125
  %164 = load i8**, i8*** %9, align 8
  %165 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %164, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = bitcast i8* %169 to %struct.sadb_address*
  store %struct.sadb_address* %170, %struct.sadb_address** %13, align 8
  %171 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %172 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %173 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 4
  %175 = call i64 @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address* %171, i32* %174)
  %176 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %177 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %180 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  store i32 %178, i32* %181, align 8
  %182 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %183 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @pfkey_proto_to_xfrm(i32 %184)
  %186 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %187 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  store i8* %185, i8** %188, align 8
  %189 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %190 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %189, i64 1
  %191 = bitcast %struct.sadb_address* %190 to %struct.sockaddr_in*
  %192 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %195 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  store i64 %193, i64* %196, align 8
  %197 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %198 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %163
  %203 = call i8* @htons(i32 65535)
  %204 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %205 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  store i8* %203, i8** %206, align 8
  br label %207

207:                                              ; preds = %202, %163
  %208 = load i8**, i8*** %9, align 8
  %209 = load i32, i32* @SADB_X_EXT_SEC_CTX, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %208, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = bitcast i8* %213 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %214, %struct.sadb_x_sec_ctx** %17, align 8
  %215 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %17, align 8
  %216 = icmp ne %struct.sadb_x_sec_ctx* %215, null
  br i1 %216, label %217, label %236

217:                                              ; preds = %207
  %218 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %17, align 8
  %219 = call %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx* %218)
  store %struct.xfrm_user_sec_ctx* %219, %struct.xfrm_user_sec_ctx** %18, align 8
  %220 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %18, align 8
  %221 = icmp ne %struct.xfrm_user_sec_ctx* %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* @ENOBUFS, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %11, align 4
  br label %393

225:                                              ; preds = %217
  %226 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %227 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %226, i32 0, i32 3
  %228 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %18, align 8
  %229 = call i32 @security_xfrm_policy_alloc(i32* %227, %struct.xfrm_user_sec_ctx* %228)
  store i32 %229, i32* %11, align 4
  %230 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %18, align 8
  %231 = call i32 @kfree(%struct.xfrm_user_sec_ctx* %230)
  %232 = load i32, i32* %11, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %225
  br label %393

235:                                              ; preds = %225
  br label %236

236:                                              ; preds = %235, %207
  %237 = load i8*, i8** @XFRM_INF, align 8
  %238 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %239 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  store i8* %237, i8** %240, align 8
  %241 = load i8*, i8** @XFRM_INF, align 8
  %242 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %243 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 6
  store i8* %241, i8** %244, align 8
  %245 = load i8*, i8** @XFRM_INF, align 8
  %246 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %247 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 3
  store i8* %245, i8** %248, align 8
  %249 = load i8*, i8** @XFRM_INF, align 8
  %250 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %251 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 7
  store i8* %249, i8** %252, align 8
  %253 = load i8**, i8*** %9, align 8
  %254 = load i32, i32* @SADB_EXT_LIFETIME_HARD, align 4
  %255 = sub nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %253, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = bitcast i8* %258 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %259, %struct.sadb_lifetime** %12, align 8
  %260 = icmp ne %struct.sadb_lifetime* %259, null
  br i1 %260, label %261, label %288

261:                                              ; preds = %236
  %262 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %263 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = call i8* @_KEY2X(i32 %264)
  %266 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %267 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 7
  store i8* %265, i8** %268, align 8
  %269 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %270 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = call i8* @_KEY2X(i32 %271)
  %273 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %274 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 6
  store i8* %272, i8** %275, align 8
  %276 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %277 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %280 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 5
  store i32 %278, i32* %281, align 4
  %282 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %283 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %286 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 4
  store i32 %284, i32* %287, align 8
  br label %288

288:                                              ; preds = %261, %236
  %289 = load i8**, i8*** %9, align 8
  %290 = load i32, i32* @SADB_EXT_LIFETIME_SOFT, align 4
  %291 = sub nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8*, i8** %289, i64 %292
  %294 = load i8*, i8** %293, align 8
  %295 = bitcast i8* %294 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %295, %struct.sadb_lifetime** %12, align 8
  %296 = icmp ne %struct.sadb_lifetime* %295, null
  br i1 %296, label %297, label %324

297:                                              ; preds = %288
  %298 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %299 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = call i8* @_KEY2X(i32 %300)
  %302 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %303 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 3
  store i8* %301, i8** %304, align 8
  %305 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %306 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = call i8* @_KEY2X(i32 %307)
  %309 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %310 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 2
  store i8* %308, i8** %311, align 8
  %312 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %313 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %316 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 1
  store i32 %314, i32* %317, align 4
  %318 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %319 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %322 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 0
  store i32 %320, i32* %323, align 8
  br label %324

324:                                              ; preds = %297, %288
  %325 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %326 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %325, i32 0, i32 1
  store i64 0, i64* %326, align 8
  %327 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %328 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @IPSEC_POLICY_IPSEC, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %338

332:                                              ; preds = %324
  %333 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %334 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %335 = call i32 @parse_ipsecrequests(%struct.xfrm_policy* %333, %struct.sadb_x_policy* %334)
  store i32 %335, i32* %11, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %332
  br label %393

338:                                              ; preds = %332, %324
  %339 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %340 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = sub nsw i64 %341, 1
  %343 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %344 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %345 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @SADB_X_SPDUPDATE, align 8
  %348 = icmp ne i64 %346, %347
  %349 = zext i1 %348 to i32
  %350 = call i32 @xfrm_policy_insert(i64 %342, %struct.xfrm_policy* %343, i32 %349)
  store i32 %350, i32* %11, align 4
  %351 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %352 = load i32, i32* %11, align 4
  %353 = icmp ne i32 %352, 0
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i32 0, i32 1
  %356 = load i32, i32* @current, align 4
  %357 = call i32 @audit_get_loginuid(i32 %356)
  %358 = load i32, i32* @current, align 4
  %359 = call i32 @audit_get_sessionid(i32 %358)
  %360 = call i32 @xfrm_audit_policy_add(%struct.xfrm_policy* %351, i32 %355, i32 %357, i32 %359, i32 0)
  %361 = load i32, i32* %11, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %338
  br label %393

364:                                              ; preds = %338
  %365 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %366 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @SADB_X_SPDUPDATE, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %364
  %371 = load i32, i32* @XFRM_MSG_UPDPOLICY, align 4
  %372 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 2
  store i32 %371, i32* %372, align 4
  br label %376

373:                                              ; preds = %364
  %374 = load i32, i32* @XFRM_MSG_NEWPOLICY, align 4
  %375 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 2
  store i32 %374, i32* %375, align 4
  br label %376

376:                                              ; preds = %373, %370
  %377 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %378 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 1
  store i32 %379, i32* %380, align 4
  %381 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %382 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 0
  store i32 %383, i32* %384, align 4
  %385 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %386 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %387 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = sub nsw i64 %388, 1
  %390 = call i32 @km_policy_notify(%struct.xfrm_policy* %385, i64 %389, %struct.km_event* %16)
  %391 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %392 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %391)
  store i32 0, i32* %5, align 4
  br label %400

393:                                              ; preds = %363, %337, %234, %222, %122
  %394 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %395 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  store i32 1, i32* %396, align 8
  %397 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %398 = call i32 @xfrm_policy_destroy(%struct.xfrm_policy* %397)
  %399 = load i32, i32* %11, align 4
  store i32 %399, i32* %5, align 4
  br label %400

400:                                              ; preds = %393, %376, %82, %73, %59, %43
  %401 = load i32, i32* %5, align 4
  ret i32 %401
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @present_and_same_family(i8*, i8*) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net*, i32) #1

declare dso_local i64 @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address*, i32*) #1

declare dso_local i8* @pfkey_proto_to_xfrm(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx*) #1

declare dso_local i32 @security_xfrm_policy_alloc(i32*, %struct.xfrm_user_sec_ctx*) #1

declare dso_local i32 @kfree(%struct.xfrm_user_sec_ctx*) #1

declare dso_local i8* @_KEY2X(i32) #1

declare dso_local i32 @parse_ipsecrequests(%struct.xfrm_policy*, %struct.sadb_x_policy*) #1

declare dso_local i32 @xfrm_policy_insert(i64, %struct.xfrm_policy*, i32) #1

declare dso_local i32 @xfrm_audit_policy_add(%struct.xfrm_policy*, i32, i32, i32, i32) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @km_policy_notify(%struct.xfrm_policy*, i64, %struct.km_event*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

declare dso_local i32 @xfrm_policy_destroy(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
