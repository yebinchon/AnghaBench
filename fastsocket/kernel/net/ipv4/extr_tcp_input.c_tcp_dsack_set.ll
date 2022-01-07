; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_dsack_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_dsack_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_3__*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@sysctl_tcp_dsack = common dso_local global i64 0, align 8
@LINUX_MIB_TCPDSACKOLDSENT = common dso_local global i32 0, align 4
@LINUX_MIB_TCPDSACKOFOSENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i8*, i8*)* @tcp_dsack_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_dsack_set(%struct.sock* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %7, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %12 = call i64 @tcp_is_sack(%struct.tcp_sock* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %3
  %15 = load i64, i64* @sysctl_tcp_dsack, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @before(i8* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @LINUX_MIB_TCPDSACKOLDSENT, align 4
  store i32 %25, i32* %8, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @LINUX_MIB_TCPDSACKOFOSENT, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 @sock_net(%struct.sock* %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @NET_INC_STATS_BH(i32 %30, i32 %31)
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* %42, i8** %47, align 8
  br label %48

48:                                               ; preds = %28, %14, %3
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_is_sack(%struct.tcp_sock*) #1

declare dso_local i64 @before(i8*, i32) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
