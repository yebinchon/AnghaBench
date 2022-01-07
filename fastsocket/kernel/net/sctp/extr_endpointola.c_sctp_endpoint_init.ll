; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_endpointola.c_sctp_endpoint_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_endpointola.c_sctp_endpoint_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { %struct.sctp_hmac_algo_param*, i32, %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param*, i32, i64, i64, i32*, i32, i32, i32, %struct.TYPE_4__ }
%struct.sctp_hmac_algo_param = type { %struct.TYPE_3__, i32*, i8** }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32, %struct.sock*, i32, i32, i64, i32, i32 }
%struct.sock = type { i32, i32 }
%struct.sctp_chunks_param = type { %struct.TYPE_3__, i32*, i8** }
%struct.sctp_shared_key = type { i32 }

@SCTP_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@sctp_auth_enable = common dso_local global i64 0, align 8
@SCTP_AUTH_NUM_HMACS = common dso_local global i32 0, align 4
@SCTP_NUM_CHUNK_TYPES = common dso_local global i32 0, align 4
@SCTP_PARAM_HMAC_ALGO = common dso_local global i32 0, align 4
@SCTP_AUTH_HMAC_ID_SHA1 = common dso_local global i32 0, align 4
@SCTP_PARAM_CHUNKS = common dso_local global i32 0, align 4
@sctp_addip_enable = common dso_local global i64 0, align 8
@SCTP_CID_ASCONF = common dso_local global i32 0, align 4
@SCTP_CID_ASCONF_ACK = common dso_local global i32 0, align 4
@SCTP_EP_TYPE_SOCKET = common dso_local global i32 0, align 4
@sctp_endpoint_bh_rcv = common dso_local global i32 0, align 4
@sctp_sndbuf_policy = common dso_local global i32 0, align 4
@sctp_data_ready = common dso_local global i32 0, align 4
@sctp_write_space = common dso_local global i32 0, align 4
@SOCK_USE_WRITE_QUEUE = common dso_local global i32 0, align 4
@sctp_rcvbuf_policy = common dso_local global i32 0, align 4
@SCTP_SECRET_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_endpoint* (%struct.sctp_endpoint*, %struct.sock*, i32)* @sctp_endpoint_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_endpoint* @sctp_endpoint_init(%struct.sctp_endpoint* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_endpoint*, align 8
  %5 = alloca %struct.sctp_endpoint*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_hmac_algo_param*, align 8
  %9 = alloca %struct.sctp_chunks_param*, align 8
  %10 = alloca %struct.sctp_shared_key*, align 8
  %11 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sctp_hmac_algo_param* null, %struct.sctp_hmac_algo_param** %8, align 8
  store %struct.sctp_chunks_param* null, %struct.sctp_chunks_param** %9, align 8
  %12 = load i32, i32* @SCTP_SIGNATURE_SIZE, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @kzalloc(i32 %12, i32 %13)
  %15 = bitcast i8* %14 to %struct.sctp_hmac_algo_param*
  %16 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %17 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %16, i32 0, i32 0
  store %struct.sctp_hmac_algo_param* %15, %struct.sctp_hmac_algo_param** %17, align 8
  %18 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %18, i32 0, i32 0
  %20 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %19, align 8
  %21 = icmp ne %struct.sctp_hmac_algo_param* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.sctp_endpoint* null, %struct.sctp_endpoint** %4, align 8
  br label %201

23:                                               ; preds = %3
  %24 = load i64, i64* @sctp_auth_enable, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %90

26:                                               ; preds = %23
  %27 = load i32, i32* @SCTP_AUTH_NUM_HMACS, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = add i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @kzalloc(i32 %31, i32 %32)
  %34 = bitcast i8* %33 to %struct.sctp_hmac_algo_param*
  store %struct.sctp_hmac_algo_param* %34, %struct.sctp_hmac_algo_param** %8, align 8
  %35 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %8, align 8
  %36 = icmp ne %struct.sctp_hmac_algo_param* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %191

38:                                               ; preds = %26
  %39 = load i32, i32* @SCTP_NUM_CHUNK_TYPES, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = call i8* @kzalloc(i32 %42, i32 %43)
  %45 = bitcast i8* %44 to %struct.sctp_chunks_param*
  store %struct.sctp_chunks_param* %45, %struct.sctp_chunks_param** %9, align 8
  %46 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %9, align 8
  %47 = icmp ne %struct.sctp_chunks_param* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %191

49:                                               ; preds = %38
  %50 = load i32, i32* @SCTP_PARAM_HMAC_ALGO, align 4
  %51 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %8, align 8
  %52 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = call i8* @htons(i32 6)
  %55 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %8, align 8
  %56 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @SCTP_AUTH_HMAC_ID_SHA1, align 4
  %59 = call i8* @htons(i32 %58)
  %60 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %8, align 8
  %61 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  store i8* %59, i8** %63, align 8
  %64 = load i32, i32* @SCTP_PARAM_CHUNKS, align 4
  %65 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %9, align 8
  %66 = getelementptr inbounds %struct.sctp_chunks_param, %struct.sctp_chunks_param* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = call i8* @htons(i32 4)
  %69 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %9, align 8
  %70 = getelementptr inbounds %struct.sctp_chunks_param, %struct.sctp_chunks_param* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load i64, i64* @sctp_addip_enable, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %49
  %75 = load i32, i32* @SCTP_CID_ASCONF, align 4
  %76 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %9, align 8
  %77 = getelementptr inbounds %struct.sctp_chunks_param, %struct.sctp_chunks_param* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* @SCTP_CID_ASCONF_ACK, align 4
  %81 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %9, align 8
  %82 = getelementptr inbounds %struct.sctp_chunks_param, %struct.sctp_chunks_param* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %80, i32* %84, align 4
  %85 = call i8* @htons(i32 6)
  %86 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %9, align 8
  %87 = getelementptr inbounds %struct.sctp_chunks_param, %struct.sctp_chunks_param* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  br label %89

89:                                               ; preds = %74, %49
  br label %90

90:                                               ; preds = %89, %23
  %91 = load i32, i32* @SCTP_EP_TYPE_SOCKET, align 4
  %92 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %93 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %92, i32 0, i32 11
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 6
  store i32 %91, i32* %94, align 4
  %95 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %96 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %95, i32 0, i32 11
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  %98 = call i32 @atomic_set(i32* %97, i32 1)
  %99 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %100 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %99, i32 0, i32 11
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %103 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %106 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %105, i32 0, i32 11
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = call i32 @sctp_inq_init(i32* %107)
  %109 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %110 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %109, i32 0, i32 11
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i32, i32* @sctp_endpoint_bh_rcv, align 4
  %113 = call i32 @sctp_inq_set_th_handler(i32* %111, i32 %112)
  %114 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %115 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = call i32 @sctp_bind_addr_init(i32* %116, i32 0)
  %118 = load %struct.sock*, %struct.sock** %6, align 8
  %119 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %120 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store %struct.sock* %118, %struct.sock** %121, align 8
  %122 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %123 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %122, i32 0, i32 11
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load %struct.sock*, %struct.sock** %124, align 8
  %126 = call i32 @sock_hold(%struct.sock* %125)
  %127 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %128 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %127, i32 0, i32 10
  %129 = call i32 @INIT_LIST_HEAD(i32* %128)
  %130 = load i32, i32* @sctp_sndbuf_policy, align 4
  %131 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %132 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @sctp_data_ready, align 4
  %134 = load %struct.sock*, %struct.sock** %6, align 8
  %135 = getelementptr inbounds %struct.sock, %struct.sock* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @sctp_write_space, align 4
  %137 = load %struct.sock*, %struct.sock** %6, align 8
  %138 = getelementptr inbounds %struct.sock, %struct.sock* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.sock*, %struct.sock** %6, align 8
  %140 = load i32, i32* @SOCK_USE_WRITE_QUEUE, align 4
  %141 = call i32 @sock_set_flag(%struct.sock* %139, i32 %140)
  %142 = load i32, i32* @sctp_rcvbuf_policy, align 4
  %143 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %144 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %143, i32 0, i32 8
  store i32 %142, i32* %144, align 8
  %145 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %146 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %145, i32 0, i32 7
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* @SCTP_SECRET_SIZE, align 4
  %150 = call i32 @get_random_bytes(i32* %148, i32 %149)
  %151 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %152 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %151, i32 0, i32 5
  store i64 0, i64* %152, align 8
  %153 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %154 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %153, i32 0, i32 6
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* @jiffies, align 4
  %156 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %157 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %159 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %158, i32 0, i32 1
  %160 = call i32 @INIT_LIST_HEAD(i32* %159)
  %161 = load i32, i32* @GFP_KERNEL, align 4
  %162 = call %struct.sctp_shared_key* @sctp_auth_shkey_create(i32 0, i32 %161)
  store %struct.sctp_shared_key* %162, %struct.sctp_shared_key** %10, align 8
  %163 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %10, align 8
  %164 = icmp ne %struct.sctp_shared_key* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %90
  br label %191

166:                                              ; preds = %90
  %167 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %10, align 8
  %168 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %167, i32 0, i32 0
  %169 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %170 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %169, i32 0, i32 1
  %171 = call i32 @list_add(i32* %168, i32* %170)
  %172 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @sctp_auth_init_hmacs(%struct.sctp_endpoint* %172, i32 %173)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %166
  br label %187

178:                                              ; preds = %166
  %179 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %8, align 8
  %180 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %181 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %180, i32 0, i32 3
  store %struct.sctp_hmac_algo_param* %179, %struct.sctp_hmac_algo_param** %181, align 8
  %182 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %9, align 8
  %183 = bitcast %struct.sctp_chunks_param* %182 to %struct.sctp_hmac_algo_param*
  %184 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %185 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %184, i32 0, i32 2
  store %struct.sctp_hmac_algo_param* %183, %struct.sctp_hmac_algo_param** %185, align 8
  %186 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  store %struct.sctp_endpoint* %186, %struct.sctp_endpoint** %4, align 8
  br label %201

187:                                              ; preds = %177
  %188 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %189 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %188, i32 0, i32 1
  %190 = call i32 @sctp_auth_destroy_keys(i32* %189)
  br label %191

191:                                              ; preds = %187, %165, %48, %37
  %192 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %8, align 8
  %193 = call i32 @kfree(%struct.sctp_hmac_algo_param* %192)
  %194 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %9, align 8
  %195 = bitcast %struct.sctp_chunks_param* %194 to %struct.sctp_hmac_algo_param*
  %196 = call i32 @kfree(%struct.sctp_hmac_algo_param* %195)
  %197 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %198 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %197, i32 0, i32 0
  %199 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %198, align 8
  %200 = call i32 @kfree(%struct.sctp_hmac_algo_param* %199)
  store %struct.sctp_endpoint* null, %struct.sctp_endpoint** %4, align 8
  br label %201

201:                                              ; preds = %191, %178, %22
  %202 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  ret %struct.sctp_endpoint* %202
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sctp_inq_init(i32*) #1

declare dso_local i32 @sctp_inq_set_th_handler(i32*, i32) #1

declare dso_local i32 @sctp_bind_addr_init(i32*, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local %struct.sctp_shared_key* @sctp_auth_shkey_create(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @sctp_auth_init_hmacs(%struct.sctp_endpoint*, i32) #1

declare dso_local i32 @sctp_auth_destroy_keys(i32*) #1

declare dso_local i32 @kfree(%struct.sctp_hmac_algo_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
