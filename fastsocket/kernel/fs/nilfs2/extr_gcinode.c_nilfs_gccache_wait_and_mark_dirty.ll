; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_gcinode.c_nilfs_gccache_wait_and_mark_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_gcinode.c_nilfs_gccache_wait_and_mark_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_gccache_wait_and_mark_dirty(%struct.buffer_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buffer_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  %4 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %5 = call i32 @wait_on_buffer(%struct.buffer_head* %4)
  %6 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %7 = call i32 @buffer_uptodate(%struct.buffer_head* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %14 = call i64 @buffer_dirty(%struct.buffer_head* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EEXIST, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %30

19:                                               ; preds = %12
  %20 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %21 = call i64 @buffer_nilfs_node(%struct.buffer_head* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %25 = call i32 @nilfs_btnode_mark_dirty(%struct.buffer_head* %24)
  br label %29

26:                                               ; preds = %19
  %27 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %28 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %27)
  br label %29

29:                                               ; preds = %26, %23
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %16, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @buffer_nilfs_node(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_btnode_mark_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
