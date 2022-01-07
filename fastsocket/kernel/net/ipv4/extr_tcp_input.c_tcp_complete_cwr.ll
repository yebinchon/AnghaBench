; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_complete_cwr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_complete_cwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@TCP_CA_CWR = common dso_local global i64 0, align 8
@tcp_time_stamp = common dso_local global i32 0, align 4
@CA_EVENT_COMPLETE_CWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_complete_cwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_complete_cwr(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %4)
  store %struct.tcp_sock* %5, %struct.tcp_sock** %3, align 8
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TCP_CA_CWR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @min(i32 %20, i32 %23)
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  br label %33

27:                                               ; preds = %10
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %32 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %27, %17
  %34 = load i32, i32* @tcp_time_stamp, align 4
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %1
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = load i32, i32* @CA_EVENT_COMPLETE_CWR, align 4
  %40 = call i32 @tcp_ca_event(%struct.sock* %38, i32 %39)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tcp_ca_event(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
