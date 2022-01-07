; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_free_fastreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_free_fastreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_mr_pool = type { i32, i32, i32, i32 }
%struct.rds_iw_mr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_iw_mr_pool*, %struct.rds_iw_mr*)* @rds_iw_free_fastreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_free_fastreg(%struct.rds_iw_mr_pool* %0, %struct.rds_iw_mr* %1) #0 {
  %3 = alloca %struct.rds_iw_mr_pool*, align 8
  %4 = alloca %struct.rds_iw_mr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rds_iw_mr_pool* %0, %struct.rds_iw_mr_pool** %3, align 8
  store %struct.rds_iw_mr* %1, %struct.rds_iw_mr** %4, align 8
  %7 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %4, align 8
  %8 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %4, align 8
  %16 = call i32 @rds_iw_rdma_fastreg_inv(%struct.rds_iw_mr* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %46

20:                                               ; preds = %14
  %21 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %3, align 8
  %22 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %4, align 8
  %26 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %3, align 8
  %29 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %28, i32 0, i32 3
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %4, align 8
  %32 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %3, align 8
  %37 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %36, i32 0, i32 2
  %38 = call i32 @atomic_add(i32 %35, i32* %37)
  %39 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %3, align 8
  %40 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %39, i32 0, i32 1
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %3, align 8
  %43 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %20, %19, %13
  ret void
}

declare dso_local i32 @rds_iw_rdma_fastreg_inv(%struct.rds_iw_mr*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
