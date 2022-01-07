; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_tcp_check_fraghdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_tcp_check_fraghdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i64, i64, i32, i64 }

@TCP_RCV_COPY_FRAGHDR = common dso_local global i32 0, align 4
@TCP_RCV_LAST_FRAG = common dso_local global i32 0, align 4
@TCP_RCV_COPY_DATA = common dso_local global i32 0, align 4
@TCP_RCV_COPY_XID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_xprt*)* @xs_tcp_check_fraghdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_tcp_check_fraghdr(%struct.sock_xprt* %0) #0 {
  %2 = alloca %struct.sock_xprt*, align 8
  store %struct.sock_xprt* %0, %struct.sock_xprt** %2, align 8
  %3 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %4 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %7 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load i32, i32* @TCP_RCV_COPY_FRAGHDR, align 4
  %12 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %13 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %17 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %19 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TCP_RCV_LAST_FRAG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %10
  %25 = load i32, i32* @TCP_RCV_COPY_DATA, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %28 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @TCP_RCV_COPY_XID, align 4
  %32 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %33 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %37 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %24, %10
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
