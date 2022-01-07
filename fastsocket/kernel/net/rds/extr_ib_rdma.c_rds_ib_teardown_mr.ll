; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c_rds_ib_teardown_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c_rds_ib_teardown_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i32, %struct.rds_ib_device* }
%struct.rds_ib_device = type { %struct.rds_ib_mr_pool* }
%struct.rds_ib_mr_pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_ib_mr*)* @rds_ib_teardown_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_teardown_mr(%struct.rds_ib_mr* %0) #0 {
  %2 = alloca %struct.rds_ib_mr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_ib_device*, align 8
  %5 = alloca %struct.rds_ib_mr_pool*, align 8
  store %struct.rds_ib_mr* %0, %struct.rds_ib_mr** %2, align 8
  %6 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %7 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %10 = call i32 @__rds_ib_teardown_mr(%struct.rds_ib_mr* %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %15 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %14, i32 0, i32 1
  %16 = load %struct.rds_ib_device*, %struct.rds_ib_device** %15, align 8
  store %struct.rds_ib_device* %16, %struct.rds_ib_device** %4, align 8
  %17 = load %struct.rds_ib_device*, %struct.rds_ib_device** %4, align 8
  %18 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %17, i32 0, i32 0
  %19 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %18, align 8
  store %struct.rds_ib_mr_pool* %19, %struct.rds_ib_mr_pool** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  %22 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %21, i32 0, i32 0
  %23 = call i32 @atomic_sub(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @__rds_ib_teardown_mr(%struct.rds_ib_mr*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
