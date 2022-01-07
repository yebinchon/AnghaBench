; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_recv_cache_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_recv_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.rds_ib_refill_cache = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.rds_ib_refill_cache*)* @rds_ib_recv_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @rds_ib_recv_cache_get(%struct.rds_ib_refill_cache* %0) #0 {
  %2 = alloca %struct.rds_ib_refill_cache*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.rds_ib_refill_cache* %0, %struct.rds_ib_refill_cache** %2, align 8
  %4 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %2, align 8
  %5 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %4, i32 0, i32 0
  %6 = load %struct.list_head*, %struct.list_head** %5, align 8
  store %struct.list_head* %6, %struct.list_head** %3, align 8
  %7 = load %struct.list_head*, %struct.list_head** %3, align 8
  %8 = icmp ne %struct.list_head* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.list_head*, %struct.list_head** %3, align 8
  %11 = call i32 @list_empty(%struct.list_head* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load %struct.list_head*, %struct.list_head** %3, align 8
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i32 0, i32 0
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8
  %17 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %2, align 8
  %18 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %17, i32 0, i32 0
  store %struct.list_head* %16, %struct.list_head** %18, align 8
  %19 = load %struct.list_head*, %struct.list_head** %3, align 8
  %20 = call i32 @list_del_init(%struct.list_head* %19)
  br label %24

21:                                               ; preds = %9
  %22 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %2, align 8
  %23 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %22, i32 0, i32 0
  store %struct.list_head* null, %struct.list_head** %23, align 8
  br label %24

24:                                               ; preds = %21, %13
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.list_head*, %struct.list_head** %3, align 8
  ret %struct.list_head* %26
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_del_init(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
