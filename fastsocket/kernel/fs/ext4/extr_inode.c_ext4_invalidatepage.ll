; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64)* @ext4_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_invalidatepage(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = getelementptr inbounds %struct.page, %struct.page* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @EXT4_JOURNAL(i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @ClearPageChecked(%struct.page* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @jbd2_journal_invalidatepage(i32* %21, %struct.page* %22, i64 %23)
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @block_invalidatepage(%struct.page* %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32* @EXT4_JOURNAL(i32) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @jbd2_journal_invalidatepage(i32*, %struct.page*, i64) #1

declare dso_local i32 @block_invalidatepage(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
