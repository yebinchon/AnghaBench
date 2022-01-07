; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c_udp_v6_flush_pending_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c_udp_v6_flush_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.udp_sock = type { i64, i64 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @udp_v6_flush_pending_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_v6_flush_pending_frames(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.udp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.udp_sock* @udp_sk(%struct.sock* %4)
  store %struct.udp_sock* %5, %struct.udp_sock** %3, align 8
  %6 = load %struct.udp_sock*, %struct.udp_sock** %3, align 8
  %7 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i32 @udp_flush_pending_frames(%struct.sock* %12)
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.udp_sock*, %struct.udp_sock** %3, align 8
  %16 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.udp_sock*, %struct.udp_sock** %3, align 8
  %21 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.udp_sock*, %struct.udp_sock** %3, align 8
  %23 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call i32 @ip6_flush_pending_frames(%struct.sock* %24)
  br label %26

26:                                               ; preds = %19, %14
  br label %27

27:                                               ; preds = %26, %11
  ret void
}

declare dso_local %struct.udp_sock* @udp_sk(%struct.sock*) #1

declare dso_local i32 @udp_flush_pending_frames(%struct.sock*) #1

declare dso_local i32 @ip6_flush_pending_frames(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
