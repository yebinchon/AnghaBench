; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.xdr_buf, %struct.svc_xprt* }
%struct.xdr_buf = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.svc_xprt = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { {}*, {}* }

@EFAULT = common dso_local global i32 0, align 4
@XPT_DEAD = common dso_local global i32 0, align 4
@XPT_CLOSE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_send(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.svc_xprt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_buf*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load %struct.svc_xprt*, %struct.svc_xprt** %8, align 8
  store %struct.svc_xprt* %9, %struct.svc_xprt** %4, align 8
  %10 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %11 = icmp ne %struct.svc_xprt* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EFAULT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %99

15:                                               ; preds = %1
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %17 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %16, i32 0, i32 1
  %18 = load %struct.svc_xprt*, %struct.svc_xprt** %17, align 8
  %19 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = bitcast {}** %21 to i32 (%struct.svc_rqst*)**
  %23 = load i32 (%struct.svc_rqst*)*, i32 (%struct.svc_rqst*)** %22, align 8
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %25 = call i32 %23(%struct.svc_rqst* %24)
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %27 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %26, i32 0, i32 0
  store %struct.xdr_buf* %27, %struct.xdr_buf** %6, align 8
  %28 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %29 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %35 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %39 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %37, %43
  %45 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %46 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %48 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i32, i32* @XPT_DEAD, align 4
  %51 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %52 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %51, i32 0, i32 3
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %15
  %56 = load i32, i32* @XPT_CLOSE, align 4
  %57 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %58 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %57, i32 0, i32 3
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55, %15
  %62 = load i32, i32* @ENOTCONN, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %73

64:                                               ; preds = %55
  %65 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %66 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to i32 (%struct.svc_rqst*)**
  %70 = load i32 (%struct.svc_rqst*)*, i32 (%struct.svc_rqst*)** %69, align 8
  %71 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %72 = call i32 %70(%struct.svc_rqst* %71)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %64, %61
  %74 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %75 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %78 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %77, i32 0, i32 0
  %79 = call i32 @rpc_wake_up(i32* %78)
  %80 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %81 = call i32 @svc_xprt_release(%struct.svc_rqst* %80)
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @ECONNREFUSED, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %96, label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ENOTCONN, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @EAGAIN, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %86, %73
  store i32 0, i32* %2, align 4
  br label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %96, %12
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rpc_wake_up(i32*) #1

declare dso_local i32 @svc_xprt_release(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
