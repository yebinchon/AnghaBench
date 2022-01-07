; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_fs.c_jffs2_remount_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_fs.c_jffs2_remount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jffs2_sb_info = type { i32, i32 }

@JFFS2_SB_FLAG_RO = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@MS_NOATIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_remount_fs(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.jffs2_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(%struct.super_block* %9)
  store %struct.jffs2_sb_info* %10, %struct.jffs2_sb_info** %8, align 8
  %11 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %8, align 8
  %12 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @JFFS2_SB_FLAG_RO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MS_RDONLY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EROFS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %61

27:                                               ; preds = %17, %3
  %28 = call i32 (...) @lock_kernel()
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MS_RDONLY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %8, align 8
  %37 = call i32 @jffs2_stop_garbage_collect_thread(%struct.jffs2_sb_info* %36)
  %38 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %8, align 8
  %39 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %8, align 8
  %42 = call i32 @jffs2_flush_wbuf_pad(%struct.jffs2_sb_info* %41)
  %43 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %8, align 8
  %44 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %46

46:                                               ; preds = %35, %27
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MS_RDONLY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %8, align 8
  %54 = call i32 @jffs2_start_garbage_collect_thread(%struct.jffs2_sb_info* %53)
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i32, i32* @MS_NOATIME, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %24
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @jffs2_stop_garbage_collect_thread(%struct.jffs2_sb_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @jffs2_flush_wbuf_pad(%struct.jffs2_sb_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @jffs2_start_garbage_collect_thread(%struct.jffs2_sb_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
