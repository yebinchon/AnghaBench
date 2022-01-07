; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_reqsk_queue_hash_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_reqsk_queue_hash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.listen_sock* }
%struct.listen_sock = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet6_csk_reqsk_queue_hash_add(%struct.sock* %0, %struct.request_sock* %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inet_connection_sock*, align 8
  %8 = alloca %struct.listen_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.request_sock* %1, %struct.request_sock** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %10)
  store %struct.inet_connection_sock* %11, %struct.inet_connection_sock** %7, align 8
  %12 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %13 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.listen_sock*, %struct.listen_sock** %14, align 8
  store %struct.listen_sock* %15, %struct.listen_sock** %8, align 8
  %16 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %17 = call %struct.TYPE_6__* @inet6_rsk(%struct.request_sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %20 = call %struct.TYPE_5__* @inet_rsk(%struct.request_sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.listen_sock*, %struct.listen_sock** %8, align 8
  %24 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.listen_sock*, %struct.listen_sock** %8, align 8
  %27 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @inet6_synq_hash(i32* %18, i32 %22, i32 %25, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %31 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @reqsk_queue_hash_req(%struct.TYPE_4__* %31, i32 %32, %struct.request_sock* %33, i64 %34)
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @inet_csk_reqsk_queue_added(%struct.sock* %36, i64 %37)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet6_synq_hash(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @inet6_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_5__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @reqsk_queue_hash_req(%struct.TYPE_4__*, i32, %struct.request_sock*, i64) #1

declare dso_local i32 @inet_csk_reqsk_queue_added(%struct.sock*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
