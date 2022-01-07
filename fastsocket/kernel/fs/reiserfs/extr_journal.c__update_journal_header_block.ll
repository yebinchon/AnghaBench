; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c__update_journal_header_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c__update_journal_header_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_header = type { i8*, i8*, i8* }
%struct.reiserfs_journal = type { i32, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"journal-837\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"IO error during journal replay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, i32)* @_update_journal_header_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_update_journal_header_block(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_journal_header*, align 8
  %9 = alloca %struct.reiserfs_journal*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %11)
  store %struct.reiserfs_journal* %12, %struct.reiserfs_journal** %9, align 8
  %13 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %14 = call i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %133

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %22 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %132

25:                                               ; preds = %19
  %26 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %27 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = call i64 @buffer_locked(%struct.TYPE_10__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %33 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %32, i32 0, i32 3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = call i32 @wait_on_buffer(%struct.TYPE_10__* %34)
  %36 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %37 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %36, i32 0, i32 3
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = call i32 @buffer_uptodate(%struct.TYPE_10__* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %133

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %52 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %55 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %57 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %56, i32 0, i32 3
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.reiserfs_journal_header*
  store %struct.reiserfs_journal_header* %61, %struct.reiserfs_journal_header** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = call i8* @cpu_to_le32(i64 %63)
  %65 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %8, align 8
  %66 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i8* @cpu_to_le32(i64 %67)
  %69 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %8, align 8
  %70 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %72 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @cpu_to_le32(i64 %73)
  %75 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %8, align 8
  %76 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.super_block*, %struct.super_block** %5, align 8
  %78 = call i64 @reiserfs_barrier_flush(%struct.super_block* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %49
  %81 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %82 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %81, i32 0, i32 3
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = call i32 @lock_buffer(%struct.TYPE_10__* %83)
  %85 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %86 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %85, i32 0, i32 3
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = call i32 @submit_barrier_buffer(%struct.TYPE_10__* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @EOPNOTSUPP, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %80
  %94 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %95 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %94, i32 0, i32 3
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = call i32 @set_buffer_uptodate(%struct.TYPE_10__* %96)
  %98 = load %struct.super_block*, %struct.super_block** %5, align 8
  %99 = call i32 @disable_barrier(%struct.super_block* %98)
  br label %111

100:                                              ; preds = %80
  %101 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %102 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %101, i32 0, i32 3
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = call i32 @wait_on_buffer(%struct.TYPE_10__* %103)
  %105 = load %struct.super_block*, %struct.super_block** %5, align 8
  %106 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %107 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %106, i32 0, i32 3
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = call i32 @check_barrier_completion(%struct.super_block* %105, %struct.TYPE_10__* %108)
  br label %120

110:                                              ; preds = %49
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %113 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %112, i32 0, i32 3
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = call i32 @set_buffer_dirty(%struct.TYPE_10__* %114)
  %116 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %117 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %116, i32 0, i32 3
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = call i32 @sync_dirty_buffer(%struct.TYPE_10__* %118)
  br label %120

120:                                              ; preds = %111, %100
  %121 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %122 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %121, i32 0, i32 3
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = call i32 @buffer_uptodate(%struct.TYPE_10__* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %120
  %127 = load %struct.super_block*, %struct.super_block** %5, align 8
  %128 = call i32 @reiserfs_warning(%struct.super_block* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %133

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %19
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %126, %45, %16
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal*) #1

declare dso_local i64 @buffer_locked(%struct.TYPE_10__*) #1

declare dso_local i32 @wait_on_buffer(%struct.TYPE_10__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.TYPE_10__*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @reiserfs_barrier_flush(%struct.super_block*) #1

declare dso_local i32 @lock_buffer(%struct.TYPE_10__*) #1

declare dso_local i32 @submit_barrier_buffer(%struct.TYPE_10__*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.TYPE_10__*) #1

declare dso_local i32 @disable_barrier(%struct.super_block*) #1

declare dso_local i32 @check_barrier_completion(%struct.super_block*, %struct.TYPE_10__*) #1

declare dso_local i32 @set_buffer_dirty(%struct.TYPE_10__*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.TYPE_10__*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
