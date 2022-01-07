; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_try_undo_partial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_try_undo_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"Hoe\00", align 1
@LINUX_MIB_TCPPARTIALUNDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @tcp_try_undo_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_try_undo_partial(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %10 = call i64 @tcp_is_reno(%struct.tcp_sock* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %14 = call i64 @tcp_fackets_out(%struct.tcp_sock* %13)
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi i1 [ true, %2 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %23 = call i64 @tcp_may_undo(%struct.tcp_sock* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %32 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %36 = call i64 @tcp_fackets_out(%struct.tcp_sock* %35)
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @tcp_update_reordering(%struct.sock* %34, i64 %39, i32 1)
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call i32 @DBGUNDO(%struct.sock* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = call i32 @tcp_undo_cwr(%struct.sock* %43, i32 0)
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = call i32 @sock_net(%struct.sock* %45)
  %47 = load i32, i32* @LINUX_MIB_TCPPARTIALUNDO, align 4
  %48 = call i32 @NET_INC_STATS_BH(i32 %46, i32 %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %33, %19
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_is_reno(%struct.tcp_sock*) #1

declare dso_local i64 @tcp_fackets_out(%struct.tcp_sock*) #1

declare dso_local i64 @tcp_may_undo(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_update_reordering(%struct.sock*, i64, i32) #1

declare dso_local i32 @DBGUNDO(%struct.sock*, i8*) #1

declare dso_local i32 @tcp_undo_cwr(%struct.sock*, i32) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
