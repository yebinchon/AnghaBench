; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c_rds_ib_free_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c_rds_ib_free_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i64, i32, i32, %struct.rds_ib_device* }
%struct.rds_ib_device = type { %struct.rds_ib_mr_pool* }
%struct.rds_ib_mr_pool = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"RDS/IB: free_mr nents %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_free_mr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_ib_mr*, align 8
  %6 = alloca %struct.rds_ib_device*, align 8
  %7 = alloca %struct.rds_ib_mr_pool*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.rds_ib_mr*
  store %struct.rds_ib_mr* %9, %struct.rds_ib_mr** %5, align 8
  %10 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %11 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %10, i32 0, i32 3
  %12 = load %struct.rds_ib_device*, %struct.rds_ib_device** %11, align 8
  store %struct.rds_ib_device* %12, %struct.rds_ib_device** %6, align 8
  %13 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %14 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %13, i32 0, i32 0
  %15 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %14, align 8
  store %struct.rds_ib_mr_pool* %15, %struct.rds_ib_mr_pool** %7, align 8
  %16 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %17 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rdsdebug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %21 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %24 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %22, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %30 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %29, i32 0, i32 2
  %31 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %32 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %31, i32 0, i32 6
  %33 = call i32 @llist_add(i32* %30, i32* %32)
  br label %40

34:                                               ; preds = %2
  %35 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %36 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %35, i32 0, i32 2
  %37 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %38 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %37, i32 0, i32 5
  %39 = call i32 @llist_add(i32* %36, i32* %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %42 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %45 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %44, i32 0, i32 4
  %46 = call i32 @atomic_add(i32 %43, i32* %45)
  %47 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %48 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %47, i32 0, i32 3
  %49 = call i32 @atomic_inc(i32* %48)
  %50 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %51 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %50, i32 0, i32 4
  %52 = call i32 @atomic_read(i32* %51)
  %53 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %54 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %40
  %58 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %59 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %58, i32 0, i32 3
  %60 = call i32 @atomic_read(i32* %59)
  %61 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %62 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 10
  %65 = icmp sge i32 %60, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %57, %40
  %67 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %68 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %67, i32 0, i32 2
  %69 = call i32 @schedule_delayed_work(i32* %68, i32 10)
  br label %70

70:                                               ; preds = %66, %57
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = call i32 (...) @in_interrupt()
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %82 = call i32 @rds_ib_flush_mr_pool(%struct.rds_ib_mr_pool* %81, i32 0, i32* null)
  br label %87

83:                                               ; preds = %73
  %84 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  %85 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %84, i32 0, i32 2
  %86 = call i32 @schedule_delayed_work(i32* %85, i32 10)
  br label %87

87:                                               ; preds = %83, %80
  br label %88

88:                                               ; preds = %87, %70
  %89 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %90 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %89)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, i32) #1

declare dso_local i32 @llist_add(i32*, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @rds_ib_flush_mr_pool(%struct.rds_ib_mr_pool*, i32, i32*) #1

declare dso_local i32 @rds_ib_dev_put(%struct.rds_ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
