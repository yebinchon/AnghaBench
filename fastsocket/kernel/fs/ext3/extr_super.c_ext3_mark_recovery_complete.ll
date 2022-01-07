; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_mark_recovery_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_mark_recovery_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_super_block = type { i32 }
%struct.TYPE_2__ = type { i32* }

@EXT3_FEATURE_INCOMPAT_RECOVER = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ext3_super_block*)* @ext3_mark_recovery_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext3_mark_recovery_complete(%struct.super_block* %0, %struct.ext3_super_block* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext3_super_block*, align 8
  %5 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ext3_super_block* %1, %struct.ext3_super_block** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @journal_lock_updates(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @journal_flush(i32* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = call i32 @lock_super(%struct.super_block* %17)
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = load i32, i32* @EXT3_FEATURE_INCOMPAT_RECOVER, align 4
  %21 = call i64 @EXT3_HAS_INCOMPAT_FEATURE(%struct.super_block* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MS_RDONLY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = load i32, i32* @EXT3_FEATURE_INCOMPAT_RECOVER, align 4
  %33 = call i32 @EXT3_CLEAR_INCOMPAT_FEATURE(%struct.super_block* %31, i32 %32)
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = load %struct.ext3_super_block*, %struct.ext3_super_block** %4, align 8
  %36 = call i32 @ext3_commit_super(%struct.super_block* %34, %struct.ext3_super_block* %35, i32 1)
  br label %37

37:                                               ; preds = %30, %23, %16
  %38 = load %struct.super_block*, %struct.super_block** %3, align 8
  %39 = call i32 @unlock_super(%struct.super_block* %38)
  br label %40

40:                                               ; preds = %37, %15
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @journal_unlock_updates(i32* %41)
  ret void
}

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @journal_lock_updates(i32*) #1

declare dso_local i64 @journal_flush(i32*) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i64 @EXT3_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @EXT3_CLEAR_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @ext3_commit_super(%struct.super_block*, %struct.ext3_super_block*, i32) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local i32 @journal_unlock_updates(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
