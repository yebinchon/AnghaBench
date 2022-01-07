; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_recv_cache_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_recv_cache_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.rds_ib_refill_cache = type { i32, i32 }
%struct.rds_ib_cache_head = type { i64, %struct.list_head* }

@RDS_IB_RECYCLE_BATCH_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.rds_ib_refill_cache*)* @rds_ib_recv_cache_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_recv_cache_put(%struct.list_head* %0, %struct.rds_ib_refill_cache* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.rds_ib_refill_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rds_ib_cache_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.rds_ib_refill_cache* %1, %struct.rds_ib_refill_cache** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %11 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (...) @smp_processor_id()
  %14 = call %struct.rds_ib_cache_head* @per_cpu_ptr(i32 %12, i32 %13)
  store %struct.rds_ib_cache_head* %14, %struct.rds_ib_cache_head** %6, align 8
  %15 = load %struct.rds_ib_cache_head*, %struct.rds_ib_cache_head** %6, align 8
  %16 = getelementptr inbounds %struct.rds_ib_cache_head, %struct.rds_ib_cache_head* %15, i32 0, i32 1
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8
  %18 = icmp ne %struct.list_head* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.list_head*, %struct.list_head** %3, align 8
  %21 = call i32 @INIT_LIST_HEAD(%struct.list_head* %20)
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.list_head*, %struct.list_head** %3, align 8
  %24 = load %struct.rds_ib_cache_head*, %struct.rds_ib_cache_head** %6, align 8
  %25 = getelementptr inbounds %struct.rds_ib_cache_head, %struct.rds_ib_cache_head* %24, i32 0, i32 1
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8
  %27 = call i32 @list_add_tail(%struct.list_head* %23, %struct.list_head* %26)
  br label %28

28:                                               ; preds = %22, %19
  %29 = load %struct.list_head*, %struct.list_head** %3, align 8
  %30 = load %struct.rds_ib_cache_head*, %struct.rds_ib_cache_head** %6, align 8
  %31 = getelementptr inbounds %struct.rds_ib_cache_head, %struct.rds_ib_cache_head* %30, i32 0, i32 1
  store %struct.list_head* %29, %struct.list_head** %31, align 8
  %32 = load %struct.rds_ib_cache_head*, %struct.rds_ib_cache_head** %6, align 8
  %33 = getelementptr inbounds %struct.rds_ib_cache_head, %struct.rds_ib_cache_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.rds_ib_cache_head*, %struct.rds_ib_cache_head** %6, align 8
  %37 = getelementptr inbounds %struct.rds_ib_cache_head, %struct.rds_ib_cache_head* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RDS_IB_RECYCLE_BATCH_COUNT, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %70

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %62, %42
  %44 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %45 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %44, i32 0, i32 0
  %46 = call %struct.list_head* @xchg(i32* %45, i32* null)
  store %struct.list_head* %46, %struct.list_head** %7, align 8
  %47 = load %struct.list_head*, %struct.list_head** %7, align 8
  %48 = icmp ne %struct.list_head* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.list_head*, %struct.list_head** %7, align 8
  %51 = load %struct.rds_ib_cache_head*, %struct.rds_ib_cache_head** %6, align 8
  %52 = getelementptr inbounds %struct.rds_ib_cache_head, %struct.rds_ib_cache_head* %51, i32 0, i32 1
  %53 = load %struct.list_head*, %struct.list_head** %52, align 8
  %54 = call i32 @list_splice_entire_tail(%struct.list_head* %50, %struct.list_head* %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %57 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %56, i32 0, i32 0
  %58 = load %struct.rds_ib_cache_head*, %struct.rds_ib_cache_head** %6, align 8
  %59 = getelementptr inbounds %struct.rds_ib_cache_head, %struct.rds_ib_cache_head* %58, i32 0, i32 1
  %60 = load %struct.list_head*, %struct.list_head** %59, align 8
  %61 = call %struct.list_head* @cmpxchg(i32* %57, i32* null, %struct.list_head* %60)
  store %struct.list_head* %61, %struct.list_head** %7, align 8
  br label %62

62:                                               ; preds = %55
  %63 = load %struct.list_head*, %struct.list_head** %7, align 8
  %64 = icmp ne %struct.list_head* %63, null
  br i1 %64, label %43, label %65

65:                                               ; preds = %62
  %66 = load %struct.rds_ib_cache_head*, %struct.rds_ib_cache_head** %6, align 8
  %67 = getelementptr inbounds %struct.rds_ib_cache_head, %struct.rds_ib_cache_head* %66, i32 0, i32 1
  store %struct.list_head* null, %struct.list_head** %67, align 8
  %68 = load %struct.rds_ib_cache_head*, %struct.rds_ib_cache_head** %6, align 8
  %69 = getelementptr inbounds %struct.rds_ib_cache_head, %struct.rds_ib_cache_head* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %41
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @local_irq_restore(i64 %71)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.rds_ib_cache_head* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, %struct.list_head*) #1

declare dso_local %struct.list_head* @xchg(i32*, i32*) #1

declare dso_local i32 @list_splice_entire_tail(%struct.list_head*, %struct.list_head*) #1

declare dso_local %struct.list_head* @cmpxchg(i32*, i32*, %struct.list_head*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
