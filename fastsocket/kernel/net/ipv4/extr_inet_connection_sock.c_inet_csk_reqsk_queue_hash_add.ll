; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_reqsk_queue_hash_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_reqsk_queue_hash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.listen_sock* }
%struct.listen_sock = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_csk_reqsk_queue_hash_add(%struct.sock* %0, %struct.request_sock* %1, i64 %2) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.listen_sock*, %struct.listen_sock** %14, align 8
  store %struct.listen_sock* %15, %struct.listen_sock** %8, align 8
  %16 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %17 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %21 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.listen_sock*, %struct.listen_sock** %8, align 8
  %25 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.listen_sock*, %struct.listen_sock** %8, align 8
  %28 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @inet_synq_hash(i32 %19, i32 %23, i32 %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %32 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %31, i32 0, i32 0
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @reqsk_queue_hash_req(%struct.TYPE_3__* %32, i32 %33, %struct.request_sock* %34, i64 %35)
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @inet_csk_reqsk_queue_added(%struct.sock* %37, i64 %38)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_synq_hash(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @reqsk_queue_hash_req(%struct.TYPE_3__*, i32, %struct.request_sock*, i64) #1

declare dso_local i32 @inet_csk_reqsk_queue_added(%struct.sock*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
