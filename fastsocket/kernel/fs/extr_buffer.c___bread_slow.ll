; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___bread_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___bread_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@end_buffer_read_sync = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.buffer_head*)* @__bread_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @__bread_slow(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  %4 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %5 = call i32 @lock_buffer(%struct.buffer_head* %4)
  %6 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %7 = call i64 @buffer_uptodate(%struct.buffer_head* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %11 = call i32 @unlock_buffer(%struct.buffer_head* %10)
  %12 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  store %struct.buffer_head* %12, %struct.buffer_head** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %15 = call i32 @get_bh(%struct.buffer_head* %14)
  %16 = load i32, i32* @end_buffer_read_sync, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @READ, align 4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %21 = call i32 @submit_bh(i32 %19, %struct.buffer_head* %20)
  %22 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %23 = call i32 @wait_on_buffer(%struct.buffer_head* %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %25 = call i64 @buffer_uptodate(%struct.buffer_head* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  store %struct.buffer_head* %28, %struct.buffer_head** %2, align 8
  br label %33

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %32 = call i32 @brelse(%struct.buffer_head* %31)
  store %struct.buffer_head* null, %struct.buffer_head** %2, align 8
  br label %33

33:                                               ; preds = %30, %27, %9
  %34 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  ret %struct.buffer_head* %34
}

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
