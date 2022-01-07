; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_subr.c_nr_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_subr.c_nr_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NR_STATE_0 = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_disconnect(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call i32 @nr_stop_t1timer(%struct.sock* %5)
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @nr_stop_t2timer(%struct.sock* %7)
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @nr_stop_t4timer(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @nr_stop_idletimer(%struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i32 @nr_clear_queues(%struct.sock* %13)
  %15 = load i32, i32* @NR_STATE_0, align 4
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call %struct.TYPE_2__* @nr_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @TCP_CLOSE, align 4
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @SEND_SHUTDOWN, align 4
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load i32, i32* @SOCK_DEAD, align 4
  %32 = call i32 @sock_flag(%struct.sock* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %2
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %36, align 8
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = call i32 %37(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = load i32, i32* @SOCK_DEAD, align 4
  %42 = call i32 @sock_set_flag(%struct.sock* %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @nr_stop_t1timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_t2timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_t4timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_idletimer(%struct.sock*) #1

declare dso_local i32 @nr_clear_queues(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @nr_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
