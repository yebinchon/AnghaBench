; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_send.c_rds_iw_send_clear_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_send.c_rds_iw_send_clear_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_connection = type { %struct.TYPE_4__, %struct.rds_iw_send_work* }
%struct.TYPE_4__ = type { i64 }
%struct.rds_iw_send_work = type { i64, i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_iw_send_clear_ring(%struct.rds_iw_connection* %0) #0 {
  %2 = alloca %struct.rds_iw_connection*, align 8
  %3 = alloca %struct.rds_iw_send_work*, align 8
  %4 = alloca i64, align 8
  store %struct.rds_iw_connection* %0, %struct.rds_iw_connection** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %6 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %5, i32 0, i32 1
  %7 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %6, align 8
  store %struct.rds_iw_send_work* %7, %struct.rds_iw_send_work** %3, align 8
  br label %8

8:                                                ; preds = %66, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %11 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %8
  %16 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %3, align 8
  %17 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %3, align 8
  %24 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ib_dereg_mr(i32 %25)
  %27 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %3, align 8
  %28 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %3, align 8
  %35 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ib_free_fast_reg_page_list(i32 %36)
  %38 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %3, align 8
  %39 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 57005
  br i1 %42, label %43, label %44

43:                                               ; preds = %15
  br label %66

44:                                               ; preds = %15
  %45 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %3, align 8
  %46 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %51 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %3, align 8
  %52 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %53 = call i32 @rds_iw_send_unmap_rm(%struct.rds_iw_connection* %50, %struct.rds_iw_send_work* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %3, align 8
  %56 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %61 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %3, align 8
  %62 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @rds_iw_send_unmap_rdma(%struct.rds_iw_connection* %60, i64 %63)
  br label %65

65:                                               ; preds = %59, %54
  br label %66

66:                                               ; preds = %65, %43
  %67 = load i64, i64* %4, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %4, align 8
  %69 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %3, align 8
  %70 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %69, i32 1
  store %struct.rds_iw_send_work* %70, %struct.rds_iw_send_work** %3, align 8
  br label %8

71:                                               ; preds = %8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ib_dereg_mr(i32) #1

declare dso_local i32 @ib_free_fast_reg_page_list(i32) #1

declare dso_local i32 @rds_iw_send_unmap_rm(%struct.rds_iw_connection*, %struct.rds_iw_send_work*, i32) #1

declare dso_local i32 @rds_iw_send_unmap_rdma(%struct.rds_iw_connection*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
