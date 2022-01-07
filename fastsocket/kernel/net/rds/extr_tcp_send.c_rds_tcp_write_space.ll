; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_send.c_rds_tcp_write_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_send.c_rds_tcp_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, i32, %struct.TYPE_2__*, i32, i32, %struct.rds_connection* }
%struct.TYPE_2__ = type { i32 }
%struct.rds_connection = type { i32, %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { {}*, %struct.rds_tcp_connection* }

@.str = private unnamed_addr constant [23 x i8] c"write_space for tc %p\0A\00", align 1
@s_tcp_write_space_calls = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"tcp una %u\0A\00", align 1
@rds_tcp_is_acked = common dso_local global i32 0, align 4
@rds_wq = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca void (%struct.sock*)*, align 8
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 3
  %8 = call i32 @read_lock(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 5
  %11 = load %struct.rds_connection*, %struct.rds_connection** %10, align 8
  store %struct.rds_connection* %11, %struct.rds_connection** %4, align 8
  %12 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %13 = icmp ne %struct.rds_connection* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to void (%struct.sock*)**
  %18 = load void (%struct.sock*)*, void (%struct.sock*)** %17, align 8
  store void (%struct.sock*)* %18, void (%struct.sock*)** %3, align 8
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %21 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %20, i32 0, i32 1
  %22 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %21, align 8
  store %struct.rds_tcp_connection* %22, %struct.rds_tcp_connection** %5, align 8
  %23 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %24 = call i32 @rdsdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.rds_tcp_connection* %23)
  %25 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %26 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to void (%struct.sock*)**
  %28 = load void (%struct.sock*)*, void (%struct.sock*)** %27, align 8
  store void (%struct.sock*)* %28, void (%struct.sock*)** %3, align 8
  %29 = load i32, i32* @s_tcp_write_space_calls, align 4
  %30 = call i32 @rds_tcp_stats_inc(i32 %29)
  %31 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %32 = call %struct.rds_tcp_connection* @rds_tcp_snd_una(%struct.rds_tcp_connection* %31)
  %33 = call i32 @rdsdebug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.rds_tcp_connection* %32)
  %34 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %35 = call %struct.rds_tcp_connection* @rds_tcp_snd_una(%struct.rds_tcp_connection* %34)
  %36 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %37 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %36, i32 0, i32 1
  store %struct.rds_tcp_connection* %35, %struct.rds_tcp_connection** %37, align 8
  %38 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %39 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %40 = call %struct.rds_tcp_connection* @rds_tcp_snd_una(%struct.rds_tcp_connection* %39)
  %41 = load i32, i32* @rds_tcp_is_acked, align 4
  %42 = call i32 @rds_send_drop_acked(%struct.rds_connection* %38, %struct.rds_tcp_connection* %40, i32 %41)
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 4
  %45 = call i32 @atomic_read(i32* %44)
  %46 = shl i32 %45, 1
  %47 = load %struct.sock*, %struct.sock** %2, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sle i32 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %19
  %52 = load i32, i32* @rds_wq, align 4
  %53 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %54 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %53, i32 0, i32 0
  %55 = call i32 @queue_delayed_work(i32 %52, i32* %54, i32 0)
  br label %56

56:                                               ; preds = %51, %19
  br label %57

57:                                               ; preds = %56, %14
  %58 = load %struct.sock*, %struct.sock** %2, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 3
  %60 = call i32 @read_unlock(i32* %59)
  %61 = load void (%struct.sock*)*, void (%struct.sock*)** %3, align 8
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  call void %61(%struct.sock* %62)
  %63 = load %struct.sock*, %struct.sock** %2, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp ne %struct.TYPE_2__* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i32, i32* @SOCK_NOSPACE, align 4
  %69 = load %struct.sock*, %struct.sock** %2, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @set_bit(i32 %68, i32* %72)
  br label %74

74:                                               ; preds = %67, %57
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_tcp_connection*) #1

declare dso_local i32 @rds_tcp_stats_inc(i32) #1

declare dso_local %struct.rds_tcp_connection* @rds_tcp_snd_una(%struct.rds_tcp_connection*) #1

declare dso_local i32 @rds_send_drop_acked(%struct.rds_connection*, %struct.rds_tcp_connection*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
