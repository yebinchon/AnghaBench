; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_wrap_resp_integ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_wrap_resp_integ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.xdr_buf, i64 }
%struct.xdr_buf = type { i32, %struct.kvec*, %struct.TYPE_3__* }
%struct.kvec = type { i32, i32* }
%struct.TYPE_3__ = type { i64, i32* }
%struct.gss_svc_data = type { %struct.TYPE_4__*, %struct.rpc_gss_wire_cred }
%struct.TYPE_4__ = type { i32 }
%struct.rpc_gss_wire_cred = type { i32 }
%struct.xdr_netobj = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@RPC_MAX_AUTH_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @svcauth_gss_wrap_resp_integ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_wrap_resp_integ(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.gss_svc_data*, align 8
  %4 = alloca %struct.rpc_gss_wire_cred*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca %struct.xdr_buf, align 8
  %7 = alloca %struct.xdr_netobj, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.gss_svc_data*
  store %struct.gss_svc_data* %16, %struct.gss_svc_data** %3, align 8
  %17 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %18 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %17, i32 0, i32 1
  store %struct.rpc_gss_wire_cred* %18, %struct.rpc_gss_wire_cred** %4, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 0
  store %struct.xdr_buf* %20, %struct.xdr_buf** %5, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %24 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %25 = call i32* @svcauth_gss_prepare_to_wrap(%struct.xdr_buf* %23, %struct.gss_svc_data* %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %184

29:                                               ; preds = %1
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %33 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = ptrtoint i32* %31 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %44 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = srem i32 %48, 4
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i8* @htonl(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %56 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %4, align 8
  %57 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @htonl(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %63 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @xdr_buf_subsegment(%struct.xdr_buf* %63, %struct.xdr_buf* %6, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %29
  %69 = call i32 (...) @BUG()
  br label %70

70:                                               ; preds = %68, %29
  %71 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %72 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %71, i32 0, i32 1
  %73 = load %struct.kvec*, %struct.kvec** %72, align 8
  %74 = getelementptr inbounds %struct.kvec, %struct.kvec* %73, i64 0
  %75 = getelementptr inbounds %struct.kvec, %struct.kvec* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %118

78:                                               ; preds = %70
  %79 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %80 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RPC_MAX_AUTH_SIZE, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* @PAGE_SIZE, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %185

90:                                               ; preds = %78
  %91 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %92 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %98 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %96, i64 %102
  %104 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %105 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %104, i32 0, i32 1
  %106 = load %struct.kvec*, %struct.kvec** %105, align 8
  %107 = getelementptr inbounds %struct.kvec, %struct.kvec* %106, i64 0
  %108 = getelementptr inbounds %struct.kvec, %struct.kvec* %107, i32 0, i32 1
  store i32* %103, i32** %108, align 8
  %109 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %110 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %109, i32 0, i32 1
  %111 = load %struct.kvec*, %struct.kvec** %110, align 8
  %112 = getelementptr inbounds %struct.kvec, %struct.kvec* %111, i64 0
  %113 = getelementptr inbounds %struct.kvec, %struct.kvec* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %115 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %114, i32 0, i32 1
  %116 = load %struct.kvec*, %struct.kvec** %115, align 8
  %117 = getelementptr inbounds %struct.kvec, %struct.kvec* %116, i64 0
  store %struct.kvec* %117, %struct.kvec** %8, align 8
  br label %123

118:                                              ; preds = %70
  %119 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %120 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %119, i32 0, i32 1
  %121 = load %struct.kvec*, %struct.kvec** %120, align 8
  %122 = getelementptr inbounds %struct.kvec, %struct.kvec* %121, i64 0
  store %struct.kvec* %122, %struct.kvec** %8, align 8
  br label %123

123:                                              ; preds = %118, %90
  %124 = load %struct.kvec*, %struct.kvec** %8, align 8
  %125 = getelementptr inbounds %struct.kvec, %struct.kvec* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.kvec*, %struct.kvec** %8, align 8
  %128 = getelementptr inbounds %struct.kvec, %struct.kvec* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  %133 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 1
  store i32* %132, i32** %133, align 8
  %134 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %135 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @gss_get_mic(i32 %138, %struct.xdr_buf* %6, %struct.xdr_netobj* %7)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %123
  br label %185

142:                                              ; preds = %123
  %143 = load %struct.kvec*, %struct.kvec** %8, align 8
  %144 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @svc_putnl(%struct.kvec* %143, i32 %145)
  %147 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @round_up_to_quad(i32 %154)
  %156 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %155, %157
  %159 = call i32 @memset(i32* %152, i32 0, i32 %158)
  %160 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @XDR_QUADLEN(i32 %161)
  %163 = shl i32 %162, 2
  %164 = load %struct.kvec*, %struct.kvec** %8, align 8
  %165 = getelementptr inbounds %struct.kvec, %struct.kvec* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @XDR_QUADLEN(i32 %169)
  %171 = shl i32 %170, 2
  %172 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %173 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load %struct.kvec*, %struct.kvec** %8, align 8
  %177 = getelementptr inbounds %struct.kvec, %struct.kvec* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* @PAGE_SIZE, align 8
  %181 = icmp sgt i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @BUG_ON(i32 %182)
  br label %184

184:                                              ; preds = %142, %28
  store i32 0, i32* %12, align 4
  br label %185

185:                                              ; preds = %184, %141, %89
  %186 = load i32, i32* %12, align 4
  ret i32 %186
}

declare dso_local i32* @svcauth_gss_prepare_to_wrap(%struct.xdr_buf*, %struct.gss_svc_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @gss_get_mic(i32, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @round_up_to_quad(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
