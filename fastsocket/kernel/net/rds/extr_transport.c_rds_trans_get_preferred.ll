; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_transport.c_rds_trans_get_preferred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_transport.c_rds_trans_get_preferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_transport = type { i64 (i32)*, i32 }

@rds_loop_transport = common dso_local global %struct.rds_transport zeroinitializer, align 8
@rds_trans_sem = common dso_local global i32 0, align 4
@RDS_TRANS_COUNT = common dso_local global i32 0, align 4
@transports = common dso_local global %struct.rds_transport** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_transport* @rds_trans_get_preferred(i32 %0) #0 {
  %2 = alloca %struct.rds_transport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_transport*, align 8
  %5 = alloca %struct.rds_transport*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.rds_transport* null, %struct.rds_transport** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ntohl(i32 %7)
  %9 = call i64 @IN_LOOPBACK(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.rds_transport* @rds_loop_transport, %struct.rds_transport** %2, align 8
  br label %53

12:                                               ; preds = %1
  %13 = call i32 @down_read(i32* @rds_trans_sem)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %47, %12
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RDS_TRANS_COUNT, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load %struct.rds_transport**, %struct.rds_transport*** @transports, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.rds_transport*, %struct.rds_transport** %19, i64 %21
  %23 = load %struct.rds_transport*, %struct.rds_transport** %22, align 8
  store %struct.rds_transport* %23, %struct.rds_transport** %5, align 8
  %24 = load %struct.rds_transport*, %struct.rds_transport** %5, align 8
  %25 = icmp ne %struct.rds_transport* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %18
  %27 = load %struct.rds_transport*, %struct.rds_transport** %5, align 8
  %28 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %27, i32 0, i32 0
  %29 = load i64 (i32)*, i64 (i32)** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i64 %29(i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.rds_transport*, %struct.rds_transport** %5, align 8
  %35 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.rds_transport*, %struct.rds_transport** %5, align 8
  %40 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @try_module_get(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %33
  %45 = load %struct.rds_transport*, %struct.rds_transport** %5, align 8
  store %struct.rds_transport* %45, %struct.rds_transport** %4, align 8
  br label %50

46:                                               ; preds = %38, %26, %18
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %14

50:                                               ; preds = %44, %14
  %51 = call i32 @up_read(i32* @rds_trans_sem)
  %52 = load %struct.rds_transport*, %struct.rds_transport** %4, align 8
  store %struct.rds_transport* %52, %struct.rds_transport** %2, align 8
  br label %53

53:                                               ; preds = %50, %11
  %54 = load %struct.rds_transport*, %struct.rds_transport** %2, align 8
  ret %struct.rds_transport* %54
}

declare dso_local i64 @IN_LOOPBACK(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
