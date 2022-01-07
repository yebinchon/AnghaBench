; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_wake_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_wake_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32 }

@SOCK_ASYNC_WAITDATA = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGURG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_wake_async(%struct.socket* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.socket*, %struct.socket** %5, align 8
  %9 = icmp ne %struct.socket* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %3
  store i32 -1, i32* %4, align 4
  br label %50

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %49 [
    i32 128, label %18
    i32 130, label %26
    i32 131, label %34
    i32 129, label %42
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @SOCK_ASYNC_WAITDATA, align 4
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 1
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %49

25:                                               ; preds = %18
  br label %35

26:                                               ; preds = %16
  %27 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 1
  %30 = call i32 @test_and_clear_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %49

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %16, %33
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SIGIO, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @__kill_fasync(i32 %38, i32 %39, i32 %40)
  br label %49

42:                                               ; preds = %16
  %43 = load %struct.socket*, %struct.socket** %5, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SIGURG, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @__kill_fasync(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %16, %35, %32, %24
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @__kill_fasync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
