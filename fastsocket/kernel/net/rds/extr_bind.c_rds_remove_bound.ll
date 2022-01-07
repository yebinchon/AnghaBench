; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_bind.c_rds_remove_bound.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_bind.c_rds_remove_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i64, i32, i32 }

@rds_bind_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"rs %p unbinding from %pI4:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_remove_bound(%struct.rds_sock* %0) #0 {
  %2 = alloca %struct.rds_sock*, align 8
  %3 = alloca i64, align 8
  store %struct.rds_sock* %0, %struct.rds_sock** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @rds_bind_lock, i64 %4)
  %6 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %7 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %12 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %13 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %12, i32 0, i32 0
  %14 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %15 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohs(i32 %16)
  %18 = call i32 @rdsdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.rds_sock* %11, i64* %13, i32 %17)
  %19 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %20 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %19, i32 0, i32 1
  %21 = call i32 @hlist_del_init_rcu(i32* %20)
  %22 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %23 = call i32 @rds_sock_put(%struct.rds_sock* %22)
  %24 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %25 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %10, %1
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @rds_bind_lock, i64 %27)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_sock*, i64*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @rds_sock_put(%struct.rds_sock*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
