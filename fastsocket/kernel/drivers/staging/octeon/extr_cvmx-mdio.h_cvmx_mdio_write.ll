; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-mdio.h_cvmx_mdio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-mdio.h_cvmx_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_smix_cmd = type { i64, [8 x i8] }
%union.cvmx_smix_wr_dat = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@OCTEON_FEATURE_MDIO_CLAUSE_45 = common dso_local global i32 0, align 4
@MDIO_CLAUSE_22_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @cvmx_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_mdio_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.cvmx_smix_cmd, align 8
  %11 = alloca %union.cvmx_smix_wr_dat, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1000, i32* %12, align 4
  %13 = load i32, i32* @OCTEON_FEATURE_MDIO_CLAUSE_45, align 4
  %14 = call i64 @octeon_has_feature(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @__cvmx_mdio_set_clause22_mode(i32 %17)
  br label %19

19:                                               ; preds = %16, %4
  %20 = bitcast %union.cvmx_smix_wr_dat* %11 to i64*
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = bitcast %union.cvmx_smix_wr_dat* %11 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @CVMX_SMIX_WR_DAT(i32 %24)
  %26 = bitcast %union.cvmx_smix_wr_dat* %11 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @cvmx_write_csr(i32 %25, i64 %27)
  %29 = bitcast %union.cvmx_smix_cmd* %10 to i64*
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @MDIO_CLAUSE_22_WRITE, align 4
  %31 = bitcast %union.cvmx_smix_cmd* %10 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = bitcast %union.cvmx_smix_cmd* %10 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = bitcast %union.cvmx_smix_cmd* %10 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @CVMX_SMIX_CMD(i32 %39)
  %41 = bitcast %union.cvmx_smix_cmd* %10 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @cvmx_write_csr(i32 %40, i64 %42)
  br label %44

44:                                               ; preds = %59, %19
  %45 = call i32 @cvmx_wait(i32 1000)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @CVMX_SMIX_WR_DAT(i32 %46)
  %48 = call i64 @cvmx_read_csr(i32 %47)
  %49 = bitcast %union.cvmx_smix_wr_dat* %11 to i64*
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %44
  %51 = bitcast %union.cvmx_smix_wr_dat* %11 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i1 [ false, %50 ], [ %58, %55 ]
  br i1 %60, label %44, label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %12, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %66

65:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @__cvmx_mdio_set_clause22_mode(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_SMIX_WR_DAT(i32) #1

declare dso_local i32 @CVMX_SMIX_CMD(i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
