; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c___journal_try_to_free_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c___journal_try_to_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.journal_head = type { i64, i32*, i32*, i32* }

@BJ_SyncData = common dso_local global i64 0, align 8
@BJ_Locked = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"release data\00", align 1
@BJ_None = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"remove from checkpoint list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.buffer_head*)* @__journal_try_to_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__journal_try_to_free_buffer(%struct.TYPE_3__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.journal_head*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %7 = call %struct.journal_head* @bh2jh(%struct.buffer_head* %6)
  store %struct.journal_head* %7, %struct.journal_head** %5, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = call i64 @buffer_locked(%struct.buffer_head* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = call i64 @buffer_dirty(%struct.buffer_head* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  br label %88

16:                                               ; preds = %11
  %17 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %18 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %88

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %27 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %57

30:                                               ; preds = %22
  %31 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %32 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %37 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BJ_SyncData, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %43 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BJ_Locked, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41, %35
  %48 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %49 = call i32 @JBUFFER_TRACE(%struct.journal_head* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %51 = call i32 @__journal_unfile_buffer(%struct.journal_head* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %53 = call i32 @journal_remove_journal_head(%struct.buffer_head* %52)
  %54 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %55 = call i32 @__brelse(%struct.buffer_head* %54)
  br label %56

56:                                               ; preds = %47, %41
  br label %84

57:                                               ; preds = %30, %22
  %58 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %59 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %83

62:                                               ; preds = %57
  %63 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %64 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %69 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BJ_None, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %75 = call i32 @JBUFFER_TRACE(%struct.journal_head* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %77 = call i32 @__journal_remove_checkpoint(%struct.journal_head* %76)
  %78 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %79 = call i32 @journal_remove_journal_head(%struct.buffer_head* %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %81 = call i32 @__brelse(%struct.buffer_head* %80)
  br label %82

82:                                               ; preds = %73, %67
  br label %83

83:                                               ; preds = %82, %62, %57
  br label %84

84:                                               ; preds = %83, %56
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  br label %88

88:                                               ; preds = %84, %21, %15
  ret void
}

declare dso_local %struct.journal_head* @bh2jh(%struct.buffer_head*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @__journal_unfile_buffer(%struct.journal_head*) #1

declare dso_local i32 @journal_remove_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local i32 @__journal_remove_checkpoint(%struct.journal_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
