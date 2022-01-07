; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_wrap_req_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_wrap_req_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }
%struct.gss_cl_ctx = type { i32 }
%struct.rpc_rqst = type { i64, i32, %struct.page**, %struct.xdr_buf }
%struct.page = type { i32 }
%struct.xdr_buf = type { i32, i64, i64, %struct.kvec*, %struct.kvec*, i64, %struct.page** }
%struct.kvec = type { i8*, i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_cred*, %struct.gss_cl_ctx*, i32 (%struct.rpc_rqst*, i8*, i8*)*, %struct.rpc_rqst*, i8*, i8*)* @gss_wrap_req_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_wrap_req_priv(%struct.rpc_cred* %0, %struct.gss_cl_ctx* %1, i32 (%struct.rpc_rqst*, i8*, i8*)* %2, %struct.rpc_rqst* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_cred*, align 8
  %9 = alloca %struct.gss_cl_ctx*, align 8
  %10 = alloca i32 (%struct.rpc_rqst*, i8*, i8*)*, align 8
  %11 = alloca %struct.rpc_rqst*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.xdr_buf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.page**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.kvec*, align 8
  %23 = alloca i8*, align 8
  store %struct.rpc_cred* %0, %struct.rpc_cred** %8, align 8
  store %struct.gss_cl_ctx* %1, %struct.gss_cl_ctx** %9, align 8
  store i32 (%struct.rpc_rqst*, i8*, i8*)* %2, i32 (%struct.rpc_rqst*, i8*, i8*)** %10, align 8
  store %struct.rpc_rqst* %3, %struct.rpc_rqst** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %24 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %25 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %24, i32 0, i32 3
  store %struct.xdr_buf* %25, %struct.xdr_buf** %14, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %12, align 8
  store i8* %26, i8** %18, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %31 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %30, i32 0, i32 3
  %32 = load %struct.kvec*, %struct.kvec** %31, align 8
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %32, i64 0
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = ptrtoint i32* %29 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  store i64 %40, i64* %15, align 8
  %41 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %42 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @htonl(i64 %43)
  %45 = ptrtoint i8* %44 to i8
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %12, align 8
  store i8 %45, i8* %46, align 1
  %48 = load i32 (%struct.rpc_rqst*, i8*, i8*)*, i32 (%struct.rpc_rqst*, i8*, i8*)** %10, align 8
  %49 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 %48(%struct.rpc_rqst* %49, i8* %50, i8* %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %6
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %7, align 4
  br label %226

57:                                               ; preds = %6
  %58 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %59 = call i32 @alloc_enc_pages(%struct.rpc_rqst* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %7, align 4
  br label %226

64:                                               ; preds = %57
  %65 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %66 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %20, align 4
  %70 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %71 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %70, i32 0, i32 6
  %72 = load %struct.page**, %struct.page*** %71, align 8
  %73 = load i32, i32* %20, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.page*, %struct.page** %72, i64 %74
  store %struct.page** %75, %struct.page*** %19, align 8
  %76 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %77 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %76, i32 0, i32 2
  %78 = load %struct.page**, %struct.page*** %77, align 8
  %79 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %80 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %79, i32 0, i32 6
  store %struct.page** %78, %struct.page*** %80, align 8
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %85 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %89 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %64
  %93 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %94 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %93, i32 0, i32 4
  %95 = load %struct.kvec*, %struct.kvec** %94, align 8
  %96 = getelementptr inbounds %struct.kvec, %struct.kvec* %95, i64 0
  %97 = getelementptr inbounds %struct.kvec, %struct.kvec* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %92, %64
  %101 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %102 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %101, i32 0, i32 2
  %103 = load %struct.page**, %struct.page*** %102, align 8
  %104 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %105 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.page*, %struct.page** %103, i64 %108
  %110 = load %struct.page*, %struct.page** %109, align 8
  %111 = call i8* @page_address(%struct.page* %110)
  store i8* %111, i8** %23, align 8
  %112 = load i8*, i8** %23, align 8
  %113 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %114 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %113, i32 0, i32 4
  %115 = load %struct.kvec*, %struct.kvec** %114, align 8
  %116 = getelementptr inbounds %struct.kvec, %struct.kvec* %115, i64 0
  %117 = getelementptr inbounds %struct.kvec, %struct.kvec* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %120 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %119, i32 0, i32 4
  %121 = load %struct.kvec*, %struct.kvec** %120, align 8
  %122 = getelementptr inbounds %struct.kvec, %struct.kvec* %121, i64 0
  %123 = getelementptr inbounds %struct.kvec, %struct.kvec* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @memcpy(i8* %112, i8* %118, i32 %124)
  %126 = load i8*, i8** %23, align 8
  %127 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %128 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %127, i32 0, i32 4
  %129 = load %struct.kvec*, %struct.kvec** %128, align 8
  %130 = getelementptr inbounds %struct.kvec, %struct.kvec* %129, i64 0
  %131 = getelementptr inbounds %struct.kvec, %struct.kvec* %130, i32 0, i32 0
  store i8* %126, i8** %131, align 8
  br label %132

132:                                              ; preds = %100, %92
  %133 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %9, align 8
  %134 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %15, align 8
  %137 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %138 = load %struct.page**, %struct.page*** %19, align 8
  %139 = call i64 @gss_wrap(i32 %135, i64 %136, %struct.xdr_buf* %137, %struct.page** %138)
  store i64 %139, i64* %16, align 8
  %140 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %141 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %144 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %142, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @BUG_ON(i32 %147)
  %149 = load i32, i32* @EIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %17, align 4
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %132
  %155 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %156 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %157 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %156, i32 0, i32 0
  %158 = call i32 @clear_bit(i32 %155, i32* %157)
  br label %165

159:                                              ; preds = %132
  %160 = load i64, i64* %16, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32, i32* %17, align 4
  store i32 %163, i32* %7, align 4
  br label %226

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %164, %154
  %166 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %167 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %15, align 8
  %170 = sub nsw i64 %168, %169
  %171 = call i8* @htonl(i64 %170)
  %172 = ptrtoint i8* %171 to i8
  %173 = load i8*, i8** %18, align 8
  store i8 %172, i8* %173, align 1
  %174 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %175 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %165
  %179 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %180 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %179, i32 0, i32 4
  %181 = load %struct.kvec*, %struct.kvec** %180, align 8
  %182 = getelementptr inbounds %struct.kvec, %struct.kvec* %181, i64 0
  %183 = getelementptr inbounds %struct.kvec, %struct.kvec* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %178, %165
  %187 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %188 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %187, i32 0, i32 4
  %189 = load %struct.kvec*, %struct.kvec** %188, align 8
  store %struct.kvec* %189, %struct.kvec** %22, align 8
  br label %194

190:                                              ; preds = %178
  %191 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %192 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %191, i32 0, i32 3
  %193 = load %struct.kvec*, %struct.kvec** %192, align 8
  store %struct.kvec* %193, %struct.kvec** %22, align 8
  br label %194

194:                                              ; preds = %190, %186
  %195 = load %struct.kvec*, %struct.kvec** %22, align 8
  %196 = getelementptr inbounds %struct.kvec, %struct.kvec* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.kvec*, %struct.kvec** %22, align 8
  %199 = getelementptr inbounds %struct.kvec, %struct.kvec* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %197, i64 %201
  store i8* %202, i8** %12, align 8
  %203 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %204 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %15, align 8
  %207 = sub nsw i64 %205, %206
  %208 = sub nsw i64 %207, 1
  %209 = and i64 %208, 3
  %210 = sub nsw i64 3, %209
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %21, align 4
  %212 = load i8*, i8** %12, align 8
  %213 = load i32, i32* %21, align 4
  %214 = call i32 @memset(i8* %212, i32 0, i32 %213)
  %215 = load i32, i32* %21, align 4
  %216 = load %struct.kvec*, %struct.kvec** %22, align 8
  %217 = getelementptr inbounds %struct.kvec, %struct.kvec* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, %215
  store i32 %219, i32* %217, align 8
  %220 = load i32, i32* %21, align 4
  %221 = sext i32 %220 to i64
  %222 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %223 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, %221
  store i64 %225, i64* %223, align 8
  store i32 0, i32* %7, align 4
  br label %226

226:                                              ; preds = %194, %162, %62, %55
  %227 = load i32, i32* %7, align 4
  ret i32 %227
}

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @alloc_enc_pages(%struct.rpc_rqst*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @gss_wrap(i32, i64, %struct.xdr_buf*, %struct.page**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
