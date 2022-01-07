; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_in.c_rose_state1_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_in.c_rose_state1_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { i32* }
%struct.rose_sock = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ROSE_STATE_3 = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@ROSE_CLEAR_CONFIRMATION = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @rose_state1_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_state1_machine(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rose_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.rose_sock* @rose_sk(%struct.sock* %8)
  store %struct.rose_sock* %9, %struct.rose_sock** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %66 [
    i32 129, label %11
    i32 128, label %43
  ]

11:                                               ; preds = %3
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @rose_stop_timer(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @rose_start_idletimer(%struct.sock* %14)
  %16 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %17 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %19 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %18, i32 0, i32 6
  store i32 0, i32* %19, align 8
  %20 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %21 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %20, i32 0, i32 5
  store i32 0, i32* %21, align 4
  %22 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %23 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %22, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %25 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @ROSE_STATE_3, align 4
  %27 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %28 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @TCP_ESTABLISHED, align 4
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = load i32, i32* @SOCK_DEAD, align 4
  %34 = call i32 @sock_flag(%struct.sock* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %11
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %38, align 8
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 %39(%struct.sock* %40)
  br label %42

42:                                               ; preds = %36, %11
  br label %67

43:                                               ; preds = %3
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = load i32, i32* @ROSE_CLEAR_CONFIRMATION, align 4
  %46 = call i32 @rose_write_internal(%struct.sock* %44, i32 %45)
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = load i32, i32* @ECONNREFUSED, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rose_disconnect(%struct.sock* %47, i32 %48, i32 %53, i32 %58)
  %60 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %61 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  br label %67

66:                                               ; preds = %3
  br label %67

67:                                               ; preds = %66, %43, %42
  ret i32 0
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @rose_stop_timer(%struct.sock*) #1

declare dso_local i32 @rose_start_idletimer(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_disconnect(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
