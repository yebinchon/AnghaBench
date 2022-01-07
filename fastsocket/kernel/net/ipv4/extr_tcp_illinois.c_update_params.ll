; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_illinois.c_update_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_illinois.c_update_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64 }
%struct.illinois = type { i64, i32, i32 }

@win_thresh = common dso_local global i64 0, align 8
@ALPHA_BASE = common dso_local global i32 0, align 4
@BETA_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @update_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_params(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.illinois*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.illinois* @inet_csk_ca(%struct.sock* %9)
  store %struct.illinois* %10, %struct.illinois** %4, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @win_thresh, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @ALPHA_BASE, align 4
  %18 = load %struct.illinois*, %struct.illinois** %4, align 8
  %19 = getelementptr inbounds %struct.illinois, %struct.illinois* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @BETA_BASE, align 4
  %21 = load %struct.illinois*, %struct.illinois** %4, align 8
  %22 = getelementptr inbounds %struct.illinois, %struct.illinois* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %45

23:                                               ; preds = %1
  %24 = load %struct.illinois*, %struct.illinois** %4, align 8
  %25 = getelementptr inbounds %struct.illinois, %struct.illinois* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.illinois*, %struct.illinois** %4, align 8
  %30 = call i32 @max_delay(%struct.illinois* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.illinois*, %struct.illinois** %4, align 8
  %32 = call i32 @avg_delay(%struct.illinois* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.illinois*, %struct.illinois** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @alpha(%struct.illinois* %33, i32 %34, i32 %35)
  %37 = load %struct.illinois*, %struct.illinois** %4, align 8
  %38 = getelementptr inbounds %struct.illinois, %struct.illinois* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @beta(i32 %39, i32 %40)
  %42 = load %struct.illinois*, %struct.illinois** %4, align 8
  %43 = getelementptr inbounds %struct.illinois, %struct.illinois* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %28, %23
  br label %45

45:                                               ; preds = %44, %16
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = call i32 @rtt_reset(%struct.sock* %46)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.illinois* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @max_delay(%struct.illinois*) #1

declare dso_local i32 @avg_delay(%struct.illinois*) #1

declare dso_local i32 @alpha(%struct.illinois*, i32, i32) #1

declare dso_local i32 @beta(i32, i32) #1

declare dso_local i32 @rtt_reset(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
