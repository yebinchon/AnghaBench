; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-mdio.h_cvmx_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-mdio.h_cvmx_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_smix_cmd = type { i64, [8 x i8] }
%union.cvmx_smix_rd_dat = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@OCTEON_FEATURE_MDIO_CLAUSE_45 = common dso_local global i32 0, align 4
@MDIO_CLAUSE_22_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cvmx_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_mdio_read(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.cvmx_smix_cmd, align 8
  %9 = alloca %union.cvmx_smix_rd_dat, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1000, i32* %10, align 4
  %11 = load i32, i32* @OCTEON_FEATURE_MDIO_CLAUSE_45, align 4
  %12 = call i64 @octeon_has_feature(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @__cvmx_mdio_set_clause22_mode(i32 %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = bitcast %union.cvmx_smix_cmd* %8 to i64*
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @MDIO_CLAUSE_22_READ, align 4
  %20 = bitcast %union.cvmx_smix_cmd* %8 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = bitcast %union.cvmx_smix_cmd* %8 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = bitcast %union.cvmx_smix_cmd* %8 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @CVMX_SMIX_CMD(i32 %28)
  %30 = bitcast %union.cvmx_smix_cmd* %8 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @cvmx_write_csr(i32 %29, i64 %31)
  br label %33

33:                                               ; preds = %48, %17
  %34 = call i32 @cvmx_wait(i32 1000)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @CVMX_SMIX_RD_DAT(i32 %35)
  %37 = call i32 @cvmx_read_csr(i32 %36)
  %38 = bitcast %union.cvmx_smix_rd_dat* %9 to i32*
  store i32 %37, i32* %38, align 8
  br label %39

39:                                               ; preds = %33
  %40 = bitcast %union.cvmx_smix_rd_dat* %9 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %10, align 4
  %47 = icmp ne i32 %45, 0
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi i1 [ false, %39 ], [ %47, %44 ]
  br i1 %49, label %33, label %50

50:                                               ; preds = %48
  %51 = bitcast %union.cvmx_smix_rd_dat* %9 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = bitcast %union.cvmx_smix_rd_dat* %9 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %50
  store i32 -1, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @__cvmx_mdio_set_clause22_mode(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_SMIX_CMD(i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SMIX_RD_DAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
