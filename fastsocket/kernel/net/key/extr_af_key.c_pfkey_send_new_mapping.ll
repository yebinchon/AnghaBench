; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_send_new_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_send_new_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.xfrm_encap_tmpl* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_encap_tmpl = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i64, i32, i64, i64, i64, i32, i32 }
%struct.sadb_sa = type { i32, i64, i64, i64, i64, i64, i32, i32 }
%struct.sadb_address = type { i32, i8*, i64, i64, i32 }
%struct.sadb_x_nat_t_port = type { i32, i64, i32, i32 }
%struct.sockaddr = type { i32 }

@IPPROTO_ESP = common dso_local global i64 0, align 8
@SADB_SATYPE_ESP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_KEY_V2 = common dso_local global i32 0, align 4
@SADB_X_NAT_T_NEW_MAPPING = common dso_local global i32 0, align 4
@SADB_EXT_SA = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_SPORT = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_DPORT = common dso_local global i32 0, align 4
@BROADCAST_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, i32*, i32)* @pfkey_send_new_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_send_new_mapping(%struct.xfrm_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sadb_msg*, align 8
  %10 = alloca %struct.sadb_sa*, align 8
  %11 = alloca %struct.sadb_address*, align 8
  %12 = alloca %struct.sadb_x_nat_t_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.xfrm_encap_tmpl*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_ESP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @SADB_SATYPE_ESP, align 8
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i64 [ %24, %23 ], [ 0, %25 ]
  store i64 %27, i64* %15, align 8
  store %struct.xfrm_encap_tmpl* null, %struct.xfrm_encap_tmpl** %16, align 8
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pfkey_sockaddr_size(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %240

38:                                               ; preds = %26
  %39 = load i64, i64* %15, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %240

44:                                               ; preds = %38
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 3
  %47 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %46, align 8
  %48 = icmp ne %struct.xfrm_encap_tmpl* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %240

52:                                               ; preds = %44
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %54 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %53, i32 0, i32 3
  %55 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %54, align 8
  store %struct.xfrm_encap_tmpl* %55, %struct.xfrm_encap_tmpl** %16, align 8
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = add i64 192, %58
  %60 = add i64 %59, 48
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 16
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.sk_buff* @alloc_skb(i32 %63, i32 %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %8, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = icmp eq %struct.sk_buff* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %240

71:                                               ; preds = %52
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = call i64 @skb_put(%struct.sk_buff* %72, i32 56)
  %74 = inttoptr i64 %73 to %struct.sadb_msg*
  store %struct.sadb_msg* %74, %struct.sadb_msg** %9, align 8
  %75 = load i32, i32* @PF_KEY_V2, align 4
  %76 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %77 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @SADB_X_NAT_T_NEW_MAPPING, align 4
  %79 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %80 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %83 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %82, i32 0, i32 5
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %89 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %91 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %93 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = call i32 (...) @get_acqseq()
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %96 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %99 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %98, i32 0, i32 2
  store i32 %94, i32* %99, align 8
  %100 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %101 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = call i64 @skb_put(%struct.sk_buff* %102, i32 56)
  %104 = inttoptr i64 %103 to %struct.sadb_sa*
  store %struct.sadb_sa* %104, %struct.sadb_sa** %10, align 8
  %105 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %106 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %105, i32 0, i32 0
  store i32 14, i32* %106, align 8
  %107 = load i32, i32* @SADB_EXT_SA, align 4
  %108 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %109 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  %110 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %111 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %115 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %117 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %116, i32 0, i32 5
  store i64 0, i64* %117, align 8
  %118 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %119 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %118, i32 0, i32 4
  store i64 0, i64* %119, align 8
  %120 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %121 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %123 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %125 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 40, %128
  %130 = trunc i64 %129 to i32
  %131 = call i64 @skb_put(%struct.sk_buff* %126, i32 %130)
  %132 = inttoptr i64 %131 to %struct.sadb_address*
  store %struct.sadb_address* %132, %struct.sadb_address** %11, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 40, %134
  %136 = udiv i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %139 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %141 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %142 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %144 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %143, i32 0, i32 3
  store i64 0, i64* %144, align 8
  %145 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %146 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %148 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %151 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %150, i64 1
  %152 = bitcast %struct.sadb_address* %151 to %struct.sockaddr*
  %153 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %154 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @pfkey_sockaddr_fill(i32* %149, i32 0, %struct.sockaddr* %152, i32 %156)
  %158 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %159 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %161 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %71
  %165 = call i32 (...) @BUG()
  br label %166

166:                                              ; preds = %164, %71
  %167 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %168 = call i64 @skb_put(%struct.sk_buff* %167, i32 24)
  %169 = inttoptr i64 %168 to %struct.sadb_x_nat_t_port*
  store %struct.sadb_x_nat_t_port* %169, %struct.sadb_x_nat_t_port** %12, align 8
  %170 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %12, align 8
  %171 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %170, i32 0, i32 0
  store i32 6, i32* %171, align 8
  %172 = load i32, i32* @SADB_X_EXT_NAT_T_SPORT, align 4
  %173 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %12, align 8
  %174 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %16, align 8
  %176 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %12, align 8
  %179 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %12, align 8
  %181 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = add i64 40, %184
  %186 = trunc i64 %185 to i32
  %187 = call i64 @skb_put(%struct.sk_buff* %182, i32 %186)
  %188 = inttoptr i64 %187 to %struct.sadb_address*
  store %struct.sadb_address* %188, %struct.sadb_address** %11, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 40, %190
  %192 = udiv i64 %191, 4
  %193 = trunc i64 %192 to i32
  %194 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %195 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %197 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %198 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 8
  %199 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %200 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %199, i32 0, i32 3
  store i64 0, i64* %200, align 8
  %201 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %202 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %201, i32 0, i32 2
  store i64 0, i64* %202, align 8
  %203 = load i32*, i32** %6, align 8
  %204 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %205 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %204, i64 1
  %206 = bitcast %struct.sadb_address* %205 to %struct.sockaddr*
  %207 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %208 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i8* @pfkey_sockaddr_fill(i32* %203, i32 0, %struct.sockaddr* %206, i32 %210)
  %212 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %213 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  %214 = load %struct.sadb_address*, %struct.sadb_address** %11, align 8
  %215 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %166
  %219 = call i32 (...) @BUG()
  br label %220

220:                                              ; preds = %218, %166
  %221 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %222 = call i64 @skb_put(%struct.sk_buff* %221, i32 24)
  %223 = inttoptr i64 %222 to %struct.sadb_x_nat_t_port*
  store %struct.sadb_x_nat_t_port* %223, %struct.sadb_x_nat_t_port** %12, align 8
  %224 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %12, align 8
  %225 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %224, i32 0, i32 0
  store i32 6, i32* %225, align 8
  %226 = load i32, i32* @SADB_X_EXT_NAT_T_DPORT, align 4
  %227 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %12, align 8
  %228 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %12, align 8
  %231 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %12, align 8
  %233 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %232, i32 0, i32 1
  store i64 0, i64* %233, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %235 = load i32, i32* @GFP_ATOMIC, align 4
  %236 = load i32, i32* @BROADCAST_REGISTERED, align 4
  %237 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %238 = call i32 @xs_net(%struct.xfrm_state* %237)
  %239 = call i32 @pfkey_broadcast(%struct.sk_buff* %234, i32 %235, i32 %236, i32* null, i32 %238)
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %220, %68, %49, %41, %35
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @pfkey_sockaddr_size(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_acqseq(...) #1

declare dso_local i8* @pfkey_sockaddr_fill(i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
