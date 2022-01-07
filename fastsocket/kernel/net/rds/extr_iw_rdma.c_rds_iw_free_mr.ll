; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_free_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_free_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_mr = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.rds_iw_mr_pool* }
%struct.rds_iw_mr_pool = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"RDS/IW: free_mr nents %u\0A\00", align 1
@rds_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_iw_free_mr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_iw_mr*, align 8
  %6 = alloca %struct.rds_iw_mr_pool*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rds_iw_mr*
  store %struct.rds_iw_mr* %8, %struct.rds_iw_mr** %5, align 8
  %9 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %10 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %12, align 8
  store %struct.rds_iw_mr_pool* %13, %struct.rds_iw_mr_pool** %6, align 8
  %14 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %15 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rdsdebug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %6, align 8
  %21 = icmp ne %struct.rds_iw_mr_pool* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %67

23:                                               ; preds = %2
  %24 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %6, align 8
  %25 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %26 = call i32 @rds_iw_free_fastreg(%struct.rds_iw_mr_pool* %24, %struct.rds_iw_mr* %25)
  %27 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %6, align 8
  %28 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %27, i32 0, i32 4
  %29 = call i32 @atomic_read(i32* %28)
  %30 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %6, align 8
  %31 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %23
  %35 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %6, align 8
  %36 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %35, i32 0, i32 3
  %37 = call i32 @atomic_read(i32* %36)
  %38 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %6, align 8
  %39 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 10
  %42 = icmp sge i32 %37, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34, %23
  %44 = load i32, i32* @rds_wq, align 4
  %45 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %6, align 8
  %46 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %45, i32 0, i32 2
  %47 = call i32 @queue_work(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %34
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = call i32 (...) @in_interrupt()
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %6, align 8
  %60 = call i32 @rds_iw_flush_mr_pool(%struct.rds_iw_mr_pool* %59, i32 0)
  br label %66

61:                                               ; preds = %51
  %62 = load i32, i32* @rds_wq, align 4
  %63 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %6, align 8
  %64 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %63, i32 0, i32 2
  %65 = call i32 @queue_work(i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %22, %66, %48
  ret void
}

declare dso_local i32 @rdsdebug(i8*, i32) #1

declare dso_local i32 @rds_iw_free_fastreg(%struct.rds_iw_mr_pool*, %struct.rds_iw_mr*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @rds_iw_flush_mr_pool(%struct.rds_iw_mr_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
