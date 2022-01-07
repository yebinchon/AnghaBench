; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_socket.c_pn_socket_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_socket.c_pn_socket_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.pn_sock = type { i32 }
%struct.sockaddr_pn = type { i32 }

@AF_PHONET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @pn_socket_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_socket_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.pn_sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %9, align 8
  %15 = call %struct.pn_sock* @pn_sk(%struct.sock* %14)
  store %struct.pn_sock* %15, %struct.pn_sock** %10, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = call i32 @memset(%struct.sockaddr* %16, i32 0, i32 4)
  %18 = load i32, i32* @AF_PHONET, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_pn*
  %26 = load %struct.pn_sock*, %struct.pn_sock** %10, align 8
  %27 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pn_sockaddr_set_object(%struct.sockaddr_pn* %25, i32 %28)
  br label %30

30:                                               ; preds = %23, %4
  %31 = load i32*, i32** %7, align 8
  store i32 4, i32* %31, align 4
  ret i32 0
}

declare dso_local %struct.pn_sock* @pn_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @pn_sockaddr_set_object(%struct.sockaddr_pn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
