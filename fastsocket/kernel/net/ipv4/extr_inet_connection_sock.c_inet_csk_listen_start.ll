; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_listen_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_listen_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.sock*)*, {}* }
%struct.inet_sock = type { i32, i32 }
%struct.inet_connection_sock = type { i32 }

@TCP_LISTEN = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_csk_listen_start(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet_sock*, align 8
  %7 = alloca %struct.inet_connection_sock*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.inet_sock* @inet_sk(%struct.sock* %9)
  store %struct.inet_sock* %10, %struct.inet_sock** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %11)
  store %struct.inet_connection_sock* %12, %struct.inet_connection_sock** %7, align 8
  %13 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %14 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @reqsk_queue_alloc(i32* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call i32 @inet_csk_delack_init(%struct.sock* %26)
  %28 = load i32, i32* @TCP_LISTEN, align 4
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = bitcast {}** %34 to i32 (%struct.sock*, i32)**
  %36 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %35, align 8
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %39 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %36(%struct.sock* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %21
  %44 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %45 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @htons(i32 %46)
  %48 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %49 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call i32 @sk_dst_reset(%struct.sock* %50)
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %55, align 8
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = call i32 %56(%struct.sock* %57)
  store i32 0, i32* %3, align 4
  br label %68

59:                                               ; preds = %21
  %60 = load i32, i32* @TCP_CLOSE, align 4
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %64 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %63, i32 0, i32 0
  %65 = call i32 @__reqsk_queue_destroy(i32* %64)
  %66 = load i32, i32* @EADDRINUSE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %59, %43, %19
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @reqsk_queue_alloc(i32*, i32) #1

declare dso_local i32 @inet_csk_delack_init(%struct.sock*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

declare dso_local i32 @__reqsk_queue_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
