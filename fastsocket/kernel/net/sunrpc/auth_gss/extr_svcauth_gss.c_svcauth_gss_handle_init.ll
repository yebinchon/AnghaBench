; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_handle_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_handle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.kvec* }
%struct.kvec = type { i32 }
%struct.TYPE_4__ = type { %struct.kvec* }
%struct.rpc_gss_wire_cred = type { i64, %struct.xdr_netobj }
%struct.xdr_netobj = type { i64 }
%struct.rsi = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@rpc_autherr_badverf = common dso_local global i32 0, align 4
@SVC_DENIED = common dso_local global i32 0, align 4
@RPC_AUTH_NULL = common dso_local global i64 0, align 8
@rpc_autherr_badcred = common dso_local global i32 0, align 4
@RPC_GSS_PROC_INIT = common dso_local global i64 0, align 8
@SVC_CLOSE = common dso_local global i32 0, align 4
@rsi_cache = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@GSS_SEQ_WIN = common dso_local global i32 0, align 4
@SVC_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.rpc_gss_wire_cred*, i32*)* @svcauth_gss_handle_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_handle_init(%struct.svc_rqst* %0, %struct.rpc_gss_wire_cred* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.rpc_gss_wire_cred*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca %struct.xdr_netobj, align 8
  %11 = alloca %struct.rsi*, align 8
  %12 = alloca %struct.rsi, align 4
  %13 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.rpc_gss_wire_cred* %1, %struct.rpc_gss_wire_cred** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %15 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.kvec*, %struct.kvec** %16, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i64 0
  store %struct.kvec* %18, %struct.kvec** %8, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.kvec*, %struct.kvec** %21, align 8
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %22, i64 0
  store %struct.kvec* %23, %struct.kvec** %9, align 8
  %24 = load i32, i32* @rpc_autherr_badverf, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.kvec*, %struct.kvec** %8, align 8
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @SVC_DENIED, align 4
  store i32 %31, i32* %4, align 4
  br label %170

32:                                               ; preds = %3
  %33 = load %struct.kvec*, %struct.kvec** %8, align 8
  %34 = call i64 @svc_getnl(%struct.kvec* %33)
  %35 = load i64, i64* @RPC_AUTH_NULL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @SVC_DENIED, align 4
  store i32 %38, i32* %4, align 4
  br label %170

39:                                               ; preds = %32
  %40 = load %struct.kvec*, %struct.kvec** %8, align 8
  %41 = call i64 @svc_getnl(%struct.kvec* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @SVC_DENIED, align 4
  store i32 %44, i32* %4, align 4
  br label %170

45:                                               ; preds = %39
  %46 = load i32, i32* @rpc_autherr_badcred, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %6, align 8
  %49 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RPC_GSS_PROC_INIT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %6, align 8
  %55 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @SVC_DENIED, align 4
  store i32 %60, i32* %4, align 4
  br label %170

61:                                               ; preds = %53, %45
  %62 = call i32 @memset(%struct.rsi* %12, i32 0, i32 28)
  %63 = getelementptr inbounds %struct.rsi, %struct.rsi* %12, i32 0, i32 5
  %64 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %6, align 8
  %65 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %64, i32 0, i32 1
  %66 = call i64 @dup_netobj(%struct.TYPE_6__* %63, %struct.xdr_netobj* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %69, i32* %4, align 4
  br label %170

70:                                               ; preds = %61
  %71 = load i32, i32* @rpc_autherr_badverf, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.kvec*, %struct.kvec** %8, align 8
  %74 = call i64 @svc_safe_getnetobj(%struct.kvec* %73, %struct.xdr_netobj* %10)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.rsi, %struct.rsi* %12, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @kfree(i32 %79)
  %81 = load i32, i32* @SVC_DENIED, align 4
  store i32 %81, i32* %4, align 4
  br label %170

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.rsi, %struct.rsi* %12, i32 0, i32 6
  %84 = call i64 @dup_netobj(%struct.TYPE_6__* %83, %struct.xdr_netobj* %10)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.rsi, %struct.rsi* %12, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @kfree(i32 %89)
  %91 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %91, i32* %4, align 4
  br label %170

92:                                               ; preds = %82
  %93 = call %struct.rsi* @rsi_lookup(%struct.rsi* %12)
  store %struct.rsi* %93, %struct.rsi** %11, align 8
  %94 = call i32 @rsi_free(%struct.rsi* %12)
  %95 = load %struct.rsi*, %struct.rsi** %11, align 8
  %96 = icmp ne %struct.rsi* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %98, i32* %4, align 4
  br label %170

99:                                               ; preds = %92
  %100 = load %struct.rsi*, %struct.rsi** %11, align 8
  %101 = getelementptr inbounds %struct.rsi, %struct.rsi* %100, i32 0, i32 0
  %102 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %103 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %102, i32 0, i32 0
  %104 = call i64 @cache_check(i32* @rsi_cache, i32* %101, i32* %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %107, i32* %4, align 4
  br label %170

108:                                              ; preds = %99
  %109 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %109, i32* %13, align 4
  %110 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %111 = load %struct.rsi*, %struct.rsi** %11, align 8
  %112 = call i64 @gss_write_init_verf(%struct.svc_rqst* %110, %struct.rsi* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %165

115:                                              ; preds = %108
  %116 = load %struct.kvec*, %struct.kvec** %9, align 8
  %117 = getelementptr inbounds %struct.kvec, %struct.kvec* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @PAGE_SIZE, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %165

124:                                              ; preds = %115
  %125 = load %struct.kvec*, %struct.kvec** %9, align 8
  %126 = load i32, i32* @RPC_SUCCESS, align 4
  %127 = call i32 @svc_putnl(%struct.kvec* %125, i32 %126)
  %128 = load %struct.kvec*, %struct.kvec** %9, align 8
  %129 = load %struct.rsi*, %struct.rsi** %11, align 8
  %130 = getelementptr inbounds %struct.rsi, %struct.rsi* %129, i32 0, i32 4
  %131 = call i64 @svc_safe_putnetobj(%struct.kvec* %128, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %165

134:                                              ; preds = %124
  %135 = load %struct.kvec*, %struct.kvec** %9, align 8
  %136 = getelementptr inbounds %struct.kvec, %struct.kvec* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 12
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @PAGE_SIZE, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %165

143:                                              ; preds = %134
  %144 = load %struct.kvec*, %struct.kvec** %9, align 8
  %145 = load %struct.rsi*, %struct.rsi** %11, align 8
  %146 = getelementptr inbounds %struct.rsi, %struct.rsi* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @svc_putnl(%struct.kvec* %144, i32 %147)
  %149 = load %struct.kvec*, %struct.kvec** %9, align 8
  %150 = load %struct.rsi*, %struct.rsi** %11, align 8
  %151 = getelementptr inbounds %struct.rsi, %struct.rsi* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @svc_putnl(%struct.kvec* %149, i32 %152)
  %154 = load %struct.kvec*, %struct.kvec** %9, align 8
  %155 = load i32, i32* @GSS_SEQ_WIN, align 4
  %156 = call i32 @svc_putnl(%struct.kvec* %154, i32 %155)
  %157 = load %struct.kvec*, %struct.kvec** %9, align 8
  %158 = load %struct.rsi*, %struct.rsi** %11, align 8
  %159 = getelementptr inbounds %struct.rsi, %struct.rsi* %158, i32 0, i32 1
  %160 = call i64 @svc_safe_putnetobj(%struct.kvec* %157, i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %143
  br label %165

163:                                              ; preds = %143
  %164 = load i32, i32* @SVC_COMPLETE, align 4
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %163, %162, %142, %133, %123, %114
  %166 = load %struct.rsi*, %struct.rsi** %11, align 8
  %167 = getelementptr inbounds %struct.rsi, %struct.rsi* %166, i32 0, i32 0
  %168 = call i32 @cache_put(i32* %167, i32* @rsi_cache)
  %169 = load i32, i32* %13, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %165, %106, %97, %86, %76, %68, %59, %43, %37, %30
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i64 @svc_getnl(%struct.kvec*) #1

declare dso_local i32 @memset(%struct.rsi*, i32, i32) #1

declare dso_local i64 @dup_netobj(%struct.TYPE_6__*, %struct.xdr_netobj*) #1

declare dso_local i64 @svc_safe_getnetobj(%struct.kvec*, %struct.xdr_netobj*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.rsi* @rsi_lookup(%struct.rsi*) #1

declare dso_local i32 @rsi_free(%struct.rsi*) #1

declare dso_local i64 @cache_check(i32*, i32*, i32*) #1

declare dso_local i64 @gss_write_init_verf(%struct.svc_rqst*, %struct.rsi*) #1

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

declare dso_local i64 @svc_safe_putnetobj(%struct.kvec*, i32*) #1

declare dso_local i32 @cache_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
