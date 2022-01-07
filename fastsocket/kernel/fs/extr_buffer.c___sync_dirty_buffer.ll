; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___sync_dirty_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___sync_dirty_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }

@end_buffer_write_sync = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sync_dirty_buffer(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %7 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %6, i32 0, i32 1
  %8 = call i32 @atomic_read(i32* %7)
  %9 = icmp slt i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %13 = call i32 @lock_buffer(%struct.buffer_head* %12)
  %14 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %15 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %19 = call i32 @get_bh(%struct.buffer_head* %18)
  %20 = load i32, i32* @end_buffer_write_sync, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %25 = call i32 @submit_bh(i32 %23, %struct.buffer_head* %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %27 = call i32 @wait_on_buffer(%struct.buffer_head* %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %29 = call i64 @buffer_eopnotsupp(%struct.buffer_head* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %33 = call i32 @clear_buffer_eopnotsupp(%struct.buffer_head* %32)
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %17
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %41 = call i32 @buffer_uptodate(%struct.buffer_head* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %39, %36
  br label %50

47:                                               ; preds = %2
  %48 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %49 = call i32 @unlock_buffer(%struct.buffer_head* %48)
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_eopnotsupp(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_eopnotsupp(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
