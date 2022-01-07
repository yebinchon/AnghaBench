; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_send_pong.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_send_pong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rds_message = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, %struct.rds_connection* }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDS_MSG_ON_CONN = common dso_local global i32 0, align 4
@s_send_queued = common dso_local global i32 0, align 4
@s_send_pong = common dso_local global i32 0, align 4
@RDS_LL_SEND_FULL = common dso_local global i32 0, align 4
@rds_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_send_pong(%struct.rds_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_message*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.rds_message* @rds_message_alloc(i32 0, i32 %9)
  store %struct.rds_message* %10, %struct.rds_message** %6, align 8
  %11 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %12 = icmp ne %struct.rds_message* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %88

16:                                               ; preds = %2
  %17 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %18 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %21 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %23 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %26 = call i32 @rds_conn_connect_if_down(%struct.rds_connection* %25)
  %27 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %28 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @rds_cong_wait(i32 %29, i32 %30, i32 1, i32* null)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %88

35:                                               ; preds = %16
  %36 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %37 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %36, i32 0, i32 2
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %41 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %40, i32 0, i32 2
  %42 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %43 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %42, i32 0, i32 4
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load i32, i32* @RDS_MSG_ON_CONN, align 4
  %46 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %47 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %46, i32 0, i32 1
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %50 = call i32 @rds_message_addref(%struct.rds_message* %49)
  %51 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %52 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %53 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store %struct.rds_connection* %51, %struct.rds_connection** %54, align 8
  %55 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %56 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %60 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rds_message_populate_header(i32* %57, i32 0, i32 %58, i32 %61)
  %63 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %64 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %68 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %67, i32 0, i32 2
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* @s_send_queued, align 4
  %72 = call i32 @rds_stats_inc(i32 %71)
  %73 = load i32, i32* @s_send_pong, align 4
  %74 = call i32 @rds_stats_inc(i32 %73)
  %75 = load i32, i32* @RDS_LL_SEND_FULL, align 4
  %76 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %77 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %76, i32 0, i32 1
  %78 = call i32 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %35
  %81 = load i32, i32* @rds_wq, align 4
  %82 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %83 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %82, i32 0, i32 0
  %84 = call i32 @queue_delayed_work(i32 %81, i32* %83, i32 0)
  br label %85

85:                                               ; preds = %80, %35
  %86 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %87 = call i32 @rds_message_put(%struct.rds_message* %86)
  store i32 0, i32* %3, align 4
  br label %96

88:                                               ; preds = %34, %13
  %89 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %90 = icmp ne %struct.rds_message* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %93 = call i32 @rds_message_put(%struct.rds_message* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %85
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.rds_message* @rds_message_alloc(i32, i32) #1

declare dso_local i32 @rds_conn_connect_if_down(%struct.rds_connection*) #1

declare dso_local i32 @rds_cong_wait(i32, i32, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rds_message_addref(%struct.rds_message*) #1

declare dso_local i32 @rds_message_populate_header(i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rds_stats_inc(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @rds_message_put(%struct.rds_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
