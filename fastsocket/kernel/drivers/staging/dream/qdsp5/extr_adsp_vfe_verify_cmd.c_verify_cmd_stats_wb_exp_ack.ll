; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_vfe_verify_cmd.c_verify_cmd_stats_wb_exp_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_vfe_verify_cmd.c_verify_cmd_stats_wb_exp_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32 }
%struct.TYPE_2__ = type { i32 }

@awb_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_adsp_module*, i8*, i64)* @verify_cmd_stats_wb_exp_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_cmd_stats_wb_exp_ack(%struct.msm_adsp_module* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_adsp_module*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8**, align 8
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to i8**
  store i8** %14, i8*** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load i8**, i8*** %9, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %5, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = load i32, i32* @awb_size, align 4
  %26 = call i64 @adsp_pmem_fixup(%struct.msm_adsp_module* %23, i8** %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %30

29:                                               ; preds = %22, %18
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28, %17
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @adsp_pmem_fixup(%struct.msm_adsp_module*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
