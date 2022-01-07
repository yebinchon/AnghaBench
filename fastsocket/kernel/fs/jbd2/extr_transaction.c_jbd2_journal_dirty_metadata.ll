; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_transaction.c_jbd2_journal_dirty_metadata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_transaction.c_jbd2_journal_dirty_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.buffer_head = type { i32 }
%struct.journal_head = type { i32, i64, i32*, %struct.TYPE_7__*, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [17 x i8] c"journal_head %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@BJ_Metadata = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"fastpath\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"already on other transaction\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"file as BJ_Metadata\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"exit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_dirty_metadata(%struct.TYPE_9__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.journal_head*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %15 = call %struct.journal_head* @bh2jh(%struct.buffer_head* %14)
  store %struct.journal_head* %15, %struct.journal_head** %7, align 8
  %16 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %17 = call i32 @jbd_debug(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.journal_head* %16)
  %18 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %19 = call i32 @JBUFFER_TRACE(%struct.journal_head* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = call i64 @is_handle_aborted(%struct.TYPE_9__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %124

24:                                               ; preds = %2
  %25 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %26 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %25)
  %27 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %28 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %33 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @J_ASSERT_JH(%struct.journal_head* %34, i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %31, %24
  %46 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %47 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %46, i32 0, i32 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = icmp eq %struct.TYPE_7__* %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %53 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BJ_Metadata, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %59 = call i32 @JBUFFER_TRACE(%struct.journal_head* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %61 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %62 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %61, i32 0, i32 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp eq %struct.TYPE_7__* %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @J_ASSERT_JH(%struct.journal_head* %60, i32 %68)
  br label %121

70:                                               ; preds = %51, %45
  %71 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %72 = call i32 @set_buffer_jbddirty(%struct.buffer_head* %71)
  %73 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %74 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %73, i32 0, i32 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = icmp ne %struct.TYPE_7__* %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %70
  %79 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %80 = call i32 @JBUFFER_TRACE(%struct.journal_head* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %82 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %83 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %82, i32 0, i32 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = icmp eq %struct.TYPE_7__* %84, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @J_ASSERT_JH(%struct.journal_head* %81, i32 %89)
  %91 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %92 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %93 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %92, i32 0, i32 3
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = icmp eq %struct.TYPE_7__* %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @J_ASSERT_JH(%struct.journal_head* %91, i32 %97)
  br label %121

99:                                               ; preds = %70
  %100 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %101 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %102 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @J_ASSERT_JH(%struct.journal_head* %100, i32 %105)
  %107 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %108 = call i32 @JBUFFER_TRACE(%struct.journal_head* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = call i32 @spin_lock(i32* %110)
  %112 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i64, i64* @BJ_Metadata, align 8
  %117 = call i32 @__jbd2_journal_file_buffer(%struct.journal_head* %112, %struct.TYPE_7__* %115, i64 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = call i32 @spin_unlock(i32* %119)
  br label %121

121:                                              ; preds = %99, %78, %57
  %122 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %123 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %122)
  br label %124

124:                                              ; preds = %121, %23
  %125 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %126 = call i32 @JBUFFER_TRACE(%struct.journal_head* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.journal_head* @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @jbd_debug(i32, i8*, %struct.journal_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i64 @is_handle_aborted(%struct.TYPE_9__*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @set_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__jbd2_journal_file_buffer(%struct.journal_head*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
