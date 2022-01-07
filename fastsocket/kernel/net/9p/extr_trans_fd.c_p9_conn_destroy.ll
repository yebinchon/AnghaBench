; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_conn = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mux %p prev %p next %p\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_conn*)* @p9_conn_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_conn_destroy(%struct.p9_conn* %0) #0 {
  %2 = alloca %struct.p9_conn*, align 8
  store %struct.p9_conn* %0, %struct.p9_conn** %2, align 8
  %3 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %4 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %5 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %6 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %10 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @P9_DPRINTK(i32 %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.p9_conn* %4, i32 %8, i32 %12)
  %14 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %15 = call i32 @p9_mux_poll_stop(%struct.p9_conn* %14)
  %16 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %17 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %16, i32 0, i32 2
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %20 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %19, i32 0, i32 1
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %23 = load i32, i32* @ECONNRESET, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @p9_conn_cancel(%struct.p9_conn* %22, i32 %24)
  %26 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %27 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %29 = call i32 @kfree(%struct.p9_conn* %28)
  ret void
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.p9_conn*, i32, i32) #1

declare dso_local i32 @p9_mux_poll_stop(%struct.p9_conn*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @p9_conn_cancel(%struct.p9_conn*, i32) #1

declare dso_local i32 @kfree(%struct.p9_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
