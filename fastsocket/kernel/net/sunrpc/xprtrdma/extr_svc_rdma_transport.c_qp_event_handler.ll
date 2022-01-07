; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_qp_event_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_qp_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.svc_xprt = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"svcrdma: QP event %d received for QP=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"svcrdma: QP ERROR event %d received for QP=%p, closing transport\0A\00", align 1
@XPT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event*, i8*)* @qp_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qp_event_handler(%struct.ib_event* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.svc_xprt*, align 8
  store %struct.ib_event* %0, %struct.ib_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.svc_xprt*
  store %struct.svc_xprt* %7, %struct.svc_xprt** %5, align 8
  %8 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %9 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 134, label %11
    i32 136, label %11
    i32 128, label %11
    i32 130, label %11
    i32 133, label %20
    i32 131, label %20
    i32 129, label %20
    i32 132, label %20
    i32 135, label %20
  ]

11:                                               ; preds = %2, %2, %2, %2
  %12 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %13 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %16 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18)
  br label %34

20:                                               ; preds = %2, %2, %2, %2, %2
  br label %21

21:                                               ; preds = %2, %20
  %22 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %23 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %26 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28)
  %30 = load i32, i32* @XPT_CLOSE, align 4
  %31 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %32 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %31, i32 0, i32 0
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %21, %11
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
