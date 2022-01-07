; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_destroy_fastreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_destroy_fastreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_mr_pool = type { i32 }
%struct.rds_iw_mr = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_iw_mr_pool*, %struct.rds_iw_mr*)* @rds_iw_destroy_fastreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_destroy_fastreg(%struct.rds_iw_mr_pool* %0, %struct.rds_iw_mr* %1) #0 {
  %3 = alloca %struct.rds_iw_mr_pool*, align 8
  %4 = alloca %struct.rds_iw_mr*, align 8
  store %struct.rds_iw_mr_pool* %0, %struct.rds_iw_mr_pool** %3, align 8
  store %struct.rds_iw_mr* %1, %struct.rds_iw_mr** %4, align 8
  %5 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %4, align 8
  %6 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %4, align 8
  %11 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @ib_free_fast_reg_page_list(i64 %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %4, align 8
  %16 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %4, align 8
  %21 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ib_dereg_mr(i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @ib_free_fast_reg_page_list(i64) #1

declare dso_local i32 @ib_dereg_mr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
