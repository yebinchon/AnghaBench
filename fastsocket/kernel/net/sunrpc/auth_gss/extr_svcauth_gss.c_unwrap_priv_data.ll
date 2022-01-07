; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_unwrap_priv_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_unwrap_priv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, i64 }
%struct.xdr_buf = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gss_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RPCSVC_MAXPAYLOAD = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.xdr_buf*, i32, %struct.gss_ctx*)* @unwrap_priv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwrap_priv_data(%struct.svc_rqst* %0, %struct.xdr_buf* %1, i32 %2, %struct.gss_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gss_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.gss_ctx* %3, %struct.gss_ctx** %9, align 8
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %17 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %19 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = call i32 @svc_getnl(%struct.TYPE_2__* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %24 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %98

28:                                               ; preds = %4
  %29 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %30 = call i32 @total_buf_len(%struct.xdr_buf* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %110

37:                                               ; preds = %28
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %43 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @fix_priv_head(%struct.xdr_buf* %46, i32 %47)
  %49 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %50 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %54 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.gss_ctx*, %struct.gss_ctx** %9, align 8
  %56 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %57 = call i32 @gss_unwrap(%struct.gss_ctx* %55, i32 0, %struct.xdr_buf* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %60 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %58, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %65 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %68 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %72 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = srem i32 %76, 4
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %37
  %81 = load i32, i32* @RPCSVC_MAXPAYLOAD, align 4
  %82 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %83 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @xdr_shift_buf(%struct.xdr_buf* %84, i32 %85)
  %87 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @fix_priv_head(%struct.xdr_buf* %87, i32 %88)
  br label %90

90:                                               ; preds = %80, %37
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @GSS_S_COMPLETE, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %110

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %27
  %99 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %100 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 0
  %103 = call i32 @svc_getnl(%struct.TYPE_2__* %102)
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %110

109:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %106, %94, %34
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @svc_getnl(%struct.TYPE_2__*) #1

declare dso_local i32 @total_buf_len(%struct.xdr_buf*) #1

declare dso_local i32 @fix_priv_head(%struct.xdr_buf*, i32) #1

declare dso_local i32 @gss_unwrap(%struct.gss_ctx*, i32, %struct.xdr_buf*) #1

declare dso_local i32 @xdr_shift_buf(%struct.xdr_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
