; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_veno.c_tcp_veno_pkts_acked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_veno.c_tcp_veno_pkts_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.veno = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64, i64)* @tcp_veno_pkts_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_veno_pkts_acked(%struct.sock* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.veno*, align 8
  %8 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.veno* @inet_csk_ca(%struct.sock* %9)
  store %struct.veno* %10, %struct.veno** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %38

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.veno*, %struct.veno** %7, align 8
  %19 = getelementptr inbounds %struct.veno, %struct.veno* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.veno*, %struct.veno** %7, align 8
  %25 = getelementptr inbounds %struct.veno, %struct.veno* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %14
  %27 = load %struct.veno*, %struct.veno** %7, align 8
  %28 = getelementptr inbounds %struct.veno, %struct.veno* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @min(i32 %29, i64 %30)
  %32 = load %struct.veno*, %struct.veno** %7, align 8
  %33 = getelementptr inbounds %struct.veno, %struct.veno* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.veno*, %struct.veno** %7, align 8
  %35 = getelementptr inbounds %struct.veno, %struct.veno* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %26, %13
  ret void
}

declare dso_local %struct.veno* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
