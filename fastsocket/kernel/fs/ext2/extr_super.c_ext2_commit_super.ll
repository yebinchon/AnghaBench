; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_commit_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_commit_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.ext2_super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ext2_super_block*)* @ext2_commit_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_commit_super(%struct.super_block* %0, %struct.ext2_super_block* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext2_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ext2_super_block* %1, %struct.ext2_super_block** %4, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = call i32 @ext2_clear_super_error(%struct.super_block* %5)
  %7 = call i32 (...) @get_seconds()
  %8 = call i32 @cpu_to_le32(i32 %7)
  %9 = load %struct.ext2_super_block*, %struct.ext2_super_block** %4, align 8
  %10 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mark_buffer_dirty(i32 %14)
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  ret void
}

declare dso_local i32 @ext2_clear_super_error(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @mark_buffer_dirty(i32) #1

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
