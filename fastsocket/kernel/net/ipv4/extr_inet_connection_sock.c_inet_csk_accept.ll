; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.inet_connection_sock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TCP_SYN_RECV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @inet_csk_accept(%struct.sock* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inet_connection_sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %11)
  store %struct.inet_connection_sock* %12, %struct.inet_connection_sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @lock_sock(%struct.sock* %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TCP_LISTEN, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %63

23:                                               ; preds = %3
  %24 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %25 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %24, i32 0, i32 0
  %26 = call i64 @reqsk_queue_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @O_NONBLOCK, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @sock_rcvtimeo(%struct.sock* %29, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %63

39:                                               ; preds = %28
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @inet_csk_wait_for_connect(%struct.sock* %40, i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %63

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %23
  %48 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %49 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %48, i32 0, i32 0
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call %struct.sock* @reqsk_queue_get_child(i32* %49, %struct.sock* %50)
  store %struct.sock* %51, %struct.sock** %8, align 8
  %52 = load %struct.sock*, %struct.sock** %8, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TCP_SYN_RECV, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  br label %59

59:                                               ; preds = %63, %47
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call i32 @release_sock(%struct.sock* %60)
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  ret %struct.sock* %62

63:                                               ; preds = %45, %38, %22
  store %struct.sock* null, %struct.sock** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  br label %59
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @reqsk_queue_empty(i32*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_wait_for_connect(%struct.sock*, i64) #1

declare dso_local %struct.sock* @reqsk_queue_get_child(i32*, %struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
