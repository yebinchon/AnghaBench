; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-mdio.h_cvmx_mdio_45_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-mdio.h_cvmx_mdio_45_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_smix_cmd = type { i8*, [8 x i8] }
%union.cvmx_smix_wr_dat = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@OCTEON_FEATURE_MDIO_CLAUSE_45 = common dso_local global i32 0, align 4
@MDIO_CLAUSE_45_ADDRESS = common dso_local global i32 0, align 4
@MDIO_CLAUSE_45_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @cvmx_mdio_45_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_mdio_45_write(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.cvmx_smix_cmd, align 8
  %13 = alloca %union.cvmx_smix_wr_dat, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 1000, i32* %14, align 4
  %15 = load i32, i32* @OCTEON_FEATURE_MDIO_CLAUSE_45, align 4
  %16 = call i32 @octeon_has_feature(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %114

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @__cvmx_mdio_set_clause45_mode(i32 %20)
  %22 = bitcast %union.cvmx_smix_wr_dat* %13 to i8**
  store i8* null, i8** %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = bitcast %union.cvmx_smix_wr_dat* %13 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @CVMX_SMIX_WR_DAT(i32 %26)
  %28 = bitcast %union.cvmx_smix_wr_dat* %13 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @cvmx_write_csr(i32 %27, i8* %29)
  %31 = bitcast %union.cvmx_smix_cmd* %12 to i8**
  store i8* null, i8** %31, align 8
  %32 = load i32, i32* @MDIO_CLAUSE_45_ADDRESS, align 4
  %33 = bitcast %union.cvmx_smix_cmd* %12 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = bitcast %union.cvmx_smix_cmd* %12 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = bitcast %union.cvmx_smix_cmd* %12 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @CVMX_SMIX_CMD(i32 %41)
  %43 = bitcast %union.cvmx_smix_cmd* %12 to i8**
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @cvmx_write_csr(i32 %42, i8* %44)
  br label %46

46:                                               ; preds = %61, %19
  %47 = call i32 @cvmx_wait(i32 1000)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @CVMX_SMIX_WR_DAT(i32 %48)
  %50 = call i8* @cvmx_read_csr(i32 %49)
  %51 = bitcast %union.cvmx_smix_wr_dat* %13 to i8**
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %46
  %53 = bitcast %union.cvmx_smix_wr_dat* %13 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i1 [ false, %52 ], [ %60, %57 ]
  br i1 %62, label %46, label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %14, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %114

67:                                               ; preds = %63
  %68 = bitcast %union.cvmx_smix_wr_dat* %13 to i8**
  store i8* null, i8** %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = bitcast %union.cvmx_smix_wr_dat* %13 to %struct.TYPE_4__*
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @CVMX_SMIX_WR_DAT(i32 %72)
  %74 = bitcast %union.cvmx_smix_wr_dat* %13 to i8**
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @cvmx_write_csr(i32 %73, i8* %75)
  %77 = bitcast %union.cvmx_smix_cmd* %12 to i8**
  store i8* null, i8** %77, align 8
  %78 = load i32, i32* @MDIO_CLAUSE_45_WRITE, align 4
  %79 = bitcast %union.cvmx_smix_cmd* %12 to %struct.TYPE_3__*
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = bitcast %union.cvmx_smix_cmd* %12 to %struct.TYPE_3__*
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = bitcast %union.cvmx_smix_cmd* %12 to %struct.TYPE_3__*
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @CVMX_SMIX_CMD(i32 %87)
  %89 = bitcast %union.cvmx_smix_cmd* %12 to i8**
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @cvmx_write_csr(i32 %88, i8* %90)
  br label %92

92:                                               ; preds = %107, %67
  %93 = call i32 @cvmx_wait(i32 1000)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @CVMX_SMIX_WR_DAT(i32 %94)
  %96 = call i8* @cvmx_read_csr(i32 %95)
  %97 = bitcast %union.cvmx_smix_wr_dat* %13 to i8**
  store i8* %96, i8** %97, align 8
  br label %98

98:                                               ; preds = %92
  %99 = bitcast %union.cvmx_smix_wr_dat* %13 to %struct.TYPE_4__*
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br label %107

107:                                              ; preds = %103, %98
  %108 = phi i1 [ false, %98 ], [ %106, %103 ]
  br i1 %108, label %92, label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %14, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 -1, i32* %6, align 4
  br label %114

113:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %112, %66, %18
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @octeon_has_feature(i32) #1

declare dso_local i32 @__cvmx_mdio_set_clause45_mode(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_SMIX_WR_DAT(i32) #1

declare dso_local i32 @CVMX_SMIX_CMD(i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
