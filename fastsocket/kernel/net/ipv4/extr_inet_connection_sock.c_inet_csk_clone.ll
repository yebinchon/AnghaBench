; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.request_sock = type { i32 }
%struct.inet_connection_sock = type { i32, i64, i64, i64, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@TCP_SYN_RECV = common dso_local global i32 0, align 4
@sk_stream_write_space = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @inet_csk_clone(%struct.sock* %0, %struct.request_sock* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.request_sock* %1, %struct.request_sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.sock* @sk_clone(%struct.sock* %9, i32 %10)
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %3
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %15)
  store %struct.inet_connection_sock* %16, %struct.inet_connection_sock** %8, align 8
  %17 = load i32, i32* @TCP_SYN_RECV, align 4
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %23 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sock*, %struct.sock** %7, align 8
  %27 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %30 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ntohs(i32 %32)
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %38 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sock*, %struct.sock** %7, align 8
  %42 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @sk_stream_write_space, align 4
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %48 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %50 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %52 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %54 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %53, i32 0, i32 0
  %55 = call i32 @memset(i32* %54, i32 0, i32 4)
  %56 = load %struct.sock*, %struct.sock** %7, align 8
  %57 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %58 = call i32 @security_inet_csk_clone(%struct.sock* %56, %struct.request_sock* %57)
  br label %59

59:                                               ; preds = %14, %3
  %60 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %60
}

declare dso_local %struct.sock* @sk_clone(%struct.sock*, i32) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_3__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @security_inet_csk_clone(%struct.sock*, %struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
