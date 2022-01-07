; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_hybla.c_hybla_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_hybla.c_hybla_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32 }
%struct.hybla = type { i32, i32, i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @hybla_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hybla_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.hybla*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.hybla* @inet_csk_ca(%struct.sock* %7)
  store %struct.hybla* %8, %struct.hybla** %4, align 8
  %9 = load %struct.hybla*, %struct.hybla** %4, align 8
  %10 = getelementptr inbounds %struct.hybla, %struct.hybla* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.hybla*, %struct.hybla** %4, align 8
  %12 = getelementptr inbounds %struct.hybla, %struct.hybla* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.hybla*, %struct.hybla** %4, align 8
  %14 = getelementptr inbounds %struct.hybla, %struct.hybla* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.hybla*, %struct.hybla** %4, align 8
  %16 = getelementptr inbounds %struct.hybla, %struct.hybla* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.hybla*, %struct.hybla** %4, align 8
  %18 = getelementptr inbounds %struct.hybla, %struct.hybla* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.hybla*, %struct.hybla** %4, align 8
  %20 = getelementptr inbounds %struct.hybla, %struct.hybla* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  store i32 2, i32* %22, align 4
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 1
  store i32 65535, i32* %24, align 4
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @hybla_recalc_param(%struct.sock* %25)
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hybla*, %struct.hybla** %4, align 8
  %31 = getelementptr inbounds %struct.hybla, %struct.hybla* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.hybla*, %struct.hybla** %4, align 8
  %33 = getelementptr inbounds %struct.hybla, %struct.hybla* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.hybla* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @hybla_recalc_param(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
