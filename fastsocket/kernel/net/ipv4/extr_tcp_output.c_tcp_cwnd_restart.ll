; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_cwnd_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_cwnd_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.tcp_sock = type { i8*, i32, i64, i8*, i32 }
%struct.TYPE_2__ = type { i64 }

@tcp_time_stamp = common dso_local global i8* null, align 8
@CA_EVENT_CWND_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.dst_entry*)* @tcp_cwnd_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cwnd_restart(%struct.sock* %0, %struct.dst_entry* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %5, align 8
  %11 = load i8*, i8** @tcp_time_stamp, align 8
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = ptrtoint i8* %11 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %6, align 8
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %21 = call i32 @tcp_init_cwnd(%struct.tcp_sock* %19, %struct.dst_entry* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = load i32, i32* @CA_EVENT_CWND_RESTART, align 4
  %27 = call i32 @tcp_ca_event(%struct.sock* %25, i32 %26)
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 @tcp_current_ssthresh(%struct.sock* %28)
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @min(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %50, %2
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = sub i64 0, %39
  %42 = getelementptr i8, i8* %40, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = icmp ugt i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %45, %46
  br label %48

48:                                               ; preds = %44, %35
  %49 = phi i1 [ false, %35 ], [ %47, %44 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %35

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @max(i32 %54, i32 %55)
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @tcp_time_stamp, align 8
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_init_cwnd(%struct.tcp_sock*, %struct.dst_entry*) #1

declare dso_local i32 @tcp_ca_event(%struct.sock*, i32) #1

declare dso_local i32 @tcp_current_ssthresh(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
