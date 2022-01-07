; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_state_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_state_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.TYPE_10__, i64, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32*, i32*, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.net = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.xfrm_usersa_info = type { i32 }
%struct.nlattr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@XFRMA_ALG_AEAD = common dso_local global i64 0, align 8
@XFRMA_ALG_AUTH_TRUNC = common dso_local global i64 0, align 8
@XFRMA_ALG_AUTH = common dso_local global i64 0, align 8
@xfrm_ealg_get_byname = common dso_local global i32 0, align 4
@XFRMA_ALG_CRYPT = common dso_local global i64 0, align 8
@xfrm_calg_get_byname = common dso_local global i32 0, align 4
@XFRMA_ALG_COMP = common dso_local global i64 0, align 8
@XFRMA_ENCAP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@XFRMA_COADDR = common dso_local global i64 0, align 8
@XFRMA_SEC_CTX = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@XFRM_AE_ETH_M = common dso_local global i32 0, align 4
@XFRM_STATE_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_state* (%struct.net*, %struct.xfrm_usersa_info*, %struct.nlattr**, i32*)* @xfrm_state_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_state* @xfrm_state_construct(%struct.net* %0, %struct.xfrm_usersa_info* %1, %struct.nlattr** %2, i32* %3) #0 {
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xfrm_usersa_info*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfrm_state*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.xfrm_usersa_info* %1, %struct.xfrm_usersa_info** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = call %struct.xfrm_state* @xfrm_state_alloc(%struct.net* %12)
  store %struct.xfrm_state* %13, %struct.xfrm_state** %10, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %17 = icmp ne %struct.xfrm_state* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %227

19:                                               ; preds = %4
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %21 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %7, align 8
  %22 = call i32 @copy_from_user_state(%struct.xfrm_state* %20, %struct.xfrm_usersa_info* %21)
  %23 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %24 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %23, i32 0, i32 12
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %26 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %29 = load i64, i64* @XFRMA_ALG_AEAD, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i32 @attach_aead(i32* %24, i32* %27, %struct.nlattr* %31)
  store i32 %32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %220

35:                                               ; preds = %19
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 11
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %42 = load i64, i64* @XFRMA_ALG_AUTH_TRUNC, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @attach_auth_trunc(i32* %37, i32* %40, %struct.nlattr* %44)
  store i32 %45, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %220

48:                                               ; preds = %35
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %50 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %49, i32 0, i32 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %48
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %56 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %55, i32 0, i32 11
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %61 = load i64, i64* @XFRMA_ALG_AUTH, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i32 @attach_auth(i32* %56, i32* %59, %struct.nlattr* %63)
  store i32 %64, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %220

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %48
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %70 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %69, i32 0, i32 10
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %72 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* @xfrm_ealg_get_byname, align 4
  %75 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %76 = load i64, i64* @XFRMA_ALG_CRYPT, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %75, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = call i32 @attach_one_algo(i32* %70, i32* %73, i32 %74, %struct.nlattr* %78)
  store i32 %79, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %220

82:                                               ; preds = %68
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %84 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %83, i32 0, i32 9
  %85 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %86 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* @xfrm_calg_get_byname, align 4
  %89 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %90 = load i64, i64* @XFRMA_ALG_COMP, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %89, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = call i32 @attach_one_algo(i32* %84, i32* %87, i32 %88, %struct.nlattr* %92)
  store i32 %93, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %220

96:                                               ; preds = %82
  %97 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %98 = load i64, i64* @XFRMA_ENCAP, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %97, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = icmp ne %struct.nlattr* %100, null
  br i1 %101, label %102, label %119

102:                                              ; preds = %96
  %103 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %104 = load i64, i64* @XFRMA_ENCAP, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call i32 @nla_data(%struct.nlattr* %106)
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i8* @kmemdup(i32 %107, i32 4, i32 %108)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %112 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %111, i32 0, i32 7
  store i32* %110, i32** %112, align 8
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %114 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %113, i32 0, i32 7
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  br label %220

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %96
  %120 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %121 = load i64, i64* @XFRMA_COADDR, align 8
  %122 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %120, i64 %121
  %123 = load %struct.nlattr*, %struct.nlattr** %122, align 8
  %124 = icmp ne %struct.nlattr* %123, null
  br i1 %124, label %125, label %142

