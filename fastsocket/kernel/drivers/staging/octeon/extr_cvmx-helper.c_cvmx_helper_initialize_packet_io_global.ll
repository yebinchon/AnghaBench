; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_initialize_packet_io_global.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_initialize_packet_io_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_l2c_cfg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%union.cvmx_smix_en = type { i8* }
%struct.TYPE_4__ = type { i32 }

@OCTEON_CN52XX_PASS1_0 = common dso_local global i32 0, align 4
@CVMX_L2C_CFG = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Interface %d has %d ports (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_initialize_packet_io_global() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_l2c_cfg, align 8
  %4 = alloca %union.cvmx_smix_en, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 (...) @cvmx_helper_get_number_of_interfaces()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @OCTEON_CN52XX_PASS1_0, align 4
  %8 = call i64 @OCTEON_IS_MODEL(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32 1)
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @CVMX_L2C_CFG, align 4
  %14 = call i8* @cvmx_read_csr(i32 %13)
  %15 = bitcast %union.cvmx_l2c_cfg* %3 to i8**
  store i8* %14, i8** %15, align 8
  %16 = bitcast %union.cvmx_l2c_cfg* %3 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = bitcast %union.cvmx_l2c_cfg* %3 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @CVMX_L2C_CFG, align 4
  %21 = bitcast %union.cvmx_l2c_cfg* %3 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @cvmx_write_csr(i32 %20, i8* %22)
  %24 = call i32 @CVMX_SMIX_EN(i32 0)
  %25 = call i8* @cvmx_read_csr(i32 %24)
  %26 = bitcast %union.cvmx_smix_en* %4 to i8**
  store i8* %25, i8** %26, align 8
  %27 = bitcast %union.cvmx_smix_en* %4 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %12
  %32 = bitcast %union.cvmx_smix_en* %4 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = call i32 @CVMX_SMIX_EN(i32 0)
  %35 = bitcast %union.cvmx_smix_en* %4 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @cvmx_write_csr(i32 %34, i8* %36)
  br label %38

38:                                               ; preds = %31, %12
  %39 = load i32, i32* @OCTEON_CN3XXX, align 4
  %40 = call i64 @OCTEON_IS_MODEL(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @OCTEON_CN58XX, align 4
  %44 = call i64 @OCTEON_IS_MODEL(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @OCTEON_CN50XX, align 4
  %48 = call i64 @OCTEON_IS_MODEL(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = call i32 @CVMX_SMIX_EN(i32 1)
  %52 = call i8* @cvmx_read_csr(i32 %51)
  %53 = bitcast %union.cvmx_smix_en* %4 to i8**
  store i8* %52, i8** %53, align 8
  %54 = bitcast %union.cvmx_smix_en* %4 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %50
  %59 = bitcast %union.cvmx_smix_en* %4 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = call i32 @CVMX_SMIX_EN(i32 1)
  %62 = bitcast %union.cvmx_smix_en* %4 to i8**
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @cvmx_write_csr(i32 %61, i8* %63)
  br label %65

65:                                               ; preds = %58, %50
  br label %66

66:                                               ; preds = %65, %46, %42, %38
  %67 = call i32 (...) @cvmx_pko_initialize_global()
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %97, %66
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %68
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @cvmx_helper_interface_probe(i32 %73)
  %75 = load i32, i32* %1, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* %2, align 4
  %78 = call i64 @cvmx_helper_ports_on_interface(i32 %77)
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  %83 = call i64 @cvmx_helper_ports_on_interface(i32 %82)
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @cvmx_helper_interface_get_mode(i32 %84)
  %86 = call i32 @cvmx_helper_interface_mode_to_string(i32 %85)
  %87 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %81, i64 %83, i32 %86)
  br label %88

88:                                               ; preds = %80, %72
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @__cvmx_helper_interface_setup_ipd(i32 %89)
  %91 = load i32, i32* %1, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @__cvmx_helper_interface_setup_pko(i32 %93)
  %95 = load i32, i32* %1, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %1, align 4
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  br label %68

100:                                              ; preds = %68
  %101 = call i32 (...) @__cvmx_helper_global_setup_ipd()
  %102 = load i32, i32* %1, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %1, align 4
  %104 = call i32 (...) @__cvmx_helper_global_setup_pko()
  %105 = load i32, i32* %1, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %1, align 4
  %107 = call i32 (...) @__cvmx_helper_global_setup_backpressure()
  %108 = load i32, i32* %1, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* %1, align 4
  ret i32 %110
}

declare dso_local i32 @cvmx_helper_get_number_of_interfaces(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_SMIX_EN(i32) #1

declare dso_local i32 @cvmx_pko_initialize_global(...) #1

declare dso_local i32 @cvmx_helper_interface_probe(i32) #1

declare dso_local i64 @cvmx_helper_ports_on_interface(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, i64, i32) #1

declare dso_local i32 @cvmx_helper_interface_mode_to_string(i32) #1

declare dso_local i32 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @__cvmx_helper_interface_setup_ipd(i32) #1

declare dso_local i32 @__cvmx_helper_interface_setup_pko(i32) #1

declare dso_local i32 @__cvmx_helper_global_setup_ipd(...) #1

declare dso_local i32 @__cvmx_helper_global_setup_pko(...) #1

declare dso_local i32 @__cvmx_helper_global_setup_backpressure(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
