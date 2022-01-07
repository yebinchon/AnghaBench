; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ext4_extents.h_ext4_idx_store_pblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ext4_extents.h_ext4_idx_store_pblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_extent_idx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_extent_idx*, i32)* @ext4_idx_store_pblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_idx_store_pblock(%struct.ext4_extent_idx* %0, i32 %1) #0 {
  %3 = alloca %struct.ext4_extent_idx*, align 8
  %4 = alloca i32, align 4
  store %struct.ext4_extent_idx* %0, %struct.ext4_extent_idx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = zext i32 %5 to i64
  %7 = call i32 @cpu_to_le32(i64 %6)
  %8 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %3, align 8
  %9 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 31
  %12 = ashr i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 65535
  %15 = call i32 @cpu_to_le16(i64 %14)
  %16 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %3, align 8
  %17 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
