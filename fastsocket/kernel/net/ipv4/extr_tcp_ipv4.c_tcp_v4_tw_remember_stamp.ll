; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_tw_remember_stamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_tw_remember_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { i32 }
%struct.inet_peer = type { i64, i64 }
%struct.tcp_timewait_sock = type { i64, i64 }
%struct.sock = type { i32 }

@TCP_PAWS_MSL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_v4_tw_remember_stamp(%struct.inet_timewait_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inet_timewait_sock*, align 8
  %4 = alloca %struct.inet_peer*, align 8
  %5 = alloca %struct.tcp_timewait_sock*, align 8
  store %struct.inet_timewait_sock* %0, %struct.inet_timewait_sock** %3, align 8
  %6 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %3, align 8
  %7 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.inet_peer* @inet_getpeer(i32 %8, i32 1)
  store %struct.inet_peer* %9, %struct.inet_peer** %4, align 8
  %10 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %11 = icmp ne %struct.inet_peer* %10, null
  br i1 %11, label %12, label %54

12:                                               ; preds = %1
  %13 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %3, align 8
  %14 = bitcast %struct.inet_timewait_sock* %13 to %struct.sock*
  %15 = call %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock* %14)
  store %struct.tcp_timewait_sock* %15, %struct.tcp_timewait_sock** %5, align 8
  %16 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %17 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %5, align 8
  %20 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %12
  %25 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %26 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TCP_PAWS_MSL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 (...) @get_seconds()
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %34 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %5, align 8
  %37 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32, %12
  %41 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %5, align 8
  %42 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %45 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %5, align 8
  %47 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %50 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %40, %32, %24
  %52 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %53 = call i32 @inet_putpeer(%struct.inet_peer* %52)
  store i32 1, i32* %2, align 4
  br label %55

54:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.inet_peer* @inet_getpeer(i32, i32) #1

declare dso_local %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @inet_putpeer(%struct.inet_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
