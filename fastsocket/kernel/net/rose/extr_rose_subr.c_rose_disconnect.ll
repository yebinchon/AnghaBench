; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_subr.c_rose_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_subr.c_rose_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32, i32 }
%struct.rose_sock = type { i32, i32, i32, i64 }

@ROSE_STATE_0 = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rose_disconnect(%struct.sock* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rose_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.rose_sock* @rose_sk(%struct.sock* %10)
  store %struct.rose_sock* %11, %struct.rose_sock** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call i32 @rose_stop_timer(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call i32 @rose_stop_idletimer(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call i32 @rose_clear_queues(%struct.sock* %16)
  %18 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %19 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @ROSE_STATE_0, align 4
  %21 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %22 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %28 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %35 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* @TCP_CLOSE, align 4
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @SEND_SHUTDOWN, align 4
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = load i32, i32* @SOCK_DEAD, align 4
  %50 = call i32 @sock_flag(%struct.sock* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %36
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  %55 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %54, align 8
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = call i32 %55(%struct.sock* %56)
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = load i32, i32* @SOCK_DEAD, align 4
  %60 = call i32 @sock_set_flag(%struct.sock* %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %36
  ret void
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @rose_stop_timer(%struct.sock*) #1

declare dso_local i32 @rose_stop_idletimer(%struct.sock*) #1

declare dso_local i32 @rose_clear_queues(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
