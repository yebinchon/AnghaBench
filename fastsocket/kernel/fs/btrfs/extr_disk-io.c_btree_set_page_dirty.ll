; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_set_page_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_set_page_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }
%struct.extent_buffer = type { i32, i32 }

@EXTENT_BUFFER_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @btree_set_page_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_set_page_dirty(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.extent_buffer*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call i32 @PagePrivate(%struct.page* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.extent_buffer*
  store %struct.extent_buffer* %13, %struct.extent_buffer** %3, align 8
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %15 = icmp ne %struct.extent_buffer* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* @EXTENT_BUFFER_DIRTY, align 4
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %20, i32 0, i32 1
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %28 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %27, i32 0, i32 0
  %29 = call i32 @atomic_read(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %35 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %34)
  %36 = load %struct.page*, %struct.page** %2, align 8
  %37 = call i32 @__set_page_dirty_nobuffers(%struct.page* %36)
  ret i32 %37
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local i32 @__set_page_dirty_nobuffers(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
