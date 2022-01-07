; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_yeah.c_tcp_yeah_ssthresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_yeah.c_tcp_yeah_ssthresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.yeah = type { i64, i32, i32, i64 }

@TCP_YEAH_RHO = common dso_local global i64 0, align 8
@TCP_YEAH_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_yeah_ssthresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_yeah_ssthresh(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.yeah*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.yeah* @inet_csk_ca(%struct.sock* %8)
  store %struct.yeah* %9, %struct.yeah** %4, align 8
  %10 = load %struct.yeah*, %struct.yeah** %4, align 8
  %11 = getelementptr inbounds %struct.yeah, %struct.yeah* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TCP_YEAH_RHO, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.yeah*, %struct.yeah** %4, align 8
  %17 = getelementptr inbounds %struct.yeah, %struct.yeah* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 1
  %24 = call i8* @max(i32 %23, i32 2)
  %25 = call i32 @min(i32 %19, i8* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TCP_YEAH_DELTA, align 4
  %31 = ashr i32 %29, %30
  %32 = call i8* @max(i32 %26, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %5, align 4
  br label %41

34:                                               ; preds = %1
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 1
  %39 = call i8* @max(i32 %38, i32 2)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %15
  %42 = load %struct.yeah*, %struct.yeah** %4, align 8
  %43 = getelementptr inbounds %struct.yeah, %struct.yeah* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.yeah*, %struct.yeah** %4, align 8
  %45 = getelementptr inbounds %struct.yeah, %struct.yeah* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 1
  %48 = call i8* @max(i32 %47, i32 2)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.yeah*, %struct.yeah** %4, align 8
  %51 = getelementptr inbounds %struct.yeah, %struct.yeah* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %53 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  ret i32 %56
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.yeah* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @min(i32, i8*) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
