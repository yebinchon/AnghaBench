; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_getspi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_getspi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sadb_msg = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.net = type { i32 }
%struct.sadb_x_sa2 = type { i32, i32 }
%struct.sadb_address = type { i32 }
%struct.sadb_spirange = type { i32, i32 }
%struct.xfrm_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i16 }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SADB_X_EXT_SA2 = common dso_local global i32 0, align 4
@DUMMY_MARK = common dso_local global i32 0, align 4
@dummy_mark = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SADB_EXT_SPIRANGE = common dso_local global i32 0, align 4
@SADB_GETSPI = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BROADCAST_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_getspi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_getspi(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sadb_x_sa2*, align 8
  %13 = alloca %struct.sadb_address*, align 8
  %14 = alloca %struct.sadb_address*, align 8
  %15 = alloca %struct.sadb_msg*, align 8
  %16 = alloca %struct.sadb_spirange*, align 8
  %17 = alloca %struct.xfrm_state*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i16, align 2
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = call %struct.net* @sock_net(%struct.sock* %27)
  store %struct.net* %28, %struct.net** %10, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %17, align 8
  store i32* null, i32** %25, align 8
  store i32* null, i32** %26, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %9, align 8
  %36 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @present_and_same_family(i8* %34, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %236

46:                                               ; preds = %4
  %47 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %48 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @pfkey_satype2proto(i32 %49)
  store i64 %50, i64* %23, align 8
  %51 = load i64, i64* %23, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %236

56:                                               ; preds = %46
  %57 = load i8**, i8*** %9, align 8
  %58 = load i32, i32* @SADB_X_EXT_SA2, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = bitcast i8* %62 to %struct.sadb_x_sa2*
  store %struct.sadb_x_sa2* %63, %struct.sadb_x_sa2** %12, align 8
  %64 = icmp ne %struct.sadb_x_sa2* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %56
  %66 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %12, align 8
  %67 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pfkey_mode_to_xfrm(i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %236

75:                                               ; preds = %65
  %76 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %12, align 8
  %77 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %22, align 4
  br label %80

79:                                               ; preds = %56
  store i32 0, i32* %18, align 4
  store i32 0, i32* %22, align 4
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i8**, i8*** %9, align 8
  %82 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = bitcast i8* %86 to %struct.sadb_address*
  store %struct.sadb_address* %87, %struct.sadb_address** %13, align 8
  %88 = load i8**, i8*** %9, align 8
  %89 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = bitcast i8* %93 to %struct.sadb_address*
  store %struct.sadb_address* %94, %struct.sadb_address** %14, align 8
  %95 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %96 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %95, i64 1
  %97 = bitcast %struct.sadb_address* %96 to %struct.sockaddr*
  %98 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %97, i32 0, i32 0
  %99 = load i16, i16* %98, align 2
  store i16 %99, i16* %24, align 2
  %100 = load i16, i16* %24, align 2
  %101 = zext i16 %100 to i32
  switch i32 %101, label %113 [
    i32 129, label %102
  ]

102:                                              ; preds = %80
  %103 = load %struct.sadb_address*, %struct.sadb_address** %14, align 8
  %104 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %103, i64 1
  %105 = bitcast %struct.sadb_address* %104 to %struct.sockaddr_in*
  %106 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32* %107, i32** %26, align 8
  %108 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %109 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %108, i64 1
  %110 = bitcast %struct.sadb_address* %109 to %struct.sockaddr_in*
  %111 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32* %112, i32** %25, align 8
  br label %113

113:                                              ; preds = %80, %102
  %114 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %115 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = load %struct.net*, %struct.net** %10, align 8
  %120 = load i32, i32* @DUMMY_MARK, align 4
  %121 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %122 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call %struct.xfrm_state* @xfrm_find_acq_byseq(%struct.net* %119, i32 %120, i64 %123)
  store %struct.xfrm_state* %124, %struct.xfrm_state** %17, align 8
  %125 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %126 = icmp ne %struct.xfrm_state* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %118
  %128 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %129 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32*, i32** %26, align 8
  %132 = load i16, i16* %24, align 2
  %133 = call i64 @xfrm_addr_cmp(i32* %130, i32* %131, i16 zeroext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %137 = call i32 @xfrm_state_put(%struct.xfrm_state* %136)
  store %struct.xfrm_state* null, %struct.xfrm_state** %17, align 8
  br label %138

138:                                              ; preds = %135, %127, %118
  br label %139

139:                                              ; preds = %138, %113
  %140 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %141 = icmp ne %struct.xfrm_state* %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  %143 = load %struct.net*, %struct.net** %10, align 8
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %22, align 4
  %146 = load i64, i64* %23, align 8
  %147 = load i32*, i32** %26, align 8
  %148 = load i32*, i32** %25, align 8
  %149 = load i16, i16* %24, align 2
  %150 = call %struct.xfrm_state* @xfrm_find_acq(%struct.net* %143, i32* @dummy_mark, i32 %144, i32 %145, i64 %146, i32* %147, i32* %148, i32 1, i16 zeroext %149)
  store %struct.xfrm_state* %150, %struct.xfrm_state** %17, align 8
  br label %151

151:                                              ; preds = %142, %139
  %152 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %153 = icmp eq %struct.xfrm_state* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* @ENOENT, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %236

157:                                              ; preds = %151
  store i32 256, i32* %20, align 4
  store i32 268435455, i32* %21, align 4
  %158 = load i8**, i8*** %9, align 8
  %159 = load i32, i32* @SADB_EXT_SPIRANGE, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %158, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = bitcast i8* %163 to %struct.sadb_spirange*
  store %struct.sadb_spirange* %164, %struct.sadb_spirange** %16, align 8
  %165 = load %struct.sadb_spirange*, %struct.sadb_spirange** %16, align 8
  %166 = icmp ne %struct.sadb_spirange* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %157
  %168 = load %struct.sadb_spirange*, %struct.sadb_spirange** %16, align 8
  %169 = getelementptr inbounds %struct.sadb_spirange, %struct.sadb_spirange* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %20, align 4
  %171 = load %struct.sadb_spirange*, %struct.sadb_spirange** %16, align 8
  %172 = getelementptr inbounds %struct.sadb_spirange, %struct.sadb_spirange* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %21, align 4
  br label %174

174:                                              ; preds = %167, %157
  %175 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %21, align 4
  %178 = call i32 @xfrm_alloc_spi(%struct.xfrm_state* %175, i32 %176, i32 %177)
  store i32 %178, i32* %19, align 4
  %179 = load i32, i32* %19, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load i32, i32* %19, align 4
  %183 = call %struct.sk_buff* @ERR_PTR(i32 %182)
  br label %187

184:                                              ; preds = %174
  %185 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %186 = call %struct.sk_buff* @pfkey_xfrm_state2msg(%struct.xfrm_state* %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = phi %struct.sk_buff* [ %183, %181 ], [ %186, %184 ]
  store %struct.sk_buff* %188, %struct.sk_buff** %11, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %190 = call i64 @IS_ERR(%struct.sk_buff* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %194 = call i32 @xfrm_state_put(%struct.xfrm_state* %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %196 = call i32 @PTR_ERR(%struct.sk_buff* %195)
  store i32 %196, i32* %5, align 4
  br label %236

197:                                              ; preds = %187
  %198 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to %struct.sadb_msg*
  store %struct.sadb_msg* %201, %struct.sadb_msg** %15, align 8
  %202 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %203 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.sadb_msg*, %struct.sadb_msg** %15, align 8
  %206 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* @SADB_GETSPI, align 4
  %208 = load %struct.sadb_msg*, %struct.sadb_msg** %15, align 8
  %209 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 4
  %210 = load i64, i64* %23, align 8
  %211 = call i32 @pfkey_proto2satype(i64 %210)
  %212 = load %struct.sadb_msg*, %struct.sadb_msg** %15, align 8
  %213 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  %214 = load %struct.sadb_msg*, %struct.sadb_msg** %15, align 8
  %215 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %214, i32 0, i32 3
  store i64 0, i64* %215, align 8
  %216 = load %struct.sadb_msg*, %struct.sadb_msg** %15, align 8
  %217 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %216, i32 0, i32 2
  store i64 0, i64* %217, align 8
  %218 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %219 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.sadb_msg*, %struct.sadb_msg** %15, align 8
  %222 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %221, i32 0, i32 1
  store i64 %220, i64* %222, align 8
  %223 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %224 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.sadb_msg*, %struct.sadb_msg** %15, align 8
  %227 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %229 = call i32 @xfrm_state_put(%struct.xfrm_state* %228)
  %230 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %231 = load i32, i32* @GFP_KERNEL, align 4
  %232 = load i32, i32* @BROADCAST_ONE, align 4
  %233 = load %struct.sock*, %struct.sock** %6, align 8
  %234 = load %struct.net*, %struct.net** %10, align 8
  %235 = call i32 @pfkey_broadcast(%struct.sk_buff* %230, i32 %231, i32 %232, %struct.sock* %233, %struct.net* %234)
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %197, %192, %154, %72, %53, %43
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @present_and_same_family(i8*, i8*) #1

declare dso_local i64 @pfkey_satype2proto(i32) #1

declare dso_local i32 @pfkey_mode_to_xfrm(i32) #1

declare dso_local %struct.xfrm_state* @xfrm_find_acq_byseq(%struct.net*, i32, i64) #1

declare dso_local i64 @xfrm_addr_cmp(i32*, i32*, i16 zeroext) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local %struct.xfrm_state* @xfrm_find_acq(%struct.net*, i32*, i32, i32, i64, i32*, i32*, i32, i16 zeroext) #1

declare dso_local i32 @xfrm_alloc_spi(%struct.xfrm_state*, i32, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @pfkey_xfrm_state2msg(%struct.xfrm_state*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @pfkey_proto2satype(i64) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, %struct.sock*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
