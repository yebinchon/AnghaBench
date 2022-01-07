; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp.c_rds_tcp_conn_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp.c_rds_tcp_conn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { i32, i32, i64, i32*, i32* }

@rds_tcp_conn_slab = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rds_tcp_conn_lock = common dso_local global i32 0, align 4
@rds_tcp_conn_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"alloced tc %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*, i32)* @rds_tcp_conn_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_tcp_conn_alloc(%struct.rds_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @rds_tcp_conn_slab, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.rds_tcp_connection* @kmem_cache_alloc(i32 %7, i32 %8)
  store %struct.rds_tcp_connection* %9, %struct.rds_tcp_connection** %6, align 8
  %10 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %6, align 8
  %11 = icmp ne %struct.rds_tcp_connection* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %6, align 8
  %17 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %16, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %6, align 8
  %19 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %6, align 8
  %21 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %20, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %6, align 8
  %23 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %6, align 8
  %25 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %26 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %25, i32 0, i32 0
  store %struct.rds_tcp_connection* %24, %struct.rds_tcp_connection** %26, align 8
  %27 = call i32 @spin_lock_irq(i32* @rds_tcp_conn_lock)
  %28 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %6, align 8
  %29 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %28, i32 0, i32 1
  %30 = call i32 @list_add_tail(i32* %29, i32* @rds_tcp_conn_list)
  %31 = call i32 @spin_unlock_irq(i32* @rds_tcp_conn_lock)
  %32 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %33 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %32, i32 0, i32 0
  %34 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %33, align 8
  %35 = call i32 @rdsdebug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.rds_tcp_connection* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %15, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.rds_tcp_connection* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_tcp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
