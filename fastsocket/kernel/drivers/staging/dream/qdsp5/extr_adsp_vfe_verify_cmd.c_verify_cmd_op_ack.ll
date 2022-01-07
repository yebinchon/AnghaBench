; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_vfe_verify_cmd.c_verify_cmd_op_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_vfe_verify_cmd.c_verify_cmd_op_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@size1_y = common dso_local global i32 0, align 4
@size1_cbcr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_adsp_module*, i8*, i64)* @verify_cmd_op_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_cmd_op_ack(%struct.msm_adsp_module* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_adsp_module*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = bitcast i32* %14 to i8**
  store i8** %15, i8*** %9, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to i8**
  store i8** %18, i8*** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

22:                                               ; preds = %3
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %5, align 8
  %28 = load i8**, i8*** %9, align 8
  %29 = load i32, i32* @size1_y, align 4
  %30 = call i64 @adsp_pmem_fixup(%struct.msm_adsp_module* %27, i8** %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %26, %22
  %33 = load i8**, i8*** %10, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %5, align 8
  %38 = load i8**, i8*** %10, align 8
  %39 = load i32, i32* @size1_cbcr, align 4
  %40 = call i64 @adsp_pmem_fixup(%struct.msm_adsp_module* %37, i8** %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %26
  store i32 -1, i32* %4, align 4
  br label %44

43:                                               ; preds = %36, %32
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42, %21
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @adsp_pmem_fixup(%struct.msm_adsp_module*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
