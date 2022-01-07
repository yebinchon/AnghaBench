; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_commit.c_journal_write_commit_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_commit.c_journal_write_commit_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.journal_head = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_10__ = type { i8*, i8*, i8* }

@JFS_MAGIC_NUMBER = common dso_local global i32 0, align 4
@JFS_COMMIT_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"write commit block\00", align 1
@JFS_BARRIER = common dso_local global i32 0, align 4
@WRITE_SYNC = common dso_local global i32 0, align 4
@WRITE_FLUSH_FUA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @journal_write_commit_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_write_commit_record(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.journal_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = call i64 @is_journal_aborted(%struct.TYPE_9__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = call %struct.journal_head* @journal_get_descriptor_buffer(%struct.TYPE_9__* %15)
  store %struct.journal_head* %16, %struct.journal_head** %6, align 8
  %17 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %18 = icmp ne %struct.journal_head* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %70

20:                                               ; preds = %14
  %21 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %22 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %21)
  store %struct.buffer_head* %22, %struct.buffer_head** %7, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %8, align 8
  %27 = load i32, i32* @JFS_MAGIC_NUMBER, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @JFS_COMMIT_BLOCK, align 4
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %42 = call i32 @JBUFFER_TRACE(%struct.journal_head* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %44 = call i32 @set_buffer_dirty(%struct.buffer_head* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @JFS_BARRIER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %20
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = load i32, i32* @WRITE_SYNC, align 4
  %54 = load i32, i32* @WRITE_FLUSH_FUA, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @__sync_dirty_buffer(%struct.buffer_head* %52, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %60

57:                                               ; preds = %20
  %58 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %59 = call i32 @sync_dirty_buffer(%struct.buffer_head* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %62 = call i32 @put_bh(%struct.buffer_head* %61)
  %63 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %64 = call i32 @journal_put_journal_head(%struct.journal_head* %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %60, %19, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @is_journal_aborted(%struct.TYPE_9__*) #1

declare dso_local %struct.journal_head* @journal_get_descriptor_buffer(%struct.TYPE_9__*) #1

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @__sync_dirty_buffer(%struct.buffer_head*, i32) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @journal_put_journal_head(%struct.journal_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
