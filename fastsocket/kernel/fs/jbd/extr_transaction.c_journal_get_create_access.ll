; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_get_create_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_get_create_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.buffer_head = type { i32 }
%struct.journal_head = type { i64, %struct.TYPE_8__*, i64, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [17 x i8] c"journal_head %p\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@BJ_Forget = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"file as BJ_Reserved\00", align 1
@BJ_Reserved = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"set next transaction\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cancelling revoke\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_get_create_access(%struct.TYPE_10__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.journal_head*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = call %struct.journal_head* @journal_add_journal_head(%struct.buffer_head* %15)
  store %struct.journal_head* %16, %struct.journal_head** %7, align 8
  %17 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %18 = call i32 @jbd_debug(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.journal_head* %17)
  %19 = load i32, i32* @EROFS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i64 @is_handle_aborted(%struct.TYPE_10__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %125

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %26 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %27 = call i32 @JBUFFER_TRACE(%struct.journal_head* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %34 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %35 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = icmp eq %struct.TYPE_8__* %36, %37
  br i1 %38, label %60, label %39

39:                                               ; preds = %25
  %40 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %41 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = icmp eq %struct.TYPE_8__* %42, null
  br i1 %43, label %60, label %44

44:                                               ; preds = %39
  %45 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %46 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = icmp eq %struct.TYPE_8__* %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %54 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BJ_Forget, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %52, %44
  %59 = phi i1 [ false, %44 ], [ %57, %52 ]
  br label %60

60:                                               ; preds = %58, %39, %25
  %61 = phi i1 [ true, %39 ], [ true, %25 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @J_ASSERT_JH(%struct.journal_head* %33, i32 %62)
  %64 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %65 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %66 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = icmp eq %struct.TYPE_8__* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @J_ASSERT_JH(%struct.journal_head* %64, i32 %69)
  %71 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %72 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %73 = call i32 @jh2bh(%struct.journal_head* %72)
  %74 = call i32 @buffer_locked(i32 %73)
  %75 = call i32 @J_ASSERT_JH(%struct.journal_head* %71, i32 %74)
  %76 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %77 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = icmp eq %struct.TYPE_8__* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %60
  %81 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %82 = call i32 @jh2bh(%struct.journal_head* %81)
  %83 = call i32 @clear_buffer_dirty(i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %86 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %85, i32 0, i32 3
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %86, align 8
  %87 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %88 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %90 = call i32 @JBUFFER_TRACE(%struct.journal_head* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = load i32, i32* @BJ_Reserved, align 4
  %94 = call i32 @__journal_file_buffer(%struct.journal_head* %91, %struct.TYPE_8__* %92, i32 %93)
  br label %112

95:                                               ; preds = %60
  %96 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %97 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = icmp eq %struct.TYPE_8__* %98, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %105 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %107 = call i32 @JBUFFER_TRACE(%struct.journal_head* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %110 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %109, i32 0, i32 1
  store %struct.TYPE_8__* %108, %struct.TYPE_8__** %110, align 8
  br label %111

111:                                              ; preds = %103, %95
  br label %112

112:                                              ; preds = %111, %80
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %117 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %116)
  %118 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %119 = call i32 @JBUFFER_TRACE(%struct.journal_head* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %122 = call i32 @journal_cancel_revoke(%struct.TYPE_10__* %120, %struct.journal_head* %121)
  %123 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %124 = call i32 @journal_put_journal_head(%struct.journal_head* %123)
  br label %125

125:                                              ; preds = %112, %24
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local %struct.journal_head* @journal_add_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @jbd_debug(i32, i8*, %struct.journal_head*) #1

declare dso_local i64 @is_handle_aborted(%struct.TYPE_10__*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @buffer_locked(i32) #1

declare dso_local i32 @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @clear_buffer_dirty(i32) #1

declare dso_local i32 @__journal_file_buffer(%struct.journal_head*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @journal_cancel_revoke(%struct.TYPE_10__*, %struct.journal_head*) #1

declare dso_local i32 @journal_put_journal_head(%struct.journal_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
