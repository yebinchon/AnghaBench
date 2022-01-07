; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c___ocfs2_journal_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c___ocfs2_journal_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.ocfs2_triggers = type { i32 }
%struct.ocfs2_super = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"bh->b_blocknr=%llu, type=%d (\22%s\22), bh->b_size = %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"OCFS2_JOURNAL_ACCESS_CREATE\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"OCFS2_JOURNAL_ACCESS_WRITE\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"giving me a buffer that's not uptodate!\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"b_blocknr=%llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Uknown access type!\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Error %d getting %d access to buffer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_triggers*, i32)* @__ocfs2_journal_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_journal_access(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.ocfs2_triggers* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ocfs2_triggers*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_super*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store %struct.ocfs2_triggers* %3, %struct.ocfs2_triggers** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %14 = call i32 @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %13)
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %12, align 8
  %16 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %17 = icmp ne %struct.ocfs2_caching_info* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %5
  %25 = phi i1 [ true, %5 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %34 = icmp ne %struct.buffer_head* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 130
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mlog_entry(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %41, i8* %45, i32 %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = call i32 @buffer_uptodate(%struct.buffer_head* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %24
  %54 = load i32, i32* @ML_ERROR, align 4
  %55 = call i32 (i32, i8*, ...) @mlog(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @ML_ERROR, align 4
  %57 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i8*, ...) @mlog(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  %61 = call i32 (...) @BUG()
  br label %62

62:                                               ; preds = %53, %24
  %63 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %64 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %67 = call i32 @ocfs2_set_ci_lock_trans(i32 %65, %struct.ocfs2_caching_info* %66)
  %68 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %69 = call i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info* %68)
  %70 = load i32, i32* %10, align 4
  switch i32 %70, label %79 [
    i32 130, label %71
    i32 128, label %71
    i32 129, label %75
  ]

71:                                               ; preds = %62, %62
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %74 = call i32 @jbd2_journal_get_write_access(i32* %72, %struct.buffer_head* %73)
  store i32 %74, i32* %11, align 4
  br label %84

75:                                               ; preds = %62
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %78 = call i32 @jbd2_journal_get_undo_access(i32* %76, %struct.buffer_head* %77)
  store i32 %78, i32* %11, align 4
  br label %84

79:                                               ; preds = %62
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* @ML_ERROR, align 4
  %83 = call i32 (i32, i8*, ...) @mlog(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %75, %71
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %89 = call i64 @ocfs2_meta_ecc(%struct.ocfs2_super* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.ocfs2_triggers*, %struct.ocfs2_triggers** %9, align 8
  %93 = icmp ne %struct.ocfs2_triggers* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %96 = load %struct.ocfs2_triggers*, %struct.ocfs2_triggers** %9, align 8
  %97 = getelementptr inbounds %struct.ocfs2_triggers, %struct.ocfs2_triggers* %96, i32 0, i32 0
  %98 = call i32 @jbd2_journal_set_triggers(%struct.buffer_head* %95, i32* %97)
  br label %99

99:                                               ; preds = %94, %91, %87, %84
  %100 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %101 = call i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info* %100)
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* @ML_ERROR, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 (i32, i8*, ...) @mlog(i32 %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @mlog_exit(i32 %110)
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_entry(i8*, i64, i32, i8*, i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ocfs2_set_ci_lock_trans(i32, %struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @jbd2_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @jbd2_journal_get_undo_access(i32*, %struct.buffer_head*) #1

declare dso_local i64 @ocfs2_meta_ecc(%struct.ocfs2_super*) #1

declare dso_local i32 @jbd2_journal_set_triggers(%struct.buffer_head*, i32*) #1

declare dso_local i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
