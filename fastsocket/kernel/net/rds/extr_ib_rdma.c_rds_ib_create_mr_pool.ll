; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c_rds_ib_create_mr_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c_rds_ib_create_mr_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr_pool = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rds_ib_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rds_ib_mr_pool_flush_worker = common dso_local global i32 0, align 4
@fmr_message_size = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_ib_mr_pool* @rds_ib_create_mr_pool(%struct.rds_ib_device* %0) #0 {
  %2 = alloca %struct.rds_ib_mr_pool*, align 8
  %3 = alloca %struct.rds_ib_device*, align 8
  %4 = alloca %struct.rds_ib_mr_pool*, align 8
  store %struct.rds_ib_device* %0, %struct.rds_ib_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.rds_ib_mr_pool* @kzalloc(i32 48, i32 %5)
  store %struct.rds_ib_mr_pool* %6, %struct.rds_ib_mr_pool** %4, align 8
  %7 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %8 = icmp ne %struct.rds_ib_mr_pool* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.rds_ib_mr_pool* @ERR_PTR(i32 %11)
  store %struct.rds_ib_mr_pool* %12, %struct.rds_ib_mr_pool** %2, align 8
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %15 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %14, i32 0, i32 9
  %16 = call i32 @init_llist_head(i32* %15)
  %17 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %18 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %17, i32 0, i32 8
  %19 = call i32 @init_llist_head(i32* %18)
  %20 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %21 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %20, i32 0, i32 7
  %22 = call i32 @init_llist_head(i32* %21)
  %23 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %24 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %23, i32 0, i32 6
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %27 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %26, i32 0, i32 5
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %30 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %29, i32 0, i32 4
  %31 = load i32, i32* @rds_ib_mr_pool_flush_worker, align 4
  %32 = call i32 @INIT_DELAYED_WORK(i32* %30, i32 %31)
  %33 = load i32, i32* @fmr_message_size, align 4
  %34 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %35 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %38 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %41 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %45 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %48 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @fmr_message_size, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sdiv i32 %51, 4
  %53 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %54 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %56 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 3
  %59 = sdiv i32 %58, 4
  %60 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %61 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %63 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  %66 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %4, align 8
  store %struct.rds_ib_mr_pool* %67, %struct.rds_ib_mr_pool** %2, align 8
  br label %68

68:                                               ; preds = %13, %9
  %69 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %2, align 8
  ret %struct.rds_ib_mr_pool* %69
}

declare dso_local %struct.rds_ib_mr_pool* @kzalloc(i32, i32) #1

declare dso_local %struct.rds_ib_mr_pool* @ERR_PTR(i32) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
