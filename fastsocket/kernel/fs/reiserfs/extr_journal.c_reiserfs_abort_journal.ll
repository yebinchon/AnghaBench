; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_reiserfs_abort_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_reiserfs_abort_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i32, i32 }

@J_ABORTED = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_abort_journal(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %6)
  store %struct.reiserfs_journal* %7, %struct.reiserfs_journal** %5, align 8
  %8 = load i32, i32* @J_ABORTED, align 4
  %9 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %10 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %16 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %22 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* @MS_RDONLY, align 4
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @J_ABORTED, align 4
  %30 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %31 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %30, i32 0, i32 1
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
