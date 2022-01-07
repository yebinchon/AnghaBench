; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ipv6_sockglue.c_ipv6_update_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ipv6_sockglue.c_ipv6_update_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.ipv6_txoptions = type { i64, i64 }
%struct.inet_connection_sock = type { i32, i32 (%struct.sock*, i32)*, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@TCPF_LISTEN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipv6_txoptions* (%struct.sock*, %struct.ipv6_txoptions*)* @ipv6_update_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipv6_txoptions* @ipv6_update_options(%struct.sock* %0, %struct.ipv6_txoptions* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ipv6_txoptions*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ipv6_txoptions* %1, %struct.ipv6_txoptions** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %2
  %12 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %13 = icmp ne %struct.ipv6_txoptions* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* @TCPF_LISTEN, align 4
  %20 = load i32, i32* @TCPF_CLOSE, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %14
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LOOPBACK4_IPV6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %32)
  store %struct.inet_connection_sock* %33, %struct.inet_connection_sock** %5, align 8
  %34 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %35 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %38 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %42 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %44 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %43, i32 0, i32 1
  %45 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %44, align 8
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %48 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %45(%struct.sock* %46, i32 %49)
  br label %51

51:                                               ; preds = %31, %24, %14, %11
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = call %struct.TYPE_4__* @inet6_sk(%struct.sock* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %56 = call %struct.ipv6_txoptions* @xchg(i32* %54, %struct.ipv6_txoptions* %55)
  store %struct.ipv6_txoptions* %56, %struct.ipv6_txoptions** %4, align 8
  br label %69

57:                                               ; preds = %2
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 1
  %60 = call i32 @write_lock(i32* %59)
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = call %struct.TYPE_4__* @inet6_sk(%struct.sock* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %65 = call %struct.ipv6_txoptions* @xchg(i32* %63, %struct.ipv6_txoptions* %64)
  store %struct.ipv6_txoptions* %65, %struct.ipv6_txoptions** %4, align 8
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 1
  %68 = call i32 @write_unlock(i32* %67)
  br label %69

69:                                               ; preds = %57, %51
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = call i32 @sk_dst_reset(%struct.sock* %70)
  %72 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  ret %struct.ipv6_txoptions* %72
}

declare dso_local %struct.TYPE_3__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.ipv6_txoptions* @xchg(i32*, %struct.ipv6_txoptions*) #1

declare dso_local %struct.TYPE_4__* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