125:                                              ; preds = %119
  %126 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %127 = load i64, i64* @XFRMA_COADDR, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %126, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = call i32 @nla_data(%struct.nlattr* %129)
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call i8* @kmemdup(i32 %130, i32 4, i32 %131)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %135 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %134, i32 0, i32 6
  store i32* %133, i32** %135, align 8
  %136 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %137 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %125
  br label %220

141:                                              ; preds = %125
  br label %142

142:                                              ; preds = %141, %119
  %143 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %144 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %145 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %144, i32 0, i32 5
  %146 = call i32 @xfrm_mark_get(%struct.nlattr** %143, i32* %145)
  %147 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %148 = call i32 @xfrm_init_state(%struct.xfrm_state* %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %220

152:                                              ; preds = %142
  %153 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %154 = load i64, i64* @XFRMA_SEC_CTX, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %153, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = icmp ne %struct.nlattr* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %152
  %159 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %160 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %161 = load i64, i64* @XFRMA_SEC_CTX, align 8
  %162 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %160, i64 %161
  %163 = load %struct.nlattr*, %struct.nlattr** %162, align 8
  %164 = call i32 @nla_data(%struct.nlattr* %163)
  %165 = call i64 @security_xfrm_state_alloc(%struct.xfrm_state* %159, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %220

168:                                              ; preds = %158, %152
  %169 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %7, align 8
  %170 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %173 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 4
  %175 = load %struct.net*, %struct.net** %6, align 8
  %176 = getelementptr inbounds %struct.net, %struct.net* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %180 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  %181 = load %struct.net*, %struct.net** %6, align 8
  %182 = getelementptr inbounds %struct.net, %struct.net* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @HZ, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load i32, i32* @XFRM_AE_ETH_M, align 4
  %188 = sdiv i32 %186, %187
  %189 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %190 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %192 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 2
  store i64 0, i64* %193, align 8
  %194 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %195 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %199 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %197, %200
  %202 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %203 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  store i64 %201, i64* %204, align 8
  %205 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %206 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %210 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %208, %211
  %213 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %214 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i64 %212, i64* %215, align 8
  %216 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %217 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %218 = call i32 @xfrm_update_ae_params(%struct.xfrm_state* %216, %struct.nlattr** %217)
  %219 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  store %struct.xfrm_state* %219, %struct.xfrm_state** %5, align 8
  br label %230

220:                                              ; preds = %167, %151, %140, %117, %95, %81, %66, %47, %34
  %221 = load i32, i32* @XFRM_STATE_DEAD, align 4
  %222 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %223 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 4
  %225 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %226 = call i32 @xfrm_state_put(%struct.xfrm_state* %225)
  br label %227

227:                                              ; preds = %220, %18
  %228 = load i32, i32* %11, align 4
  %229 = load i32*, i32** %9, align 8
  store i32 %228, i32* %229, align 4
  store %struct.xfrm_state* null, %struct.xfrm_state** %5, align 8
  br label %230

230:                                              ; preds = %227, %168
  %231 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  ret %struct.xfrm_state* %231
}

declare dso_local %struct.xfrm_state* @xfrm_state_alloc(%struct.net*) #1

declare dso_local i32 @copy_from_user_state(%struct.xfrm_state*, %struct.xfrm_usersa_info*) #1

declare dso_local i32 @attach_aead(i32*, i32*, %struct.nlattr*) #1

declare dso_local i32 @attach_auth_trunc(i32*, i32*, %struct.nlattr*) #1

declare dso_local i32 @attach_auth(i32*, i32*, %struct.nlattr*) #1

declare dso_local i32 @attach_one_algo(i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, i32*) #1

declare dso_local i32 @xfrm_init_state(%struct.xfrm_state*) #1

declare dso_local i64 @security_xfrm_state_alloc(%struct.xfrm_state*, i32) #1

declare dso_local i32 @xfrm_update_ae_params(%struct.xfrm_state*, %struct.nlattr**) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
