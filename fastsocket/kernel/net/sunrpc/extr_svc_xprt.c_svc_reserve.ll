; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.svc_xprt*, %struct.TYPE_4__ }
%struct.svc_xprt = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_reserve(%struct.svc_rqst* %0, i32 %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %24 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %23, i32 0, i32 1
  %25 = load %struct.svc_xprt*, %struct.svc_xprt** %24, align 8
  store %struct.svc_xprt* %25, %struct.svc_xprt** %5, align 8
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %27 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %32 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %31, i32 0, i32 0
  %33 = call i32 @atomic_sub(i32 %30, i32* %32)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %36 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %38 = call i32 @svc_xprt_enqueue(%struct.svc_xprt* %37)
  br label %39

39:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
