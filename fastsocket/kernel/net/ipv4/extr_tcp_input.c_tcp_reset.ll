; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }

@ECONNREFUSED = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_reset(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %15 [
    i32 128, label %6
    i32 129, label %10
    i32 130, label %14
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @ECONNREFUSED, align 4
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @EPIPE, align 4
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  br label %19

14:                                               ; preds = %1
  br label %34

15:                                               ; preds = %1
  %16 = load i32, i32* @ECONNRESET, align 4
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %10, %6
  %20 = call i32 (...) @smp_wmb()
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = load i32, i32* @SOCK_DEAD, align 4
  %23 = call i32 @sock_flag(%struct.sock* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  %28 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %27, align 8
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i32 %28(%struct.sock* %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = call i32 @tcp_done(%struct.sock* %32)
  br label %34

34:                                               ; preds = %31, %14
  ret void
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
