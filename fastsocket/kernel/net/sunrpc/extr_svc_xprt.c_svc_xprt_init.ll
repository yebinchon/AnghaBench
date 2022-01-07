; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_xprt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_xprt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt_class = type { i32 }
%struct.svc_xprt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.svc_serv*, i32, i32, %struct.svc_xprt_class* }
%struct.svc_serv = type { i32 }

@XPT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"xpt_bc_pending\00", align 1
@init_net = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_xprt_init(%struct.svc_xprt_class* %0, %struct.svc_xprt* %1, %struct.svc_serv* %2) #0 {
  %4 = alloca %struct.svc_xprt_class*, align 8
  %5 = alloca %struct.svc_xprt*, align 8
  %6 = alloca %struct.svc_serv*, align 8
  store %struct.svc_xprt_class* %0, %struct.svc_xprt_class** %4, align 8
  store %struct.svc_xprt* %1, %struct.svc_xprt** %5, align 8
  store %struct.svc_serv* %2, %struct.svc_serv** %6, align 8
  %7 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %8 = call i32 @memset(%struct.svc_xprt* %7, i32 0, i32 64)
  %9 = load %struct.svc_xprt_class*, %struct.svc_xprt_class** %4, align 8
  %10 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %11 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %10, i32 0, i32 12
  store %struct.svc_xprt_class* %9, %struct.svc_xprt_class** %11, align 8
  %12 = load %struct.svc_xprt_class*, %struct.svc_xprt_class** %4, align 8
  %13 = getelementptr inbounds %struct.svc_xprt_class, %struct.svc_xprt_class* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %16 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %18 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %17, i32 0, i32 10
  %19 = call i32 @kref_init(i32* %18)
  %20 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %21 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %22 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %21, i32 0, i32 9
  store %struct.svc_serv* %20, %struct.svc_serv** %22, align 8
  %23 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %24 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %23, i32 0, i32 8
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %27 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %26, i32 0, i32 7
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %30 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %29, i32 0, i32 6
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %33 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %32, i32 0, i32 5
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %36 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %35, i32 0, i32 4
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %39 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %38, i32 0, i32 3
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load i32, i32* @XPT_BUSY, align 4
  %42 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %43 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %42, i32 0, i32 2
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  %45 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %46 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %45, i32 0, i32 1
  %47 = call i32 @rpc_init_wait_queue(i32* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @get_net(i32* @init_net)
  %49 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %50 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  ret void
}

declare dso_local i32 @memset(%struct.svc_xprt*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rpc_init_wait_queue(i32*, i8*) #1

declare dso_local i32 @get_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
