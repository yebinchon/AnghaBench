; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_loop.c_rds_loop_conn_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_loop.c_rds_loop_conn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_loop_connection* }
%struct.rds_loop_connection = type { i32, %struct.rds_connection* }

@ENOMEM = common dso_local global i32 0, align 4
@loop_conns_lock = common dso_local global i32 0, align 4
@loop_conns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*, i32)* @rds_loop_conn_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_loop_conn_alloc(%struct.rds_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_loop_connection*, align 8
  %7 = alloca i64, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.rds_loop_connection* @kzalloc(i32 16, i32 %8)
  store %struct.rds_loop_connection* %9, %struct.rds_loop_connection** %6, align 8
  %10 = load %struct.rds_loop_connection*, %struct.rds_loop_connection** %6, align 8
  %11 = icmp ne %struct.rds_loop_connection* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.rds_loop_connection*, %struct.rds_loop_connection** %6, align 8
  %17 = getelementptr inbounds %struct.rds_loop_connection, %struct.rds_loop_connection* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %20 = load %struct.rds_loop_connection*, %struct.rds_loop_connection** %6, align 8
  %21 = getelementptr inbounds %struct.rds_loop_connection, %struct.rds_loop_connection* %20, i32 0, i32 1
  store %struct.rds_connection* %19, %struct.rds_connection** %21, align 8
  %22 = load %struct.rds_loop_connection*, %struct.rds_loop_connection** %6, align 8
  %23 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %24 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %23, i32 0, i32 0
  store %struct.rds_loop_connection* %22, %struct.rds_loop_connection** %24, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @loop_conns_lock, i64 %25)
  %27 = load %struct.rds_loop_connection*, %struct.rds_loop_connection** %6, align 8
  %28 = getelementptr inbounds %struct.rds_loop_connection, %struct.rds_loop_connection* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %28, i32* @loop_conns)
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @loop_conns_lock, i64 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %15, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.rds_loop_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
