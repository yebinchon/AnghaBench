; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_lookup.c_vxfs_next_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_lookup.c_vxfs_next_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxfs_direct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vxfs_direct* (%struct.vxfs_direct*)* @vxfs_next_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vxfs_direct* @vxfs_next_entry(%struct.vxfs_direct* %0) #0 {
  %2 = alloca %struct.vxfs_direct*, align 8
  store %struct.vxfs_direct* %0, %struct.vxfs_direct** %2, align 8
  %3 = load %struct.vxfs_direct*, %struct.vxfs_direct** %2, align 8
  %4 = bitcast %struct.vxfs_direct* %3 to i8*
  %5 = load %struct.vxfs_direct*, %struct.vxfs_direct** %2, align 8
  %6 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %4, i64 %8
  %10 = bitcast i8* %9 to %struct.vxfs_direct*
  ret %struct.vxfs_direct* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
