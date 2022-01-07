; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_atomic_send_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_atomic_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_message = type { i32, %struct.rds_sock*, i32, %struct.rm_atomic_op }
%struct.rds_sock = type { i32, i32 }
%struct.rm_atomic_op = type { %struct.rds_notifier*, i64, i64 }
%struct.rds_notifier = type { i32, i32 }

@RDS_MSG_ON_SOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_atomic_send_complete(%struct.rds_message* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_message*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_sock*, align 8
  %6 = alloca %struct.rm_atomic_op*, align 8
  %7 = alloca %struct.rds_notifier*, align 8
  %8 = alloca i64, align 8
  store %struct.rds_message* %0, %struct.rds_message** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.rds_sock* null, %struct.rds_sock** %5, align 8
  %9 = load %struct.rds_message*, %struct.rds_message** %3, align 8
  %10 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %9, i32 0, i32 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.rds_message*, %struct.rds_message** %3, align 8
  %14 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %13, i32 0, i32 3
  store %struct.rm_atomic_op* %14, %struct.rm_atomic_op** %6, align 8
  %15 = load i32, i32* @RDS_MSG_ON_SOCK, align 4
  %16 = load %struct.rds_message*, %struct.rds_message** %3, align 8
  %17 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %2
  %21 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %6, align 8
  %22 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %6, align 8
  %27 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %6, align 8
  %32 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %31, i32 0, i32 0
  %33 = load %struct.rds_notifier*, %struct.rds_notifier** %32, align 8
  %34 = icmp ne %struct.rds_notifier* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %6, align 8
  %37 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %36, i32 0, i32 0
  %38 = load %struct.rds_notifier*, %struct.rds_notifier** %37, align 8
  store %struct.rds_notifier* %38, %struct.rds_notifier** %7, align 8
  %39 = load %struct.rds_message*, %struct.rds_message** %3, align 8
  %40 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %39, i32 0, i32 1
  %41 = load %struct.rds_sock*, %struct.rds_sock** %40, align 8
  store %struct.rds_sock* %41, %struct.rds_sock** %5, align 8
  %42 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %43 = call i32 @rds_rs_to_sk(%struct.rds_sock* %42)
  %44 = call i32 @sock_hold(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.rds_notifier*, %struct.rds_notifier** %7, align 8
  %47 = getelementptr inbounds %struct.rds_notifier, %struct.rds_notifier* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %49 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.rds_notifier*, %struct.rds_notifier** %7, align 8
  %52 = getelementptr inbounds %struct.rds_notifier, %struct.rds_notifier* %51, i32 0, i32 1
  %53 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %54 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %53, i32 0, i32 1
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  %56 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %57 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %6, align 8
  %60 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %59, i32 0, i32 0
  store %struct.rds_notifier* null, %struct.rds_notifier** %60, align 8
  br label %61

61:                                               ; preds = %35, %30, %25, %20, %2
  %62 = load %struct.rds_message*, %struct.rds_message** %3, align 8
  %63 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %62, i32 0, i32 0
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %67 = icmp ne %struct.rds_sock* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %70 = call i32 @rds_wake_sk_sleep(%struct.rds_sock* %69)
  %71 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %72 = call i32 @rds_rs_to_sk(%struct.rds_sock* %71)
  %73 = call i32 @sock_put(i32 %72)
  br label %74

74:                                               ; preds = %68, %61
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sock_hold(i32) #1

declare dso_local i32 @rds_rs_to_sk(%struct.rds_sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rds_wake_sk_sleep(%struct.rds_sock*) #1

declare dso_local i32 @sock_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
