; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.gss_svc_data*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.kvec* }
%struct.kvec = type { i32, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.gss_svc_data = type { %struct.rsc*, i32*, %struct.rpc_gss_wire_cred }
%struct.rsc = type { %struct.TYPE_12__, %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.rpc_gss_wire_cred = type { i32, i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { %struct.kvec* }

@.str = private unnamed_addr constant [45 x i8] c"RPC:       svcauth_gss: argv->iov_len = %zd\0A\00", align 1
@rpc_autherr_badcred = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RPC_GSS_VERSION = common dso_local global i64 0, align 8
@rpc_autherr_badverf = common dso_local global i32 0, align 4
@rpcsec_gsserr_credproblem = common dso_local global i32 0, align 4
@rpc_autherr_rejectedcred = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@rpcsec_gsserr_ctxproblem = common dso_local global i32 0, align 4
@SVC_GARBAGE = common dso_local global i32 0, align 4
@SVC_COMPLETE = common dso_local global i32 0, align 4
@rsc_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32*)* @svcauth_gss_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_accept(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gss_svc_data*, align 8
  %10 = alloca %struct.rpc_gss_wire_cred*, align 8
  %11 = alloca %struct.rsc*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %16 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.kvec*, %struct.kvec** %17, align 8
  %19 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i64 0
  store %struct.kvec* %19, %struct.kvec** %6, align 8
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %21 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.kvec*, %struct.kvec** %22, align 8
  %24 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i64 0
  store %struct.kvec* %24, %struct.kvec** %7, align 8
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %26 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %25, i32 0, i32 4
  %27 = load %struct.gss_svc_data*, %struct.gss_svc_data** %26, align 8
  store %struct.gss_svc_data* %27, %struct.gss_svc_data** %9, align 8
  store %struct.rsc* null, %struct.rsc** %11, align 8
  %28 = load %struct.kvec*, %struct.kvec** %7, align 8
  %29 = getelementptr inbounds %struct.kvec, %struct.kvec* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.kvec*, %struct.kvec** %7, align 8
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32* %35, i32** %13, align 8
  %36 = load %struct.kvec*, %struct.kvec** %6, align 8
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @rpc_autherr_badcred, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %43 = icmp ne %struct.gss_svc_data* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.gss_svc_data* @kmalloc(i32 48, i32 %45)
  store %struct.gss_svc_data* %46, %struct.gss_svc_data** %9, align 8
  br label %47

47:                                               ; preds = %44, %2
  %48 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %49 = icmp ne %struct.gss_svc_data* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %289

51:                                               ; preds = %47
  %52 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %54 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %53, i32 0, i32 4
  store %struct.gss_svc_data* %52, %struct.gss_svc_data** %54, align 8
  %55 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %56 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %58 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %57, i32 0, i32 0
  store %struct.rsc* null, %struct.rsc** %58, align 8
  %59 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %60 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %59, i32 0, i32 2
  store %struct.rpc_gss_wire_cred* %60, %struct.rpc_gss_wire_cred** %10, align 8
  %61 = load %struct.kvec*, %struct.kvec** %6, align 8
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 -7
  store i32* %65, i32** %12, align 8
  %66 = load %struct.kvec*, %struct.kvec** %6, align 8
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 20
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  br label %289

71:                                               ; preds = %51
  %72 = load %struct.kvec*, %struct.kvec** %6, align 8
  %73 = call i64 @svc_getnl(%struct.kvec* %72)
  store i64 %73, i64* %8, align 8
  %74 = load %struct.kvec*, %struct.kvec** %6, align 8
  %75 = call i64 @svc_getnl(%struct.kvec* %74)
  %76 = load i64, i64* @RPC_GSS_VERSION, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %289

79:                                               ; preds = %71
  %80 = load %struct.kvec*, %struct.kvec** %6, align 8
  %81 = call i64 @svc_getnl(%struct.kvec* %80)
  %82 = trunc i64 %81 to i32
  %83 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %84 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.kvec*, %struct.kvec** %6, align 8
  %86 = call i64 @svc_getnl(%struct.kvec* %85)
  %87 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %88 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.kvec*, %struct.kvec** %6, align 8
  %90 = call i64 @svc_getnl(%struct.kvec* %89)
  %91 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %92 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.kvec*, %struct.kvec** %6, align 8
  %94 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %95 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %94, i32 0, i32 3
  %96 = call i64 @svc_safe_getnetobj(%struct.kvec* %93, %struct.TYPE_17__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %79
  br label %289

99:                                               ; preds = %79
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %102 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @round_up_to_quad(i32 %104)
  %106 = add nsw i64 %105, 20
  %107 = icmp ne i64 %100, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %289

109:                                              ; preds = %99
  %110 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %111 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 136
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %116 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %289

120:                                              ; preds = %114, %109
  %121 = load i32, i32* @rpc_autherr_badverf, align 4
  %122 = load i32*, i32** %5, align 8
  store i32 %121, i32* %122, align 4
  %123 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %124 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %151 [
    i32 134, label %126
    i32 137, label %126
    i32 136, label %131
    i32 135, label %131
  ]

126:                                              ; preds = %120, %120
  %127 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %128 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @svcauth_gss_handle_init(%struct.svc_rqst* %127, %struct.rpc_gss_wire_cred* %128, i32* %129)
  store i32 %130, i32* %3, align 4
  br label %305

131:                                              ; preds = %120, %120
  %132 = load i32, i32* @rpcsec_gsserr_credproblem, align 4
  %133 = load i32*, i32** %5, align 8
  store i32 %132, i32* %133, align 4
  %134 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %135 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %134, i32 0, i32 3
  %136 = call %struct.rsc* @gss_svc_searchbyctx(%struct.TYPE_17__* %135)
  store %struct.rsc* %136, %struct.rsc** %11, align 8
  %137 = load %struct.rsc*, %struct.rsc** %11, align 8
  %138 = icmp ne %struct.rsc* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  br label %289

140:                                              ; preds = %131
  %141 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %142 = load %struct.rsc*, %struct.rsc** %11, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @gss_verify_header(%struct.svc_rqst* %141, %struct.rsc* %142, i32* %143, %struct.rpc_gss_wire_cred* %144, i32* %145)
  switch i32 %146, label %150 [
    i32 128, label %147
    i32 130, label %148
    i32 129, label %149
  ]

147:                                              ; preds = %140
  br label %150

148:                                              ; preds = %140
  br label %289

149:                                              ; preds = %140
  br label %295

150:                                              ; preds = %140, %147
  br label %154

151:                                              ; preds = %120
  %152 = load i32, i32* @rpc_autherr_rejectedcred, align 4
  %153 = load i32*, i32** %5, align 8
  store i32 %152, i32* %153, align 4
  br label %289

154:                                              ; preds = %150
  %155 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %156 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %286 [
    i32 135, label %158
    i32 136, label %190
  ]

158:                                              ; preds = %154
  %159 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %160 = load %struct.rsc*, %struct.rsc** %11, align 8
  %161 = getelementptr inbounds %struct.rsc, %struct.rsc* %160, i32 0, i32 1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %164 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @gss_write_verf(%struct.svc_rqst* %159, %struct.TYPE_16__* %162, i64 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %289

169:                                              ; preds = %158
  %170 = call i32 (...) @get_seconds()
  %171 = load %struct.rsc*, %struct.rsc** %11, align 8
  %172 = getelementptr inbounds %struct.rsc, %struct.rsc* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  %174 = load i32, i32* @CACHE_NEGATIVE, align 4
  %175 = load %struct.rsc*, %struct.rsc** %11, align 8
  %176 = getelementptr inbounds %struct.rsc, %struct.rsc* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = call i32 @set_bit(i32 %174, i32* %177)
  %179 = load %struct.kvec*, %struct.kvec** %7, align 8
  %180 = getelementptr inbounds %struct.kvec, %struct.kvec* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 4
  %183 = load i32, i32* @PAGE_SIZE, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %169
  br label %295

186:                                              ; preds = %169
  %187 = load %struct.kvec*, %struct.kvec** %7, align 8
  %188 = load i32, i32* @RPC_SUCCESS, align 4
  %189 = call i32 @svc_putnl(%struct.kvec* %187, i32 %188)
  br label %293

190:                                              ; preds = %154
  %191 = load i32, i32* @rpcsec_gsserr_ctxproblem, align 4
  %192 = load i32*, i32** %5, align 8
  store i32 %191, i32* %192, align 4
  %193 = load %struct.kvec*, %struct.kvec** %7, align 8
  %194 = getelementptr inbounds %struct.kvec, %struct.kvec* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.kvec*, %struct.kvec** %7, align 8
  %197 = getelementptr inbounds %struct.kvec, %struct.kvec* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %202 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %201, i32 0, i32 1
  store i32* %200, i32** %202, align 8
  %203 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %204 = load %struct.rsc*, %struct.rsc** %11, align 8
  %205 = getelementptr inbounds %struct.rsc, %struct.rsc* %204, i32 0, i32 1
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %208 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @gss_write_verf(%struct.svc_rqst* %203, %struct.TYPE_16__* %206, i64 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %190
  br label %289

213:                                              ; preds = %190
  %214 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %215 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %214, i32 0, i32 3
  %216 = load %struct.rsc*, %struct.rsc** %11, align 8
  %217 = getelementptr inbounds %struct.rsc, %struct.rsc* %216, i32 0, i32 2
  %218 = bitcast %struct.TYPE_14__* %215 to i8*
  %219 = bitcast %struct.TYPE_14__* %217 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %218, i8* align 8 %219, i64 4, i1 false)
  %220 = load %struct.rsc*, %struct.rsc** %11, align 8
  %221 = getelementptr inbounds %struct.rsc, %struct.rsc* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @get_group_info(i32 %223)
  %225 = load i32, i32* @rpc_autherr_badcred, align 4
  %226 = load i32*, i32** %5, align 8
  store i32 %225, i32* %226, align 4
  %227 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %228 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  switch i64 %229, label %267 [
    i64 132, label %230
    i64 133, label %231
    i64 131, label %249
  ]

230:                                              ; preds = %213
  br label %268

231:                                              ; preds = %213
  %232 = load %struct.kvec*, %struct.kvec** %7, align 8
  %233 = call i32 @svc_putnl(%struct.kvec* %232, i32 0)
  %234 = load %struct.kvec*, %struct.kvec** %7, align 8
  %235 = call i32 @svc_putnl(%struct.kvec* %234, i32 0)
  %236 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %237 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %238 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %237, i32 0, i32 2
  %239 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %240 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.rsc*, %struct.rsc** %11, align 8
  %243 = getelementptr inbounds %struct.rsc, %struct.rsc* %242, i32 0, i32 1
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %243, align 8
  %245 = call i32 @unwrap_integ_data(%struct.svc_rqst* %236, %struct.TYPE_15__* %238, i64 %241, %struct.TYPE_16__* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %231
  br label %287

248:                                              ; preds = %231
  br label %268

249:                                              ; preds = %213
  %250 = load %struct.kvec*, %struct.kvec** %7, align 8
  %251 = call i32 @svc_putnl(%struct.kvec* %250, i32 0)
  %252 = load %struct.kvec*, %struct.kvec** %7, align 8
  %253 = call i32 @svc_putnl(%struct.kvec* %252, i32 0)
  %254 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %255 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %256 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %255, i32 0, i32 2
  %257 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %258 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.rsc*, %struct.rsc** %11, align 8
  %261 = getelementptr inbounds %struct.rsc, %struct.rsc* %260, i32 0, i32 1
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %261, align 8
  %263 = call i32 @unwrap_priv_data(%struct.svc_rqst* %254, %struct.TYPE_15__* %256, i64 %259, %struct.TYPE_16__* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %249
  br label %287

266:                                              ; preds = %249
  br label %268

267:                                              ; preds = %213
  br label %289

268:                                              ; preds = %266, %248, %230
  %269 = load %struct.rsc*, %struct.rsc** %11, align 8
  %270 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %271 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %270, i32 0, i32 0
  store %struct.rsc* %269, %struct.rsc** %271, align 8
  %272 = load %struct.rsc*, %struct.rsc** %11, align 8
  %273 = getelementptr inbounds %struct.rsc, %struct.rsc* %272, i32 0, i32 0
  %274 = call i32 @cache_get(%struct.TYPE_12__* %273)
  %275 = load %struct.rsc*, %struct.rsc** %11, align 8
  %276 = getelementptr inbounds %struct.rsc, %struct.rsc* %275, i32 0, i32 1
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %281 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @gss_svc_to_pseudoflavor(i32 %279, i64 %282)
  %284 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %285 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 8
  store i32 128, i32* %14, align 4
  br label %296

286:                                              ; preds = %154
  br label %287

287:                                              ; preds = %286, %265, %247
  %288 = load i32, i32* @SVC_GARBAGE, align 4
  store i32 %288, i32* %14, align 4
  br label %296

289:                                              ; preds = %267, %212, %168, %151, %148, %139, %119, %108, %98, %78, %70, %50
  %290 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %291 = load i32*, i32** %13, align 8
  %292 = call i32 @xdr_ressize_check(%struct.svc_rqst* %290, i32* %291)
  store i32 130, i32* %14, align 4
  br label %296

293:                                              ; preds = %186
  %294 = load i32, i32* @SVC_COMPLETE, align 4
  store i32 %294, i32* %14, align 4
  br label %296

295:                                              ; preds = %185, %149
  store i32 129, i32* %14, align 4
  br label %296

296:                                              ; preds = %295, %293, %289, %287, %268
  %297 = load %struct.rsc*, %struct.rsc** %11, align 8
  %298 = icmp ne %struct.rsc* %297, null
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load %struct.rsc*, %struct.rsc** %11, align 8
  %301 = getelementptr inbounds %struct.rsc, %struct.rsc* %300, i32 0, i32 0
  %302 = call i32 @cache_put(%struct.TYPE_12__* %301, i32* @rsc_cache)
  br label %303

303:                                              ; preds = %299, %296
  %304 = load i32, i32* %14, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %303, %126
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.gss_svc_data* @kmalloc(i32, i32) #1

declare dso_local i64 @svc_getnl(%struct.kvec*) #1

declare dso_local i64 @svc_safe_getnetobj(%struct.kvec*, %struct.TYPE_17__*) #1

declare dso_local i64 @round_up_to_quad(i32) #1

declare dso_local i32 @svcauth_gss_handle_init(%struct.svc_rqst*, %struct.rpc_gss_wire_cred*, i32*) #1

declare dso_local %struct.rsc* @gss_svc_searchbyctx(%struct.TYPE_17__*) #1

declare dso_local i32 @gss_verify_header(%struct.svc_rqst*, %struct.rsc*, i32*, %struct.rpc_gss_wire_cred*, i32*) #1

declare dso_local i32 @gss_write_verf(%struct.svc_rqst*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_group_info(i32) #1

declare dso_local i32 @unwrap_integ_data(%struct.svc_rqst*, %struct.TYPE_15__*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @unwrap_priv_data(%struct.svc_rqst*, %struct.TYPE_15__*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @cache_get(%struct.TYPE_12__*) #1

declare dso_local i32 @gss_svc_to_pseudoflavor(i32, i64) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

declare dso_local i32 @cache_put(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
