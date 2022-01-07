; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_westwood.c_tcp_westwood_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_westwood.c_tcp_westwood_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i8*, i8* }
%struct.westwood = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @tcp_westwood_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_westwood_event(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.westwood*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.westwood* @inet_csk_ca(%struct.sock* %9)
  store %struct.westwood* %10, %struct.westwood** %6, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %40 [
    i32 130, label %12
    i32 131, label %15
    i32 129, label %22
    i32 128, label %29
  ]

12:                                               ; preds = %2
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i32 @westwood_fast_bw(%struct.sock* %13)
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call i8* @tcp_westwood_bw_rttmin(%struct.sock* %16)
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 1
  store i8* %17, i8** %21, align 8
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i8* @tcp_westwood_bw_rttmin(%struct.sock* %23)
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.westwood*, %struct.westwood** %6, align 8
  %28 = getelementptr inbounds %struct.westwood, %struct.westwood* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = call i32 @westwood_update_window(%struct.sock* %30)
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = call i32 @westwood_acked_count(%struct.sock* %32)
  %34 = load %struct.westwood*, %struct.westwood** %6, align 8
  %35 = getelementptr inbounds %struct.westwood, %struct.westwood* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.westwood*, %struct.westwood** %6, align 8
  %39 = call i32 @update_rtt_min(%struct.westwood* %38)
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %29, %22, %15, %12
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.westwood* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @westwood_fast_bw(%struct.sock*) #1

declare dso_local i8* @tcp_westwood_bw_rttmin(%struct.sock*) #1

declare dso_local i32 @westwood_update_window(%struct.sock*) #1

declare dso_local i32 @westwood_acked_count(%struct.sock*) #1

declare dso_local i32 @update_rtt_min(%struct.westwood*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
