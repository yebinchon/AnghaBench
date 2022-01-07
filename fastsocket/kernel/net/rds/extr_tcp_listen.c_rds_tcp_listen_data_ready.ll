; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_listen.c_rds_tcp_listen_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_listen.c_rds_tcp_listen_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, {}*, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"listen data ready sk %p\0A\00", align 1
@TCP_LISTEN = common dso_local global i64 0, align 8
@rds_wq = common dso_local global i32 0, align 4
@rds_tcp_listen_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_listen_data_ready(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca void (%struct.sock*, i32)*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call i32 @rdsdebug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 3
  %10 = call i32 @read_lock(i32* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to void (%struct.sock*, i32)**
  %14 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %13, align 8
  store void (%struct.sock*, i32)* %14, void (%struct.sock*, i32)** %5, align 8
  %15 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %5, align 8
  %16 = icmp ne void (%struct.sock*, i32)* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  %20 = bitcast {}** %19 to void (%struct.sock*, i32)**
  %21 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %20, align 8
  store void (%struct.sock*, i32)* %21, void (%struct.sock*, i32)** %5, align 8
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCP_LISTEN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @rds_wq, align 4
  %30 = call i32 @queue_work(i32 %29, i32* @rds_tcp_listen_work)
  br label %31

31:                                               ; preds = %28, %22
  br label %32

32:                                               ; preds = %31, %17
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 3
  %35 = call i32 @read_unlock(i32* %34)
  %36 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %5, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = load i32, i32* %4, align 4
  call void %36(%struct.sock* %37, i32 %38)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.sock*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
