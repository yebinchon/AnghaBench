; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_bitmap_clear_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_bitmap_clear_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_free_space = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64, i64)* @bitmap_clear_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_clear_bits(%struct.btrfs_free_space_ctl* %0, %struct.btrfs_free_space* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.btrfs_free_space_ctl*, align 8
  %6 = alloca %struct.btrfs_free_space*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.btrfs_free_space_ctl* %0, %struct.btrfs_free_space_ctl** %5, align 8
  store %struct.btrfs_free_space* %1, %struct.btrfs_free_space** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %10 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @__bitmap_clear_bits(%struct.btrfs_free_space_ctl* %9, %struct.btrfs_free_space* %10, i64 %11, i64 %12)
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  ret void
}

declare dso_local i32 @__bitmap_clear_bits(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
