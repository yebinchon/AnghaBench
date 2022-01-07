; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_UCPI_UBH.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_UCPI_UBH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_buffer_head = type { i32 }
%struct.ufs_cg_private_info = type { %struct.ufs_buffer_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ufs_buffer_head* (%struct.ufs_cg_private_info*)* @UCPI_UBH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ufs_buffer_head* @UCPI_UBH(%struct.ufs_cg_private_info* %0) #0 {
  %2 = alloca %struct.ufs_cg_private_info*, align 8
  store %struct.ufs_cg_private_info* %0, %struct.ufs_cg_private_info** %2, align 8
  %3 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %2, align 8
  %4 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %3, i32 0, i32 0
  ret %struct.ufs_buffer_head* %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
