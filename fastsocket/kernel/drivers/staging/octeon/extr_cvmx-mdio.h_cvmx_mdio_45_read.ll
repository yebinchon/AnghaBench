; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-mdio.h_cvmx_mdio_45_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-mdio.h_cvmx_mdio_45_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_smix_cmd = type { i8*, [8 x i8] }
%union.cvmx_smix_rd_dat = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64 }
%union.cvmx_smix_wr_dat = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@OCTEON_FEATURE_MDIO_CLAUSE_45 = common dso_local global i32 0, align 4
@MDIO_CLAUSE_45_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"cvmx_mdio_45_read: bus_id %d phy_id %2d device %2d register %2d   TIME OUT(address)\0A\00", align 1
@MDIO_CLAUSE_45_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"cvmx_mdio_45_read: bus_id %d phy_id %2d device %2d register %2d   TIME OUT(data)\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"cvmx_mdio_45_read: bus_id %d phy_id %2d device %2d register %2d   INVALID READ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @cvmx_mdio_45_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_mdio_45_read(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.cvmx_smix_cmd, align 8
  %11 = alloca %union.cvmx_smix_rd_dat, align 8
  %12 = alloca %union.cvmx_smix_wr_dat, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1000, i32* %13, align 4
  %14 = load i32, i32* @OCTEON_FEATURE_MDIO_CLAUSE_45, align 4
  %15 = call i32 @octeon_has_feature(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %128

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @__cvmx_mdio_set_clause45_mode(i32 %19)
  %21 = bitcast %union.cvmx_smix_wr_dat* %12 to i8**
  store i8* null, i8** %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = bitcast %union.cvmx_smix_wr_dat* %12 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @CVMX_SMIX_WR_DAT(i32 %25)
  %27 = bitcast %union.cvmx_smix_wr_dat* %12 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @cvmx_write_csr(i32 %26, i8* %28)
  %30 = bitcast %union.cvmx_smix_cmd* %10 to i8**
  store i8* null, i8** %30, align 8
  %31 = load i32, i32* @MDIO_CLAUSE_45_ADDRESS, align 4
  %32 = bitcast %union.cvmx_smix_cmd* %10 to %struct.TYPE_5__*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = bitcast %union.cvmx_smix_cmd* %10 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = bitcast %union.cvmx_smix_cmd* %10 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @CVMX_SMIX_CMD(i32 %40)
  %42 = bitcast %union.cvmx_smix_cmd* %10 to i8**
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @cvmx_write_csr(i32 %41, i8* %43)
  br label %45

45:                                               ; preds = %60, %18
  %46 = call i32 @cvmx_wait(i32 1000)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @CVMX_SMIX_WR_DAT(i32 %47)
  %49 = call i8* @cvmx_read_csr(i32 %48)
  %50 = bitcast %union.cvmx_smix_wr_dat* %12 to i8**
  store i8* %49, i8** %50, align 8
  br label %51

51:                                               ; preds = %45
  %52 = bitcast %union.cvmx_smix_wr_dat* %12 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi i1 [ false, %51 ], [ %59, %56 ]
  br i1 %61, label %45, label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %13, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 -1, i32* %5, align 4
  br label %128

71:                                               ; preds = %62
  %72 = bitcast %union.cvmx_smix_cmd* %10 to i8**
  store i8* null, i8** %72, align 8
  %73 = load i32, i32* @MDIO_CLAUSE_45_READ, align 4
  %74 = bitcast %union.cvmx_smix_cmd* %10 to %struct.TYPE_5__*
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = bitcast %union.cvmx_smix_cmd* %10 to %struct.TYPE_5__*
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = bitcast %union.cvmx_smix_cmd* %10 to %struct.TYPE_5__*
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @CVMX_SMIX_CMD(i32 %82)
  %84 = bitcast %union.cvmx_smix_cmd* %10 to i8**
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @cvmx_write_csr(i32 %83, i8* %85)
  br label %87

87:                                               ; preds = %102, %71
  %88 = call i32 @cvmx_wait(i32 1000)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @CVMX_SMIX_RD_DAT(i32 %89)
  %91 = call i8* @cvmx_read_csr(i32 %90)
  %92 = bitcast %union.cvmx_smix_rd_dat* %11 to i8**
  store i8* %91, i8** %92, align 8
  br label %93

93:                                               ; preds = %87
  %94 = bitcast %union.cvmx_smix_rd_dat* %11 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %98, %93
  %103 = phi i1 [ false, %93 ], [ %101, %98 ]
  br i1 %103, label %87, label %104

104:                                              ; preds = %102
  %105 = load i32, i32* %13, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109, i32 %110, i32 %111)
  store i32 -1, i32* %5, align 4
  br label %128

113:                                              ; preds = %104
  %114 = bitcast %union.cvmx_smix_rd_dat* %11 to %struct.TYPE_6__*
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = bitcast %union.cvmx_smix_rd_dat* %11 to %struct.TYPE_6__*
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %5, align 4
  br label %128

122:                                              ; preds = %113
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %124, i32 %125, i32 %126)
  store i32 -1, i32* %5, align 4
  br label %128

128:                                              ; preds = %122, %118, %107, %65, %17
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @octeon_has_feature(i32) #1

declare dso_local i32 @__cvmx_mdio_set_clause45_mode(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_SMIX_WR_DAT(i32) #1

declare dso_local i32 @CVMX_SMIX_CMD(i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @CVMX_SMIX_RD_DAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
