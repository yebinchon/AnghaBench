; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_reset_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_reset_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { %struct.socket*, %struct.sock*, i64 }
%struct.socket = type { i32 }
%struct.sock = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_xprt*)* @xs_reset_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_reset_transport(%struct.sock_xprt* %0) #0 {
  %2 = alloca %struct.sock_xprt*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.sock_xprt* %0, %struct.sock_xprt** %2, align 8
  %5 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %5, i32 0, i32 0
  %7 = load %struct.socket*, %struct.socket** %6, align 8
  store %struct.socket* %7, %struct.socket** %3, align 8
  %8 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %9 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %8, i32 0, i32 1
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = icmp eq %struct.sock* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %16 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  %19 = call i32 @write_lock_bh(i32* %18)
  %20 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %21 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %20, i32 0, i32 1
  store %struct.sock* null, %struct.sock** %21, align 8
  %22 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %23 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %22, i32 0, i32 0
  store %struct.socket* null, %struct.socket** %23, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @xs_restore_old_callbacks(%struct.sock_xprt* %26, %struct.sock* %27)
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 1
  %31 = call i32 @write_unlock_bh(i32* %30)
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.socket*, %struct.socket** %3, align 8
  %35 = call i32 @sock_release(%struct.socket* %34)
  br label %36

36:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @xs_restore_old_callbacks(%struct.sock_xprt*, %struct.sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
