; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.c_cvmx_pko_initialize_global.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.c_cvmx_pko_initialize_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pko_reg_cmd_buf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CVMX_FPA_OUTPUT_BUFFER_POOL = common dso_local global i32 0, align 4
@CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE = common dso_local global i32 0, align 4
@CVMX_PKO_REG_CMD_BUF = common dso_local global i32 0, align 4
@CVMX_PKO_MAX_OUTPUT_QUEUES = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID = common dso_local global i32 0, align 4
@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@CVMX_PKO_REG_QUEUE_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_pko_initialize_global() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_pko_reg_cmd_buf, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 8, i32* %2, align 4
  %7 = bitcast %union.cvmx_pko_reg_cmd_buf* %3 to i32*
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @CVMX_FPA_OUTPUT_BUFFER_POOL, align 4
  %9 = bitcast %union.cvmx_pko_reg_cmd_buf* %3 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, align 4
  %12 = sdiv i32 %11, 8
  %13 = sub nsw i32 %12, 1
  %14 = bitcast %union.cvmx_pko_reg_cmd_buf* %3 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @CVMX_PKO_REG_CMD_BUF, align 4
  %17 = bitcast %union.cvmx_pko_reg_cmd_buf* %3 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cvmx_write_csr(i32 %16, i32 %18)
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %28, %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @CVMX_PKO_MAX_OUTPUT_QUEUES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* @CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @cvmx_pko_config_port(i32 %25, i32 %26, i32 1, i32* %2)
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %20

31:                                               ; preds = %20
  %32 = load i32, i32* @OCTEON_CN38XX, align 4
  %33 = call i64 @OCTEON_IS_MODEL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @OCTEON_CN58XX, align 4
  %37 = call i64 @OCTEON_IS_MODEL(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @OCTEON_CN56XX, align 4
  %41 = call i64 @OCTEON_IS_MODEL(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @OCTEON_CN52XX, align 4
  %45 = call i64 @OCTEON_IS_MODEL(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %43, %39, %35, %31
  %48 = call i32 (...) @cvmx_helper_get_number_of_interfaces()
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @cvmx_helper_get_last_ipd_port(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @cvmx_pko_get_base_queue(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @cvmx_pko_get_num_queues(i32 %54)
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @OCTEON_CN38XX, align 4
  %58 = call i64 @OCTEON_IS_MODEL(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = icmp sle i32 %61, 32
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @CVMX_PKO_REG_QUEUE_MODE, align 4
  %65 = call i32 @cvmx_write_csr(i32 %64, i32 2)
  br label %73

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = icmp sle i32 %67, 64
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @CVMX_PKO_REG_QUEUE_MODE, align 4
  %71 = call i32 @cvmx_write_csr(i32 %70, i32 1)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %63
  br label %88

74:                                               ; preds = %47
  %75 = load i32, i32* %6, align 4
  %76 = icmp sle i32 %75, 64
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @CVMX_PKO_REG_QUEUE_MODE, align 4
  %79 = call i32 @cvmx_write_csr(i32 %78, i32 2)
  br label %87

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = icmp sle i32 %81, 128
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @CVMX_PKO_REG_QUEUE_MODE, align 4
  %85 = call i32 @cvmx_write_csr(i32 %84, i32 1)
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %77
  br label %88

88:                                               ; preds = %87, %73
  br label %89

89:                                               ; preds = %88, %43
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @cvmx_pko_config_port(i32, i32, i32, i32*) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_helper_get_number_of_interfaces(...) #1

declare dso_local i32 @cvmx_helper_get_last_ipd_port(i32) #1

declare dso_local i32 @cvmx_pko_get_base_queue(i32) #1

declare dso_local i32 @cvmx_pko_get_num_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
