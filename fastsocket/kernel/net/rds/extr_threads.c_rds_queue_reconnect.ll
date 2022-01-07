; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_threads.c_rds_queue_reconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_threads.c_rds_queue_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"conn %p for %pI4 to %pI4 reconnect jiffies %lu\0A\00", align 1
@RDS_RECONNECT_PENDING = common dso_local global i32 0, align 4
@rds_sysctl_reconnect_min_jiffies = common dso_local global i64 0, align 8
@rds_wq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%lu delay %lu ceil conn %p for %pI4 -> %pI4\0A\00", align 1
@rds_sysctl_reconnect_max_jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_queue_reconnect(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  %3 = alloca i64, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %4 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %5 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %6 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %5, i32 0, i32 3
  %7 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %8 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %7, i32 0, i32 2
  %9 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %10 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %4, i32* %6, i32* %8, i64 %11)
  %13 = load i32, i32* @RDS_RECONNECT_PENDING, align 4
  %14 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %15 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %14, i32 0, i32 4
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %18 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i64, i64* @rds_sysctl_reconnect_min_jiffies, align 8
  %23 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %24 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @rds_wq, align 4
  %26 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %27 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %26, i32 0, i32 1
  %28 = call i32 @queue_delayed_work(i32 %25, i32* %27, i64 0)
  br label %63

29:                                               ; preds = %1
  %30 = call i32 @get_random_bytes(i64* %3, i32 8)
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %33 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = urem i64 %31, %34
  %36 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %37 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %40 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %41 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %40, i32 0, i32 3
  %42 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %43 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %42, i32 0, i32 2
  %44 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64 %38, %struct.rds_connection* %39, i32* %41, i32* %43)
  %45 = load i32, i32* @rds_wq, align 4
  %46 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %47 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %46, i32 0, i32 1
  %48 = load i64, i64* %3, align 8
  %49 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %50 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = urem i64 %48, %51
  %53 = call i32 @queue_delayed_work(i32 %45, i32* %47, i64 %52)
  %54 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %55 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %56, 2
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @rds_sysctl_reconnect_max_jiffies, align 4
  %60 = call i64 @min(i32 %58, i32 %59)
  %61 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %62 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %29, %21
  ret void
}

declare dso_local i32 @rdsdebug(i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @get_random_bytes(i64*, i32) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
