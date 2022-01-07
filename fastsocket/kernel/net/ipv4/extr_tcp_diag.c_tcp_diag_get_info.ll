; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_diag.c_tcp_diag_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_diag.c_tcp_diag_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i64 }
%struct.inet_diag_msg = type { i64, i64 }
%struct.tcp_sock = type { i64, i64, i64, i64 }
%struct.tcp_info = type { i32 }

@TCP_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.inet_diag_msg*, i8*)* @tcp_diag_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_diag_get_info(%struct.sock* %0, %struct.inet_diag_msg* %1, i8* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_diag_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.tcp_info*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.inet_diag_msg* %1, %struct.inet_diag_msg** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.tcp_info*
  store %struct.tcp_info* %12, %struct.tcp_info** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TCP_LISTEN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %5, align 8
  %23 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %5, align 8
  %28 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %48

29:                                               ; preds = %3
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %5, align 8
  %38 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %5, align 8
  %47 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %29, %18
  %49 = load %struct.tcp_info*, %struct.tcp_info** %8, align 8
  %50 = icmp ne %struct.tcp_info* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = load %struct.tcp_info*, %struct.tcp_info** %8, align 8
  %54 = call i32 @tcp_get_info(%struct.sock* %52, %struct.tcp_info* %53)
  br label %55

55:                                               ; preds = %51, %48
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_get_info(%struct.sock*, %struct.tcp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
