; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_forget_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_forget_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, %struct.page* }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_forget_buffer(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %4 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %5 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %4, i32 0, i32 1
  %6 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %6, %struct.page** %3, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %8 = call i32 @lock_buffer(%struct.buffer_head* %7)
  %9 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %10 = call i32 @clear_buffer_nilfs_volatile(%struct.buffer_head* %9)
  %11 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %12 = call i32 @clear_buffer_dirty(%struct.buffer_head* %11)
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i64 @nilfs_page_buffers_clean(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @__nilfs_clear_page_dirty(%struct.page* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %21 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %20)
  %22 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %23 = call i32 @clear_buffer_mapped(%struct.buffer_head* %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i32 @ClearPageUptodate(%struct.page* %26)
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @ClearPageMappedToDisk(%struct.page* %28)
  %30 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %31 = call i32 @unlock_buffer(%struct.buffer_head* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %33 = call i32 @brelse(%struct.buffer_head* %32)
  ret void
}

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_nilfs_volatile(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @nilfs_page_buffers_clean(%struct.page*) #1

declare dso_local i32 @__nilfs_clear_page_dirty(%struct.page*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageMappedToDisk(%struct.page*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
