; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_xprt_copy_addrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_xprt_copy_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.svc_xprt = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_xprt_copy_addrs(%struct.svc_rqst* %0, %struct.svc_xprt* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.svc_xprt*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.svc_xprt* %1, %struct.svc_xprt** %4, align 8
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 2
  %8 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %9 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %8, i32 0, i32 2
  %10 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %11 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(i32* %7, i32* %9, i32 %12)
  %14 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %15 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %18 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %20 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to %struct.sockaddr*
  store %struct.sockaddr* %21, %struct.sockaddr** %5, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %41 [
    i32 129, label %25
    i32 128, label %33
  ]

25:                                               ; preds = %2
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = bitcast %struct.sockaddr* %26 to %struct.sockaddr_in*
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %31 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  br label %41

33:                                               ; preds = %2
  %34 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %35 = bitcast %struct.sockaddr* %34 to %struct.sockaddr_in6*
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %39 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %2, %33, %25
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
