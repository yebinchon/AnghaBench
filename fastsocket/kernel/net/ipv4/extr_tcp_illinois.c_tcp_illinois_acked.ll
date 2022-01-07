; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_illinois.c_tcp_illinois_acked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_illinois.c_tcp_illinois_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.illinois = type { i64, i64, i32, i32, i32 }

@RTT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i64)* @tcp_illinois_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_illinois_acked(%struct.sock* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.illinois*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.illinois* @inet_csk_ca(%struct.sock* %8)
  store %struct.illinois* %9, %struct.illinois** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.illinois*, %struct.illinois** %7, align 8
  %12 = getelementptr inbounds %struct.illinois, %struct.illinois* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %54

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @RTT_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @RTT_MAX, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load %struct.illinois*, %struct.illinois** %7, align 8
  %24 = getelementptr inbounds %struct.illinois, %struct.illinois* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.illinois*, %struct.illinois** %7, align 8
  %31 = getelementptr inbounds %struct.illinois, %struct.illinois* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.illinois*, %struct.illinois** %7, align 8
  %34 = getelementptr inbounds %struct.illinois, %struct.illinois* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.illinois*, %struct.illinois** %7, align 8
  %41 = getelementptr inbounds %struct.illinois, %struct.illinois* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.illinois*, %struct.illinois** %7, align 8
  %44 = getelementptr inbounds %struct.illinois, %struct.illinois* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.illinois*, %struct.illinois** %7, align 8
  %49 = getelementptr inbounds %struct.illinois, %struct.illinois* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  br label %54

54:                                               ; preds = %42, %15
  ret void
}

declare dso_local %struct.illinois* @inet_csk_ca(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
