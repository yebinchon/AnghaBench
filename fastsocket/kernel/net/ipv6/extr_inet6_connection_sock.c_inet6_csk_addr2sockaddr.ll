; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_addr2sockaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_addr2sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet6_csk_addr2sockaddr(%struct.sock* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.ipv6_pinfo*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %7)
  store %struct.ipv6_pinfo* %8, %struct.ipv6_pinfo** %5, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %10, %struct.sockaddr_in6** %6, align 8
  %11 = load i32, i32* @AF_INET6, align 4
  %12 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %16 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %5, align 8
  %17 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %16, i32 0, i32 0
  %18 = call i32 @ipv6_addr_copy(i32* %15, i32* %17)
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 1
  %36 = call i32 @ipv6_addr_type(i32* %35)
  %37 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %33, %2
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
