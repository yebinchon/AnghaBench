; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sock_wait_for_wmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sock_wait_for_wmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i64)* @sock_wait_for_wmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sock_wait_for_wmem(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @clear_bit(i32 %7, i32* %11)
  br label %13

13:                                               ; preds = %56, %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %59

17:                                               ; preds = %13
  %18 = load i32, i32* @current, align 4
  %19 = call i64 @signal_pending(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %59

22:                                               ; preds = %17
  %23 = load i32, i32* @SOCK_NOSPACE, align 4
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @set_bit(i32 %23, i32* %27)
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %33 = call i32 @prepare_to_wait(i32 %31, i32* @wait, i32 %32)
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 4
  %36 = call i64 @atomic_read(i32* %35)
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %59

42:                                               ; preds = %22
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SEND_SHUTDOWN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %59

50:                                               ; preds = %42
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @schedule_timeout(i64 %57)
  store i64 %58, i64* %4, align 8
  br label %13

59:                                               ; preds = %55, %49, %41, %21, %16
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @finish_wait(i32 %62, i32* @wait)
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
