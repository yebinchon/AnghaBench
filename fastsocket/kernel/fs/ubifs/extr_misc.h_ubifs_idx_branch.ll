; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_misc.h_ubifs_idx_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_misc.h_ubifs_idx_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_branch = type { i32 }
%struct.ubifs_info = type { i32 }
%struct.ubifs_idx_node = type { i64 }

@UBIFS_BRANCH_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_branch* (%struct.ubifs_info*, %struct.ubifs_idx_node*, i32)* @ubifs_idx_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info* %0, %struct.ubifs_idx_node* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_idx_node*, align 8
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_idx_node* %1, %struct.ubifs_idx_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %5, align 8
  %8 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load i32, i32* @UBIFS_BRANCH_SZ, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %10, i64 %18
  %20 = bitcast i8* %19 to %struct.ubifs_branch*
  ret %struct.ubifs_branch* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
