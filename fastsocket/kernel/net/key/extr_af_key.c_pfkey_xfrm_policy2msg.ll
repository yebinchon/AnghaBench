; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_xfrm_policy2msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_xfrm_policy2msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_policy = type { i64, i32, i32, %struct.xfrm_sec_ctx*, %struct.xfrm_tmpl*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_8__ }
%struct.xfrm_sec_ctx = type { i32, i32, i32, i32 }
%struct.xfrm_tmpl = type { i64, i32, %struct.TYPE_7__, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sadb_msg = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.sadb_address = type { i32, i64, i32, i8*, i32 }
%struct.sadb_lifetime = type { i32, i32, i32, i8*, i8*, i32 }
%struct.sadb_x_policy = type { i32, i32, i32, i32, i32, i32 }
%struct.sadb_x_sec_ctx = type { i32, i32, i32, i32, i32 }
%struct.sadb_x_ipsecrequest = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.sockaddr = type { i32 }

@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_HARD = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_SOFT = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_CURRENT = common dso_local global i32 0, align 4
@SADB_X_EXT_POLICY = common dso_local global i32 0, align 4
@IPSEC_POLICY_DISCARD = common dso_local global i32 0, align 4
@XFRM_POLICY_ALLOW = common dso_local global i64 0, align 8
@IPSEC_POLICY_IPSEC = common dso_local global i32 0, align 4
@IPSEC_POLICY_NONE = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IPSEC_LEVEL_REQUIRE = common dso_local global i32 0, align 4
@IPSEC_LEVEL_UNIQUE = common dso_local global i32 0, align 4
@IPSEC_LEVEL_USE = common dso_local global i32 0, align 4
@SADB_X_EXT_SEC_CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_policy*, i32)* @pfkey_xfrm_policy2msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_xfrm_policy2msg(%struct.sk_buff* %0, %struct.xfrm_policy* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca %struct.sadb_address*, align 8
  %10 = alloca %struct.sadb_lifetime*, align 8
  %11 = alloca %struct.sadb_x_policy*, align 8
  %12 = alloca %struct.sadb_x_sec_ctx*, align 8
  %13 = alloca %struct.xfrm_sec_ctx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sadb_x_ipsecrequest*, align 8
  %19 = alloca %struct.xfrm_tmpl*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %25 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pfkey_sockaddr_size(i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %29 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pfkey_sockaddr_len(i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %33 = call i32 @pfkey_xfrm_policy2msg_size(%struct.xfrm_policy* %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i64 @skb_put(%struct.sk_buff* %34, i32 32)
  %36 = inttoptr i64 %35 to %struct.sadb_msg*
  store %struct.sadb_msg* %36, %struct.sadb_msg** %8, align 8
  %37 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %38 = bitcast %struct.sadb_msg* %37 to %struct.sadb_x_ipsecrequest*
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @memset(%struct.sadb_x_ipsecrequest* %38, i32 0, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 40, %43
  %45 = trunc i64 %44 to i32
  %46 = call i64 @skb_put(%struct.sk_buff* %41, i32 %45)
  %47 = inttoptr i64 %46 to %struct.sadb_address*
  store %struct.sadb_address* %47, %struct.sadb_address** %9, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 40, %49
  %51 = udiv i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %54 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %56 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %57 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %59 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @pfkey_proto_from_xfrm(i32 %61)
  %63 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %64 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %66 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %65, i32 0, i32 10
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %70 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %72 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %74 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %73, i32 0, i32 10
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  %76 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %77 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %81 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %80, i64 1
  %82 = bitcast %struct.sadb_address* %81 to %struct.sockaddr*
  %83 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %84 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @pfkey_sockaddr_fill(i32* %75, i32 %79, %struct.sockaddr* %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %3
  %89 = call i32 (...) @BUG()
  br label %90

90:                                               ; preds = %88, %3
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 40, %93
  %95 = trunc i64 %94 to i32
  %96 = call i64 @skb_put(%struct.sk_buff* %91, i32 %95)
  %97 = inttoptr i64 %96 to %struct.sadb_address*
  store %struct.sadb_address* %97, %struct.sadb_address** %9, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 40, %99
  %101 = udiv i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %104 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %106 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %107 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %109 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %108, i32 0, i32 10
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @pfkey_proto_from_xfrm(i32 %111)
  %113 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %114 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %116 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %115, i32 0, i32 10
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %120 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %122 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %124 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %127 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %131 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %130, i64 1
  %132 = bitcast %struct.sadb_address* %131 to %struct.sockaddr*
  %133 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %134 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pfkey_sockaddr_fill(i32* %125, i32 %129, %struct.sockaddr* %132, i32 %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = call i64 @skb_put(%struct.sk_buff* %137, i32 40)
  %139 = inttoptr i64 %138 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %139, %struct.sadb_lifetime** %10, align 8
  %140 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %141 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %140, i32 0, i32 0
  store i32 10, i32* %141, align 8
  %142 = load i32, i32* @SADB_EXT_LIFETIME_HARD, align 4
  %143 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %144 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 8
  %145 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %146 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @_X2KEY(i32 %148)
  %150 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %151 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %153 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %152, i32 0, i32 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @_X2KEY(i32 %155)
  %157 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %158 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  %159 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %160 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %164 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %166 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %170 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = call i64 @skb_put(%struct.sk_buff* %171, i32 40)
  %173 = inttoptr i64 %172 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %173, %struct.sadb_lifetime** %10, align 8
  %174 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %175 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %174, i32 0, i32 0
  store i32 10, i32* %175, align 8
  %176 = load i32, i32* @SADB_EXT_LIFETIME_SOFT, align 4
  %177 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %178 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 8
  %179 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %180 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @_X2KEY(i32 %182)
  %184 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %185 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  %186 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %187 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %186, i32 0, i32 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i8* @_X2KEY(i32 %189)
  %191 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %192 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  %193 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %194 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %193, i32 0, i32 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %198 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %200 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %199, i32 0, i32 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %204 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %206 = call i64 @skb_put(%struct.sk_buff* %205, i32 40)
  %207 = inttoptr i64 %206 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %207, %struct.sadb_lifetime** %10, align 8
  %208 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %209 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %208, i32 0, i32 0
  store i32 10, i32* %209, align 8
  %210 = load i32, i32* @SADB_EXT_LIFETIME_CURRENT, align 4
  %211 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %212 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %211, i32 0, i32 5
  store i32 %210, i32* %212, align 8
  %213 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %214 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %213, i32 0, i32 7
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %218 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %217, i32 0, i32 4
  store i8* %216, i8** %218, align 8
  %219 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %220 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %224 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %223, i32 0, i32 3
  store i8* %222, i8** %224, align 8
  %225 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %226 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %225, i32 0, i32 7
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %230 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %232 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %236 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %238 = call i64 @skb_put(%struct.sk_buff* %237, i32 24)
  %239 = inttoptr i64 %238 to %struct.sadb_x_policy*
  store %struct.sadb_x_policy* %239, %struct.sadb_x_policy** %11, align 8
  %240 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %241 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %240, i32 0, i32 0
  store i32 6, i32* %241, align 4
  %242 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %243 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %244 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %243, i32 0, i32 5
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* @IPSEC_POLICY_DISCARD, align 4
  %246 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %247 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %246, i32 0, i32 4
  store i32 %245, i32* %247, align 4
  %248 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %249 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @XFRM_POLICY_ALLOW, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %267

253:                                              ; preds = %90
  %254 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %255 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load i32, i32* @IPSEC_POLICY_IPSEC, align 4
  %260 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %261 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %260, i32 0, i32 4
  store i32 %259, i32* %261, align 4
  br label %266

262:                                              ; preds = %253
  %263 = load i32, i32* @IPSEC_POLICY_NONE, align 4
  %264 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %265 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %264, i32 0, i32 4
  store i32 %263, i32* %265, align 4
  br label %266

266:                                              ; preds = %262, %258
  br label %267

267:                                              ; preds = %266, %90
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  %270 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %271 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %273 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %276 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %275, i32 0, i32 3
  store i32 %274, i32* %276, align 4
  %277 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %278 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %281 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 4
  store i32 0, i32* %14, align 4
  br label %282

282:                                              ; preds = %406, %267
  %283 = load i32, i32* %14, align 4
  %284 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %285 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %409

288:                                              ; preds = %282
  %289 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %290 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %289, i32 0, i32 4
  %291 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %290, align 8
  %292 = load i32, i32* %14, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %291, i64 %293
  store %struct.xfrm_tmpl* %294, %struct.xfrm_tmpl** %19, align 8
  store i32 32, i32* %20, align 4
  %295 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %296 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %288
  %301 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %302 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @pfkey_sockaddr_len(i32 %303)
  store i32 %304, i32* %17, align 4
  %305 = load i32, i32* %17, align 4
  %306 = mul nsw i32 %305, 2
  %307 = load i32, i32* %20, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %20, align 4
  br label %314

309:                                              ; preds = %288
  %310 = load i32, i32* %17, align 4
  %311 = mul nsw i32 2, %310
  %312 = load i32, i32* %15, align 4
  %313 = sub nsw i32 %312, %311
  store i32 %313, i32* %15, align 4
  br label %314

314:                                              ; preds = %309, %300
  %315 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %316 = load i32, i32* %20, align 4
  %317 = call i64 @skb_put(%struct.sk_buff* %315, i32 %316)
  %318 = inttoptr i64 %317 to i8*
  %319 = bitcast i8* %318 to %struct.sadb_x_ipsecrequest*
  store %struct.sadb_x_ipsecrequest* %319, %struct.sadb_x_ipsecrequest** %18, align 8
  %320 = load i32, i32* %20, align 4
  %321 = sdiv i32 %320, 8
  %322 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %323 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, %321
  store i32 %325, i32* %323, align 4
  %326 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %18, align 8
  %327 = call i32 @memset(%struct.sadb_x_ipsecrequest* %326, i32 0, i32 32)
  %328 = load i32, i32* %20, align 4
  %329 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %18, align 8
  %330 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  %331 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %332 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %18, align 8
  %336 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %335, i32 0, i32 6
  store i32 %334, i32* %336, align 4
  %337 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %338 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = call i32 @pfkey_mode_from_xfrm(i64 %339)
  store i32 %340, i32* %21, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %314
  %343 = load i32, i32* @EINVAL, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %4, align 4
  br label %466

345:                                              ; preds = %314
  %346 = load i32, i32* %21, align 4
  %347 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %18, align 8
  %348 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %347, i32 0, i32 1
  store i32 %346, i32* %348, align 4
  %349 = load i32, i32* @IPSEC_LEVEL_REQUIRE, align 4
  %350 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %18, align 8
  %351 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %350, i32 0, i32 5
  store i32 %349, i32* %351, align 8
  %352 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %353 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %352, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %345
  %357 = load i32, i32* @IPSEC_LEVEL_UNIQUE, align 4
  %358 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %18, align 8
  %359 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %358, i32 0, i32 5
  store i32 %357, i32* %359, align 8
  br label %360

360:                                              ; preds = %356, %345
  %361 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %362 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %361, i32 0, i32 5
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %360
  %366 = load i32, i32* @IPSEC_LEVEL_USE, align 4
  %367 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %18, align 8
  %368 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %367, i32 0, i32 5
  store i32 %366, i32* %368, align 8
  br label %369

369:                                              ; preds = %365, %360
  %370 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %371 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %370, i32 0, i32 4
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %18, align 8
  %374 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %373, i32 0, i32 4
  store i64 %372, i64* %374, align 8
  %375 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %376 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %405

380:                                              ; preds = %369
  %381 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %18, align 8
  %382 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %381, i64 1
  %383 = bitcast %struct.sadb_x_ipsecrequest* %382 to i8*
  %384 = bitcast i8* %383 to i32*
  store i32* %384, i32** %22, align 8
  %385 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %386 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %385, i32 0, i32 3
  %387 = load i32*, i32** %22, align 8
  %388 = bitcast i32* %387 to %struct.sockaddr*
  %389 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %390 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = call i32 @pfkey_sockaddr_fill(i32* %386, i32 0, %struct.sockaddr* %388, i32 %391)
  %393 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %394 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = load i32*, i32** %22, align 8
  %397 = load i32, i32* %17, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = bitcast i32* %399 to %struct.sockaddr*
  %401 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %402 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @pfkey_sockaddr_fill(i32* %395, i32 0, %struct.sockaddr* %400, i32 %403)
  br label %405

405:                                              ; preds = %380, %369
  br label %406

406:                                              ; preds = %405
  %407 = load i32, i32* %14, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %14, align 4
  br label %282

409:                                              ; preds = %282
  %410 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %411 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %410, i32 0, i32 3
  %412 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %411, align 8
  store %struct.xfrm_sec_ctx* %412, %struct.xfrm_sec_ctx** %13, align 8
  %413 = icmp ne %struct.xfrm_sec_ctx* %412, null
  br i1 %413, label %414, label %454

414:                                              ; preds = %409
  %415 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %416 = call i32 @pfkey_xfrm_policy2sec_ctx_size(%struct.xfrm_policy* %415)
  store i32 %416, i32* %23, align 4
  %417 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %418 = load i32, i32* %23, align 4
  %419 = call i64 @skb_put(%struct.sk_buff* %417, i32 %418)
  %420 = inttoptr i64 %419 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %420, %struct.sadb_x_sec_ctx** %12, align 8
  %421 = load i32, i32* %23, align 4
  %422 = sext i32 %421 to i64
  %423 = udiv i64 %422, 4
  %424 = trunc i64 %423 to i32
  %425 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %426 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %425, i32 0, i32 0
  store i32 %424, i32* %426, align 4
  %427 = load i32, i32* @SADB_X_EXT_SEC_CTX, align 4
  %428 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %429 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %428, i32 0, i32 4
  store i32 %427, i32* %429, align 4
  %430 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %13, align 8
  %431 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %434 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %433, i32 0, i32 3
  store i32 %432, i32* %434, align 4
  %435 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %13, align 8
  %436 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %439 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %438, i32 0, i32 2
  store i32 %437, i32* %439, align 4
  %440 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %13, align 8
  %441 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %444 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %443, i32 0, i32 1
  store i32 %442, i32* %444, align 4
  %445 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %446 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %445, i64 1
  %447 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %13, align 8
  %448 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %13, align 8
  %451 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @memcpy(%struct.sadb_x_sec_ctx* %446, i32 %449, i32 %452)
  br label %454

454:                                              ; preds = %414, %409
  %455 = load i32, i32* %15, align 4
  %456 = sext i32 %455 to i64
  %457 = udiv i64 %456, 4
  %458 = trunc i64 %457 to i32
  %459 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %460 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %459, i32 0, i32 2
  store i32 %458, i32* %460, align 8
  %461 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %462 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %461, i32 0, i32 2
  %463 = call i32 @atomic_read(i32* %462)
  %464 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %465 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %464, i32 0, i32 3
  store i32 %463, i32* %465, align 4
  store i32 0, i32* %4, align 4
  br label %466

466:                                              ; preds = %454, %342
  %467 = load i32, i32* %4, align 4
  ret i32 %467
}

declare dso_local i32 @pfkey_sockaddr_size(i32) #1

declare dso_local i32 @pfkey_sockaddr_len(i32) #1

declare dso_local i32 @pfkey_xfrm_policy2msg_size(%struct.xfrm_policy*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.sadb_x_ipsecrequest*, i32, i32) #1

declare dso_local i8* @pfkey_proto_from_xfrm(i32) #1

declare dso_local i32 @pfkey_sockaddr_fill(i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i8* @_X2KEY(i32) #1

declare dso_local i32 @pfkey_mode_from_xfrm(i64) #1

declare dso_local i32 @pfkey_xfrm_policy2sec_ctx_size(%struct.xfrm_policy*) #1

declare dso_local i32 @memcpy(%struct.sadb_x_sec_ctx*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
