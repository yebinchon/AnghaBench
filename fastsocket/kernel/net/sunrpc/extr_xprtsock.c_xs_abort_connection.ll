; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_abort_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_abort_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"RPC:       disconnecting xprt %p to reuse port\0A\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"RPC:       AF_UNSPEC connect return code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_xprt*)* @xs_abort_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_abort_connection(%struct.sock_xprt* %0) #0 {
  %2 = alloca %struct.sock_xprt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr, align 4
  store %struct.sock_xprt* %0, %struct.sock_xprt** %2, align 8
  %5 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %6 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.sock_xprt* %5)
  %7 = call i32 @memset(%struct.sockaddr* %4, i32 0, i32 4)
  %8 = load i32, i32* @AF_UNSPEC, align 4
  %9 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %11 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kernel_connect(i32 %12, %struct.sockaddr* %4, i32 4, i32 0)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %18 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %17, i32 0, i32 0
  %19 = call i32 @xs_sock_reset_connection_flags(i32* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @kernel_connect(i32, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @xs_sock_reset_connection_flags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
