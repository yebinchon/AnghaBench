; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_subr.c_x25_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_subr.c_x25_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32, i32 }
%struct.x25_sock = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i8, i8 }

@X25_STATE_0 = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_disconnect(%struct.sock* %0, i32 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.x25_sock* @x25_sk(%struct.sock* %10)
  store %struct.x25_sock* %11, %struct.x25_sock** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call i32 @x25_clear_queues(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call i32 @x25_stop_timer(%struct.sock* %14)
  %16 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %17 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @X25_STATE_0, align 4
  %19 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %20 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i8, i8* %7, align 1
  %22 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %23 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8 %21, i8* %24, align 8
  %25 = load i8, i8* %8, align 1
  %26 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %27 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i8 %25, i8* %28, align 1
  %29 = load i32, i32* @TCP_CLOSE, align 4
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @SEND_SHUTDOWN, align 4
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = load i32, i32* @SOCK_DEAD, align 4
  %42 = call i32 @sock_flag(%struct.sock* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %4
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  %47 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %46, align 8
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = call i32 %47(%struct.sock* %48)
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = load i32, i32* @SOCK_DEAD, align 4
  %52 = call i32 @sock_set_flag(%struct.sock* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %4
  ret void
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_clear_queues(%struct.sock*) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
