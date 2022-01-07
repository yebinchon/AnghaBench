; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_mr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rds_iw_mr*, i32, i32 }
%struct.rds_iw_device = type { %struct.rds_iw_mr_pool* }
%struct.rds_iw_mr_pool = type { i64, i32 }

@s_iw_rdma_mr_pool_depleted = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@s_iw_rdma_mr_pool_wait = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s_iw_rdma_mr_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rds_iw_mr* (%struct.rds_iw_device*)* @rds_iw_alloc_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rds_iw_mr* @rds_iw_alloc_mr(%struct.rds_iw_device* %0) #0 {
  %2 = alloca %struct.rds_iw_mr*, align 8
  %3 = alloca %struct.rds_iw_device*, align 8
  %4 = alloca %struct.rds_iw_mr_pool*, align 8
  %5 = alloca %struct.rds_iw_mr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rds_iw_device* %0, %struct.rds_iw_device** %3, align 8
  %8 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %9 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %8, i32 0, i32 0
  %10 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %9, align 8
  store %struct.rds_iw_mr_pool* %10, %struct.rds_iw_mr_pool** %4, align 8
  store %struct.rds_iw_mr* null, %struct.rds_iw_mr** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %1, %40
  %12 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %4, align 8
  %13 = call %struct.rds_iw_mr* @rds_iw_reuse_fmr(%struct.rds_iw_mr_pool* %12)
  store %struct.rds_iw_mr* %13, %struct.rds_iw_mr** %5, align 8
  %14 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %15 = icmp ne %struct.rds_iw_mr* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  store %struct.rds_iw_mr* %17, %struct.rds_iw_mr** %2, align 8
  br label %91

18:                                               ; preds = %11
  %19 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %4, align 8
  %20 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %19, i32 0, i32 1
  %21 = call i64 @atomic_inc_return(i32* %20)
  %22 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %4, align 8
  %23 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %45

27:                                               ; preds = %18
  %28 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %4, align 8
  %29 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %28, i32 0, i32 1
  %30 = call i32 @atomic_dec(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @s_iw_rdma_mr_pool_depleted, align 4
  %36 = call i32 @rds_iw_stats_inc(i32 %35)
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.rds_iw_mr* @ERR_PTR(i32 %38)
  store %struct.rds_iw_mr* %39, %struct.rds_iw_mr** %2, align 8
  br label %91

40:                                               ; preds = %27
  %41 = load i32, i32* @s_iw_rdma_mr_pool_wait, align 4
  %42 = call i32 @rds_iw_stats_inc(i32 %41)
  %43 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %4, align 8
  %44 = call i32 @rds_iw_flush_mr_pool(%struct.rds_iw_mr_pool* %43, i32 0)
  br label %11

45:                                               ; preds = %26
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.rds_iw_mr* @kzalloc(i32 16, i32 %46)
  store %struct.rds_iw_mr* %47, %struct.rds_iw_mr** %5, align 8
  %48 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %49 = icmp ne %struct.rds_iw_mr* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %76

53:                                               ; preds = %45
  %54 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %55 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %59 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %63 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %64 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store %struct.rds_iw_mr* %62, %struct.rds_iw_mr** %65, align 8
  %66 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %4, align 8
  %67 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %68 = call i32 @rds_iw_init_fastreg(%struct.rds_iw_mr_pool* %66, %struct.rds_iw_mr* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %76

72:                                               ; preds = %53
  %73 = load i32, i32* @s_iw_rdma_mr_alloc, align 4
  %74 = call i32 @rds_iw_stats_inc(i32 %73)
  %75 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  store %struct.rds_iw_mr* %75, %struct.rds_iw_mr** %2, align 8
  br label %91

76:                                               ; preds = %71, %50
  %77 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %78 = icmp ne %struct.rds_iw_mr* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %4, align 8
  %81 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %82 = call i32 @rds_iw_destroy_fastreg(%struct.rds_iw_mr_pool* %80, %struct.rds_iw_mr* %81)
  %83 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %5, align 8
  %84 = call i32 @kfree(%struct.rds_iw_mr* %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %4, align 8
  %87 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %86, i32 0, i32 1
  %88 = call i32 @atomic_dec(i32* %87)
  %89 = load i32, i32* %6, align 4
  %90 = call %struct.rds_iw_mr* @ERR_PTR(i32 %89)
  store %struct.rds_iw_mr* %90, %struct.rds_iw_mr** %2, align 8
  br label %91

91:                                               ; preds = %85, %72, %34, %16
  %92 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %2, align 8
  ret %struct.rds_iw_mr* %92
}

declare dso_local %struct.rds_iw_mr* @rds_iw_reuse_fmr(%struct.rds_iw_mr_pool*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @rds_iw_stats_inc(i32) #1

declare dso_local %struct.rds_iw_mr* @ERR_PTR(i32) #1

declare dso_local i32 @rds_iw_flush_mr_pool(%struct.rds_iw_mr_pool*, i32) #1

declare dso_local %struct.rds_iw_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rds_iw_init_fastreg(%struct.rds_iw_mr_pool*, %struct.rds_iw_mr*) #1

declare dso_local i32 @rds_iw_destroy_fastreg(%struct.rds_iw_mr_pool*, %struct.rds_iw_mr*) #1

declare dso_local i32 @kfree(%struct.rds_iw_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
