; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_adjust_rightmost_records.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_adjust_rightmost_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ocfs2_extent_list*, %struct.buffer_head* }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Owner %llu has a bad extent list\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*)* @ocfs2_adjust_rightmost_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_adjust_rightmost_records(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_extent_rec* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.ocfs2_extent_rec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_extent_list*, align 8
  %14 = alloca %struct.ocfs2_extent_rec*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %6, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %7, align 8
  store %struct.ocfs2_extent_rec* %3, %struct.ocfs2_extent_rec** %8, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %93, %4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %18 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %96

21:                                               ; preds = %15
  %22 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %23 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  store %struct.buffer_head* %29, %struct.buffer_head** %12, align 8
  %30 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %31 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %36, align 8
  store %struct.ocfs2_extent_list* %37, %struct.ocfs2_extent_list** %13, align 8
  %38 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %39 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le16_to_cpu(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %21
  %45 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ocfs2_metadata_cache_get_super(i32 %47)
  %49 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %50 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ocfs2_metadata_cache_owner(i32 %51)
  %53 = call i32 @ocfs2_error(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %96

56:                                               ; preds = %21
  %57 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %58 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %57, i32 0, i32 0
  %59 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %59, i64 %62
  store %struct.ocfs2_extent_rec* %63, %struct.ocfs2_extent_rec** %14, align 8
  %64 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %65 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %14, align 8
  %68 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %14, align 8
  %70 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %69, i32 0, i32 1
  %71 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %72 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = call i32 @le32_add_cpu(i32* %70, i32 %74)
  %76 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %14, align 8
  %77 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %76, i32 0, i32 1
  %78 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %14, align 8
  %79 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = sub nsw i32 0, %81
  %83 = call i32 @le32_add_cpu(i32* %77, i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %86 = call i32 @ocfs2_journal_dirty(i32* %84, %struct.buffer_head* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %56
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %92

92:                                               ; preds = %89, %56
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %15

96:                                               ; preds = %44, %15
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
