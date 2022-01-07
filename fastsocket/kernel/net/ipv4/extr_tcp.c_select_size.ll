; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_select_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_select_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@MAX_TCP_HEADER = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @select_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_size(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %3, align 8
  %8 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %9 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NETIF_F_SG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = call i64 @sk_can_gso(%struct.sock* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %40

22:                                               ; preds = %17
  %23 = load i32, i32* @MAX_TCP_HEADER, align 4
  %24 = call i32 @SKB_MAX_HEAD(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %30, %34
  %36 = icmp sle i32 %29, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %28, %22
  br label %40

40:                                               ; preds = %39, %21
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @sk_can_gso(%struct.sock*) #1

declare dso_local i32 @SKB_MAX_HEAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
