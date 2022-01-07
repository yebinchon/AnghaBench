; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_super.c_affs_commit_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_super.c_affs_commit_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.affs_sb_info = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.affs_root_tail = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32)* @affs_commit_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @affs_commit_super(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.affs_sb_info*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.affs_root_tail*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.affs_sb_info* @AFFS_SB(%struct.super_block* %8)
  store %struct.affs_sb_info* %9, %struct.affs_sb_info** %5, align 8
  %10 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %10, i32 0, i32 0
  %12 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %12, %struct.buffer_head** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %15 = call %struct.affs_root_tail* @AFFS_ROOT_TAIL(%struct.super_block* %13, %struct.buffer_head* %14)
  store %struct.affs_root_tail* %15, %struct.affs_root_tail** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @cpu_to_be32(i32 %16)
  %18 = load %struct.affs_root_tail*, %struct.affs_root_tail** %7, align 8
  %19 = getelementptr inbounds %struct.affs_root_tail, %struct.affs_root_tail* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = call i32 (...) @get_seconds()
  %21 = load %struct.affs_root_tail*, %struct.affs_root_tail** %7, align 8
  %22 = getelementptr inbounds %struct.affs_root_tail, %struct.affs_root_tail* %21, i32 0, i32 0
  %23 = call i32 @secs_to_datestamp(i32 %20, i32* %22)
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %26 = call i32 @affs_fix_checksum(%struct.super_block* %24, %struct.buffer_head* %25)
  %27 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %28 = call i32 @mark_buffer_dirty(%struct.buffer_head* %27)
  ret void
}

declare dso_local %struct.affs_sb_info* @AFFS_SB(%struct.super_block*) #1

declare dso_local %struct.affs_root_tail* @AFFS_ROOT_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @secs_to_datestamp(i32, i32*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @affs_fix_checksum(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
