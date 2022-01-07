; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_try_rmem_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_try_rmem_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @tcp_try_rmem_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_try_rmem_schedule(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sock*, %struct.sock** %4, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 1
  %8 = call i64 @atomic_read(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @sk_rmem_schedule(%struct.sock* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call i64 @tcp_prune_queue(%struct.sock* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %42

23:                                               ; preds = %18
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @sk_rmem_schedule(%struct.sock* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 @tcp_prune_ofo_queue(%struct.sock* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %42

33:                                               ; preds = %28
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @sk_rmem_schedule(%struct.sock* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %42

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40, %13
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38, %32, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sk_rmem_schedule(%struct.sock*, i32) #1

declare dso_local i64 @tcp_prune_queue(%struct.sock*) #1

declare dso_local i32 @tcp_prune_ofo_queue(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
