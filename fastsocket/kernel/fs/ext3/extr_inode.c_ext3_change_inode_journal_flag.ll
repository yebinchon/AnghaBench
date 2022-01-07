; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_change_inode_journal_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_change_inode_journal_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@EXT3_JOURNAL_DATA_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_change_inode_journal_flag(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32* @EXT3_JOURNAL(%struct.inode* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @is_journal_aborted(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EROFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @journal_lock_updates(i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @journal_flush(i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* @EXT3_JOURNAL_DATA_FL, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call %struct.TYPE_9__* @EXT3_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 4
  br label %39

31:                                               ; preds = %17
  %32 = load i32, i32* @EXT3_JOURNAL_DATA_FL, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call %struct.TYPE_9__* @EXT3_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %31, %24
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call i32 @ext3_set_aops(%struct.inode* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @journal_unlock_updates(i32* %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = call %struct.TYPE_8__* @ext3_journal_start(%struct.inode* %44, i32 1)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %7, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = call i64 @IS_ERR(%struct.TYPE_8__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = call i32 @PTR_ERR(%struct.TYPE_8__* %50)
  store i32 %51, i32* %3, align 4
  br label %66

52:                                               ; preds = %39
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call i32 @ext3_mark_inode_dirty(%struct.TYPE_8__* %53, %struct.inode* %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = call i32 @ext3_journal_stop(%struct.TYPE_8__* %58)
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ext3_std_error(i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %52, %49, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32* @EXT3_JOURNAL(%struct.inode*) #1

declare dso_local i64 @is_journal_aborted(i32*) #1

declare dso_local i32 @journal_lock_updates(i32*) #1

declare dso_local i32 @journal_flush(i32*) #1

declare dso_local %struct.TYPE_9__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @ext3_set_aops(%struct.inode*) #1

declare dso_local i32 @journal_unlock_updates(i32*) #1

declare dso_local %struct.TYPE_8__* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @ext3_mark_inode_dirty(%struct.TYPE_8__*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @ext3_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
