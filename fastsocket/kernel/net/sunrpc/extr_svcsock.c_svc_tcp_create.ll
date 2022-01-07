; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32 }
%struct.svc_serv = type { i32 }
%struct.net = type { i32 }
%struct.sockaddr = type { i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_xprt* (%struct.svc_serv*, %struct.net*, %struct.sockaddr*, i32, i32)* @svc_tcp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_xprt* @svc_tcp_create(%struct.svc_serv* %0, %struct.net* %1, %struct.sockaddr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.svc_serv*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %6, align 8
  store %struct.net* %1, %struct.net** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %12 = load i32, i32* @IPPROTO_TCP, align 4
  %13 = load %struct.net*, %struct.net** %7, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.svc_xprt* @svc_create_socket(%struct.svc_serv* %11, i32 %12, %struct.net* %13, %struct.sockaddr* %14, i32 %15, i32 %16)
  ret %struct.svc_xprt* %17
}

declare dso_local %struct.svc_xprt* @svc_create_socket(%struct.svc_serv*, i32, %struct.net*, %struct.sockaddr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
