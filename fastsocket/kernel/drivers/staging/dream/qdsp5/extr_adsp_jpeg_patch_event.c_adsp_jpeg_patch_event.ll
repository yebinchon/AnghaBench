; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_jpeg_patch_event.c_adsp_jpeg_patch_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_jpeg_patch_event.c_adsp_jpeg_patch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32 }
%struct.adsp_event = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@JPEG_MSG_ENC_OP_PRODUCED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adsp_jpeg_patch_event(%struct.msm_adsp_module* %0, %struct.adsp_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_adsp_module*, align 8
  %5 = alloca %struct.adsp_event*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %4, align 8
  store %struct.adsp_event* %1, %struct.adsp_event** %5, align 8
  %7 = load %struct.adsp_event*, %struct.adsp_event** %5, align 8
  %8 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @JPEG_MSG_ENC_OP_PRODUCED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.adsp_event*, %struct.adsp_event** %5, align 8
  %14 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  %18 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to i8**
  %22 = call i32 @adsp_pmem_paddr_fixup(%struct.msm_adsp_module* %18, i8** %21)
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @adsp_pmem_paddr_fixup(%struct.msm_adsp_module*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
