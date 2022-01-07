; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_in.c_rose_process_rx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_in.c_rose_process_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rose_sock = type { i32 }

@ROSE_STATE_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rose_process_rx_frame(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rose_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.rose_sock* @rose_sk(%struct.sock* %14)
  store %struct.rose_sock* %15, %struct.rose_sock** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %17 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ROSE_STATE_0, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @rose_decode(%struct.sk_buff* %23, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %26 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %58 [
    i32 132, label %28
    i32 131, label %33
    i32 130, label %38
    i32 129, label %48
    i32 128, label %53
  ]

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @rose_state1_machine(%struct.sock* %29, %struct.sk_buff* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %58

33:                                               ; preds = %22
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @rose_state2_machine(%struct.sock* %34, %struct.sk_buff* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %58

38:                                               ; preds = %22
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @rose_state3_machine(%struct.sock* %39, %struct.sk_buff* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %58

48:                                               ; preds = %22
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @rose_state4_machine(%struct.sock* %49, %struct.sk_buff* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %58

53:                                               ; preds = %22
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @rose_state5_machine(%struct.sock* %54, %struct.sk_buff* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %22, %53, %48, %38, %33, %28
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = call i32 @rose_kick(%struct.sock* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %21
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @rose_decode(%struct.sk_buff*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @rose_state1_machine(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @rose_state2_machine(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @rose_state3_machine(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rose_state4_machine(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @rose_state5_machine(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @rose_kick(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
