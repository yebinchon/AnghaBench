; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_listen_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_listen_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i64 }
%struct.svc_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"svc: socket %p TCP (listen) state change %d\0A\00", align 1
@TCP_LISTEN = common dso_local global i64 0, align 8
@XPT_CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"svc: socket %p: no user data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @svc_tcp_listen_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_tcp_listen_data_ready(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.svc_sock*
  store %struct.svc_sock* %9, %struct.svc_sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.sock* %10, i64 %13)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TCP_LISTEN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.svc_sock*, %struct.svc_sock** %5, align 8
  %22 = icmp ne %struct.svc_sock* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, i32* @XPT_CONN, align 4
  %25 = load %struct.svc_sock*, %struct.svc_sock** %5, align 8
  %26 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @set_bit(i32 %24, i32* %27)
  %29 = load %struct.svc_sock*, %struct.svc_sock** %5, align 8
  %30 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %29, i32 0, i32 0
  %31 = call i32 @svc_xprt_enqueue(%struct.TYPE_2__* %30)
  br label %35

32:                                               ; preds = %20
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %33)
  br label %35

35:                                               ; preds = %32, %23
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @waitqueue_active(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @wake_up_interruptible_all(i64 %50)
  br label %52

52:                                               ; preds = %47, %41, %36
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.sock*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.TYPE_2__*) #1

declare dso_local i32 @printk(i8*, %struct.sock*) #1

declare dso_local i64 @waitqueue_active(i64) #1

declare dso_local i32 @wake_up_interruptible_all(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
