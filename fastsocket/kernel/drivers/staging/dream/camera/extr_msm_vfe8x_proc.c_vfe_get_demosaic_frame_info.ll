; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_get_demosaic_frame_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_get_demosaic_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_irq_thread_msg = type { i32 }
%struct.vfe_frame_bpc_info = type { i32, i32, i32, i32 }
%struct.vfe_bps_info = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.vfe_irq_thread_msg*)* @vfe_get_demosaic_frame_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @vfe_get_demosaic_frame_info(%struct.vfe_irq_thread_msg* %0) #0 {
  %2 = alloca %struct.vfe_frame_bpc_info, align 4
  %3 = alloca %struct.vfe_irq_thread_msg*, align 8
  %4 = alloca %struct.vfe_bps_info, align 4
  store %struct.vfe_irq_thread_msg* %0, %struct.vfe_irq_thread_msg** %3, align 8
  %5 = call i32 @memset(%struct.vfe_frame_bpc_info* %2, i32 0, i32 16)
  %6 = bitcast %struct.vfe_bps_info* %4 to %struct.vfe_frame_bpc_info*
  %7 = call i32 @memset(%struct.vfe_frame_bpc_info* %6, i32 0, i32 16)
  %8 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %3, align 8
  %9 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.vfe_bps_info*
  %11 = bitcast %struct.vfe_bps_info* %4 to i8*
  %12 = bitcast %struct.vfe_bps_info* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.vfe_bps_info, %struct.vfe_bps_info* %4, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.vfe_frame_bpc_info, %struct.vfe_frame_bpc_info* %2, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.vfe_bps_info, %struct.vfe_bps_info* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.vfe_frame_bpc_info, %struct.vfe_frame_bpc_info* %2, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = bitcast %struct.vfe_frame_bpc_info* %2 to { i64, i64 }*
  %20 = load { i64, i64 }, { i64, i64 }* %19, align 4
  ret { i64, i64 } %20
}

declare dso_local i32 @memset(%struct.vfe_frame_bpc_info*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
