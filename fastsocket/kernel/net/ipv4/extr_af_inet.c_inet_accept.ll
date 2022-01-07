; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* (%struct.sock*, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 1
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %7, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.sock* (%struct.sock*, i32, i32*)*, %struct.sock* (%struct.sock*, i32, i32*)** %18, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.sock* %19(%struct.sock* %20, i32 %21, i32* %8)
  store %struct.sock* %22, %struct.sock** %9, align 8
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = icmp ne %struct.sock* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %53

26:                                               ; preds = %3
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = call i32 @lock_sock(%struct.sock* %27)
  %29 = load %struct.sock*, %struct.sock** %9, align 8
  %30 = call i32 @inet_sock_cpu_or_flow_record(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  %35 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %36 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TCPF_CLOSE, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %34, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.sock*, %struct.sock** %9, align 8
  %46 = load %struct.socket*, %struct.socket** %5, align 8
  %47 = call i32 @sock_graft(%struct.sock* %45, %struct.socket* %46)
  %48 = load i32, i32* @SS_CONNECTED, align 4
  %49 = load %struct.socket*, %struct.socket** %5, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %8, align 4
  %51 = load %struct.sock*, %struct.sock** %9, align 8
  %52 = call i32 @release_sock(%struct.sock* %51)
  br label %53

53:                                               ; preds = %26, %25
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @inet_sock_cpu_or_flow_record(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
