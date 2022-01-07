; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_unwrap_integ_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_unwrap_integ_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64 }
%struct.xdr_buf = type { i32, i32* }
%struct.gss_ctx = type { i32 }
%struct.xdr_netobj = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RPC_MAX_AUTH_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.xdr_buf*, i32, %struct.gss_ctx*)* @unwrap_integ_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwrap_integ_data(%struct.svc_rqst* %0, %struct.xdr_buf* %1, i32 %2, %struct.gss_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gss_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xdr_netobj, align 8
  %14 = alloca %struct.xdr_buf, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.gss_ctx* %3, %struct.gss_ctx** %9, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %18 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %112

22:                                               ; preds = %4
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %24 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @svc_getnl(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %112

33:                                               ; preds = %22
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %36 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %112

41:                                               ; preds = %33
  %42 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @xdr_buf_subsegment(%struct.xdr_buf* %42, %struct.xdr_buf* %14, i32 0, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (...) @BUG()
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %52 = call i64 @read_u32_from_xdr_buf(%struct.xdr_buf* %49, i32 %50, i64* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %54, %48
  %57 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RPC_MAX_AUTH_SIZE, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %112

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @kmalloc(i64 %65, i32 %66)
  %68 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %112

74:                                               ; preds = %63
  %75 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 4
  %78 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @read_bytes_from_xdr_buf(%struct.xdr_buf* %75, i32 %77, i32 %79, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %107

85:                                               ; preds = %74
  %86 = load %struct.gss_ctx*, %struct.gss_ctx** %9, align 8
  %87 = call i32 @gss_verify_mic(%struct.gss_ctx* %86, %struct.xdr_buf* %14, %struct.xdr_netobj* %13)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @GSS_S_COMPLETE, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %107

92:                                               ; preds = %85
  %93 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %94 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = call i32 @svc_getnl(i32* %96)
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %107

101:                                              ; preds = %92
  %102 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %103 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 4
  %106 = call i32 @xdr_buf_trim(%struct.xdr_buf* %102, i64 %105)
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %101, %100, %91, %84
  %108 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @kfree(i32 %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %107, %72, %61, %39, %31, %21
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @svc_getnl(i32*) #1

declare dso_local i64 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @read_u32_from_xdr_buf(%struct.xdr_buf*, i32, i64*) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i64 @read_bytes_from_xdr_buf(%struct.xdr_buf*, i32, i32, i64) #1

declare dso_local i32 @gss_verify_mic(%struct.gss_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @xdr_buf_trim(%struct.xdr_buf*, i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
