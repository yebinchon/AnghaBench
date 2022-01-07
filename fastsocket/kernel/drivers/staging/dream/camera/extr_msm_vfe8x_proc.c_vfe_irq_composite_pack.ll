; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_irq_composite_pack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_irq_composite_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_irq_composite_mask_config = type { i32, i32, i32 }
%struct.VFE_Irq_Composite_MaskType = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @vfe_irq_composite_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_irq_composite_pack(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.vfe_irq_composite_mask_config, align 4
  %4 = alloca { i64, i32 }, align 4
  %5 = alloca %struct.VFE_Irq_Composite_MaskType, align 4
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %1, i32* %7, align 4
  %8 = bitcast %struct.vfe_irq_composite_mask_config* %3 to i8*
  %9 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = call i32 @memset(%struct.VFE_Irq_Composite_MaskType* %5, i32 0, i32 12)
  %11 = getelementptr inbounds %struct.vfe_irq_composite_mask_config, %struct.vfe_irq_composite_mask_config* %3, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.VFE_Irq_Composite_MaskType, %struct.VFE_Irq_Composite_MaskType* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.vfe_irq_composite_mask_config, %struct.vfe_irq_composite_mask_config* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.VFE_Irq_Composite_MaskType, %struct.VFE_Irq_Composite_MaskType* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.vfe_irq_composite_mask_config, %struct.vfe_irq_composite_mask_config* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.VFE_Irq_Composite_MaskType, %struct.VFE_Irq_Composite_MaskType* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.VFE_Irq_Composite_MaskType* %5 to i32*
  %21 = load i32, i32* %20, align 4
  ret i32 %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.VFE_Irq_Composite_MaskType*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
