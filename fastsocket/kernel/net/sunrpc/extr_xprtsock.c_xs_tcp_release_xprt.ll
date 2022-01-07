; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_tcp_release_xprt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_tcp_release_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { %struct.rpc_task* }
%struct.rpc_task = type { %struct.TYPE_4__*, %struct.rpc_rqst* }
%struct.TYPE_4__ = type { i32 }
%struct.rpc_rqst = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@XPRT_CLOSE_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.rpc_task*)* @xs_tcp_release_xprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_tcp_release_xprt(%struct.rpc_xprt* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %4, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %7, i32 0, i32 0
  %9 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %10 = icmp ne %struct.rpc_task* %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %14 = icmp eq %struct.rpc_task* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %46

16:                                               ; preds = %12
  %17 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 1
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %18, align 8
  store %struct.rpc_rqst* %19, %struct.rpc_rqst** %5, align 8
  %20 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %21 = icmp eq %struct.rpc_rqst* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %46

23:                                               ; preds = %16
  %24 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %25 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %46

29:                                               ; preds = %23
  %30 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %31 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %34 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %46

39:                                               ; preds = %29
  %40 = load i32, i32* @XPRT_CLOSE_WAIT, align 4
  %41 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %42 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %40, i32* %44)
  br label %46

46:                                               ; preds = %39, %38, %28, %22, %15
  %47 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %48 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %49 = call i32 @xprt_release_xprt(%struct.rpc_xprt* %47, %struct.rpc_task* %48)
  br label %50

50:                                               ; preds = %46, %11
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @xprt_release_xprt(%struct.rpc_xprt*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
