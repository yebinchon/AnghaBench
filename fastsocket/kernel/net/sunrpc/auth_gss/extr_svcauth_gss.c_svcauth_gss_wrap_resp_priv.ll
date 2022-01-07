; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_wrap_resp_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_wrap_resp_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.xdr_buf, i64 }
%struct.xdr_buf = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.page** }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.page = type { i32 }
%struct.gss_svc_data = type { %struct.TYPE_5__*, %struct.rpc_gss_wire_cred }
%struct.TYPE_5__ = type { i32 }
%struct.rpc_gss_wire_cred = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@RPC_MAX_AUTH_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @svcauth_gss_wrap_resp_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_wrap_resp_priv(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.gss_svc_data*, align 8
  %5 = alloca %struct.rpc_gss_wire_cred*, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %13 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.gss_svc_data*
  store %struct.gss_svc_data* %15, %struct.gss_svc_data** %4, align 8
  %16 = load %struct.gss_svc_data*, %struct.gss_svc_data** %4, align 8
  %17 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %16, i32 0, i32 1
  store %struct.rpc_gss_wire_cred* %17, %struct.rpc_gss_wire_cred** %5, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 0
  store %struct.xdr_buf* %19, %struct.xdr_buf** %6, align 8
  store %struct.page** null, %struct.page*** %7, align 8
  %20 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %21 = load %struct.gss_svc_data*, %struct.gss_svc_data** %4, align 8
  %22 = call i8** @svcauth_gss_prepare_to_wrap(%struct.xdr_buf* %20, %struct.gss_svc_data* %21)
  store i8** %22, i8*** %8, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %257

26:                                               ; preds = %1
  %27 = load i8**, i8*** %8, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %8, align 8
  store i8** %27, i8*** %9, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = bitcast i8** %29 to i32*
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %32 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = ptrtoint i32* %30 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %5, align 8
  %43 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @htonl(i32 %44)
  %46 = load i8**, i8*** %8, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %8, align 8
  store i8* %45, i8** %46, align 8
  %48 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %49 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %48, i32 0, i32 3
  %50 = load %struct.page**, %struct.page*** %49, align 8
  store %struct.page** %50, %struct.page*** %7, align 8
  %51 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %52 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %145

58:                                               ; preds = %26
  %59 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %60 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %66 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = icmp uge i32* %64, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %78 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %84 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ult i32* %82, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @BUG_ON(i32 %90)
  %92 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %93 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %99 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %97, %103
  %105 = load i32, i32* @RPC_MAX_AUTH_SIZE, align 4
  %106 = mul nsw i32 2, %105
  %107 = add nsw i32 %104, %106
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %58
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %257

113:                                              ; preds = %58
  %114 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %115 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @RPC_MAX_AUTH_SIZE, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %124 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %130 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @memmove(i32* %122, i32* %128, i32 %134)
  %136 = load i32, i32* @RPC_MAX_AUTH_SIZE, align 4
  %137 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %138 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = sext i32 %136 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %141, align 8
  br label %145

145:                                              ; preds = %113, %26
  %146 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %147 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %196

153:                                              ; preds = %145
  %154 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %155 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @RPC_MAX_AUTH_SIZE, align 4
  %161 = mul nsw i32 2, %160
  %162 = add nsw i32 %159, %161
  %163 = load i32, i32* @PAGE_SIZE, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %257

168:                                              ; preds = %153
  %169 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %170 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %169, i32 0, i32 2
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %176 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %175, i32 0, i32 2
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %174, i64 %181
  %183 = load i32, i32* @RPC_MAX_AUTH_SIZE, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %187 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i32* %185, i32** %190, align 8
  %191 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %192 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %191, i32 0, i32 1
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32 0, i32* %195, align 8
  br label %196

196:                                              ; preds = %168, %145
  %197 = load %struct.gss_svc_data*, %struct.gss_svc_data** %4, align 8
  %198 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %204 = load %struct.page**, %struct.page*** %7, align 8
  %205 = call i64 @gss_wrap(i32 %201, i32 %202, %struct.xdr_buf* %203, %struct.page** %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %196
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %2, align 4
  br label %257

210:                                              ; preds = %196
  %211 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %212 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sub nsw i32 %213, %214
  %216 = call i8* @htonl(i32 %215)
  %217 = load i8**, i8*** %9, align 8
  store i8* %216, i8** %217, align 8
  %218 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %219 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sub nsw i32 %220, %221
  %223 = sub nsw i32 %222, 1
  %224 = and i32 %223, 3
  %225 = sub nsw i32 3, %224
  store i32 %225, i32* %11, align 4
  %226 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %227 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %226, i32 0, i32 1
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %233 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %232, i32 0, i32 1
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %231, i64 %238
  %240 = bitcast i32* %239 to i8**
  store i8** %240, i8*** %8, align 8
  %241 = load i8**, i8*** %8, align 8
  %242 = load i32, i32* %11, align 4
  %243 = call i32 @memset(i8** %241, i32 0, i32 %242)
  %244 = load i32, i32* %11, align 4
  %245 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %246 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %245, i32 0, i32 1
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, %244
  store i32 %251, i32* %249, align 8
  %252 = load i32, i32* %11, align 4
  %253 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %254 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = add nsw i32 %255, %252
  store i32 %256, i32* %254, align 8
  store i32 0, i32* %2, align 4
  br label %257

257:                                              ; preds = %210, %207, %165, %110, %25
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i8** @svcauth_gss_prepare_to_wrap(%struct.xdr_buf*, %struct.gss_svc_data*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i64 @gss_wrap(i32, i32, %struct.xdr_buf*, %struct.page**) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
