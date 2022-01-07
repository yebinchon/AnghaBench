; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_commit.c_journal_wait_on_commit_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_commit.c_journal_wait_on_commit_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.buffer_head*)* @journal_wait_on_commit_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_wait_on_commit_record(i32* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %7 = call i32 @clear_buffer_dirty(%struct.buffer_head* %6)
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = call i32 @wait_on_buffer(%struct.buffer_head* %8)
  %10 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %11 = call i32 @buffer_uptodate(%struct.buffer_head* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %22 = call i32 @put_bh(%struct.buffer_head* %21)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %24 = call i32 @bh2jh(%struct.buffer_head* %23)
  %25 = call i32 @jbd2_journal_put_journal_head(i32 %24)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @jbd2_journal_put_journal_head(i32) #1

declare dso_local i32 @bh2jh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
