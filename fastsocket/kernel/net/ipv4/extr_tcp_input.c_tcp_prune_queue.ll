; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_prune_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_prune_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 }
%struct.tcp_sock = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"prune_queue: c=%x\0A\00", align 1
@LINUX_MIB_PRUNECALLED = common dso_local global i32 0, align 4
@tcp_memory_pressure = common dso_local global i64 0, align 8
@LINUX_MIB_RCVPRUNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_prune_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_prune_queue(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %9 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @SOCK_DEBUG(%struct.sock* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @sock_net(%struct.sock* %12)
  %14 = load i32, i32* @LINUX_MIB_PRUNECALLED, align 4
  %15 = call i32 @NET_INC_STATS_BH(i32 %13, i32 %14)
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 1
  %18 = call i64 @atomic_read(i32* %17)
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @tcp_clamp_window(%struct.sock* %24)
  br label %41

26:                                               ; preds = %1
  %27 = load i64, i64* @tcp_memory_pressure, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul i32 4, %35
  %37 = call i32 @min(i32 %32, i32 %36)
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %29, %26
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call i32 @tcp_collapse_ofo_queue(%struct.sock* %42)
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 2
  %46 = call i32 @skb_queue_empty(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %41
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 2
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 2
  %54 = call i32 @skb_peek(i32* %53)
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @tcp_collapse(%struct.sock* %49, i32* %51, i32 %54, i32* null, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %48, %41
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = call i32 @sk_mem_reclaim(%struct.sock* %63)
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 1
  %67 = call i64 @atomic_read(i32* %66)
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %91

73:                                               ; preds = %62
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = call i32 @tcp_prune_ofo_queue(%struct.sock* %74)
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 1
  %78 = call i64 @atomic_read(i32* %77)
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %91

84:                                               ; preds = %73
  %85 = load %struct.sock*, %struct.sock** %3, align 8
  %86 = call i32 @sock_net(%struct.sock* %85)
  %87 = load i32, i32* @LINUX_MIB_RCVPRUNED, align 4
  %88 = call i32 @NET_INC_STATS_BH(i32 %86, i32 %87)
  %89 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %90 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  store i32 -1, i32* %2, align 4
  br label %91

91:                                               ; preds = %84, %83, %72
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*, i32) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @tcp_clamp_window(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tcp_collapse_ofo_queue(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @tcp_collapse(%struct.sock*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @skb_peek(i32*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i32 @tcp_prune_ofo_queue(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
