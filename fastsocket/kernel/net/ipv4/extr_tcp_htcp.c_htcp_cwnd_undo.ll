; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_htcp.c_htcp_cwnd_undo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_htcp.c_htcp_cwnd_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32 }
%struct.htcp = type { i32, i64, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @htcp_cwnd_undo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcp_cwnd_undo(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.htcp*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.htcp* @inet_csk_ca(%struct.sock* %7)
  store %struct.htcp* %8, %struct.htcp** %4, align 8
  %9 = load %struct.htcp*, %struct.htcp** %4, align 8
  %10 = getelementptr inbounds %struct.htcp, %struct.htcp* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.htcp*, %struct.htcp** %4, align 8
  %15 = getelementptr inbounds %struct.htcp, %struct.htcp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.htcp*, %struct.htcp** %4, align 8
  %18 = getelementptr inbounds %struct.htcp, %struct.htcp* %17, i32 0, i32 6
  store i64 %16, i64* %18, align 8
  %19 = load %struct.htcp*, %struct.htcp** %4, align 8
  %20 = getelementptr inbounds %struct.htcp, %struct.htcp* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.htcp*, %struct.htcp** %4, align 8
  %23 = getelementptr inbounds %struct.htcp, %struct.htcp* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.htcp*, %struct.htcp** %4, align 8
  %25 = getelementptr inbounds %struct.htcp, %struct.htcp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.htcp*, %struct.htcp** %4, align 8
  %28 = getelementptr inbounds %struct.htcp, %struct.htcp* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.htcp*, %struct.htcp** %4, align 8
  %30 = getelementptr inbounds %struct.htcp, %struct.htcp* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %13, %1
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 7
  %39 = load %struct.htcp*, %struct.htcp** %4, align 8
  %40 = getelementptr inbounds %struct.htcp, %struct.htcp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %38, %41
  %43 = call i32 @max(i32 %34, i32 %42)
  ret i32 %43
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.htcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
