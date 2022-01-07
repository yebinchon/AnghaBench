; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_commit.c_journal_submit_commit_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_commit.c_journal_submit_commit_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.journal_head = type { i32 }
%struct.commit_header = type { i8**, i32, i32, i8*, i32, i8*, i8*, i8* }
%struct.timespec = type { i32, i32 }

@JBD2_MAGIC_NUMBER = common dso_local global i32 0, align 4
@JBD2_COMMIT_BLOCK = common dso_local global i32 0, align 4
@JBD2_FEATURE_COMPAT_CHECKSUM = common dso_local global i32 0, align 4
@JBD2_CRC32_CHKSUM = common dso_local global i32 0, align 4
@JBD2_CRC32_CHKSUM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"submit commit block\00", align 1
@journal_end_buffer_io_sync = common dso_local global i32 0, align 4
@JBD2_BARRIER = common dso_local global i32 0, align 4
@JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT = common dso_local global i32 0, align 4
@WRITE_SYNC_PLUG = common dso_local global i32 0, align 4
@WRITE_FLUSH_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.buffer_head**, i32)* @journal_submit_commit_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_submit_commit_record(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, %struct.buffer_head** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.journal_head*, align 8
  %11 = alloca %struct.commit_header*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = call i64 (...) @current_kernel_time()
  %16 = bitcast %struct.timespec* %14 to i64*
  store i64 %15, i64* %16, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = call i64 @is_journal_aborted(%struct.TYPE_10__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %112

21:                                               ; preds = %4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = call %struct.journal_head* @jbd2_journal_get_descriptor_buffer(%struct.TYPE_10__* %22)
  store %struct.journal_head* %23, %struct.journal_head** %10, align 8
  %24 = load %struct.journal_head*, %struct.journal_head** %10, align 8
  %25 = icmp ne %struct.journal_head* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %112

27:                                               ; preds = %21
  %28 = load %struct.journal_head*, %struct.journal_head** %10, align 8
  %29 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %12, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.commit_header*
  store %struct.commit_header* %33, %struct.commit_header** %11, align 8
  %34 = load i32, i32* @JBD2_MAGIC_NUMBER, align 4
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %struct.commit_header*, %struct.commit_header** %11, align 8
  %37 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @JBD2_COMMIT_BLOCK, align 4
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.commit_header*, %struct.commit_header** %11, align 8
  %41 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.commit_header*, %struct.commit_header** %11, align 8
  %47 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cpu_to_be64(i32 %49)
  %51 = load %struct.commit_header*, %struct.commit_header** %11, align 8
  %52 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = load %struct.commit_header*, %struct.commit_header** %11, align 8
  %57 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = load i32, i32* @JBD2_FEATURE_COMPAT_CHECKSUM, align 4
  %60 = call i64 @JBD2_HAS_COMPAT_FEATURE(%struct.TYPE_10__* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %27
  %63 = load i32, i32* @JBD2_CRC32_CHKSUM, align 4
  %64 = load %struct.commit_header*, %struct.commit_header** %11, align 8
  %65 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @JBD2_CRC32_CHKSUM_SIZE, align 4
  %67 = load %struct.commit_header*, %struct.commit_header** %11, align 8
  %68 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.commit_header*, %struct.commit_header** %11, align 8
  %72 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  store i8* %70, i8** %74, align 8
  br label %75

75:                                               ; preds = %62, %27
  %76 = load %struct.journal_head*, %struct.journal_head** %10, align 8
  %77 = call i32 @JBUFFER_TRACE(%struct.journal_head* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %79 = call i32 @lock_buffer(%struct.buffer_head* %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %81 = call i32 @clear_buffer_dirty(%struct.buffer_head* %80)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %83 = call i32 @set_buffer_uptodate(%struct.buffer_head* %82)
  %84 = load i32, i32* @journal_end_buffer_io_sync, align 4
  %85 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @JBD2_BARRIER, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %75
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = load i32, i32* @JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT, align 4
  %96 = call i32 @JBD2_HAS_INCOMPAT_FEATURE(%struct.TYPE_10__* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @WRITE_SYNC_PLUG, align 4
  %100 = load i32, i32* @WRITE_FLUSH_FUA, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %103 = call i32 @submit_bh(i32 %101, %struct.buffer_head* %102)
  store i32 %103, i32* %13, align 4
  br label %108

104:                                              ; preds = %93, %75
  %105 = load i32, i32* @WRITE_SYNC_PLUG, align 4
  %106 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %107 = call i32 @submit_bh(i32 %105, %struct.buffer_head* %106)
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %104, %98
  %109 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %110 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %109, %struct.buffer_head** %110, align 8
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %26, %20
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @current_kernel_time(...) #1

declare dso_local i64 @is_journal_aborted(%struct.TYPE_10__*) #1

declare dso_local %struct.journal_head* @jbd2_journal_get_descriptor_buffer(%struct.TYPE_10__*) #1

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i64 @JBD2_HAS_COMPAT_FEATURE(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @JBD2_HAS_INCOMPAT_FEATURE(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
