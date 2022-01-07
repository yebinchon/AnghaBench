; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_check_barrier_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_check_barrier_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.buffer_head*)* @check_barrier_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_barrier_completion(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %6 = call i64 @buffer_eopnotsupp(%struct.buffer_head* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %10 = call i32 @clear_buffer_eopnotsupp(%struct.buffer_head* %9)
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call i32 @disable_barrier(%struct.super_block* %11)
  %13 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %14 = call i32 @set_buffer_uptodate(%struct.buffer_head* %13)
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = call i32 @set_buffer_dirty(%struct.buffer_head* %15)
  %17 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %18 = call i32 @sync_dirty_buffer(%struct.buffer_head* %17)
  br label %19

19:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @buffer_eopnotsupp(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_eopnotsupp(%struct.buffer_head*) #1

declare dso_local i32 @disable_barrier(%struct.super_block*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
