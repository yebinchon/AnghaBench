; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.address_space = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_13__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"NFS: write_begin(%s/%s(%ld), %u@%lld)\0A\00", align 1
@NFS_INO_FLUSHING = common dso_local global i32 0, align 4
@nfs_wait_bit_killable = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @nfs_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %23 = load i32, i32* @PAGECACHE, align 4
  %24 = load %struct.file*, %struct.file** %9, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.file*, %struct.file** %9, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.address_space*, %struct.address_space** %10, align 8
  %41 = getelementptr inbounds %struct.address_space, %struct.address_space* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 @dfprintk(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %39, i32 %44, i32 %45, i64 %47)
  br label %49

49:                                               ; preds = %104, %7
  %50 = load %struct.address_space*, %struct.address_space** %10, align 8
  %51 = getelementptr inbounds %struct.address_space, %struct.address_space* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = call %struct.TYPE_13__* @NFS_I(%struct.TYPE_14__* %52)
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* @NFS_INO_FLUSHING, align 4
  %56 = load i32, i32* @nfs_wait_bit_killable, align 4
  %57 = load i32, i32* @TASK_KILLABLE, align 4
  %58 = call i32 @wait_on_bit(i32* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %8, align 4
  br label %109

63:                                               ; preds = %49
  %64 = load %struct.address_space*, %struct.address_space** %10, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %64, i32 %65, i32 %66)
  store %struct.page* %67, %struct.page** %18, align 8
  %68 = load %struct.page*, %struct.page** %18, align 8
  %69 = icmp ne %struct.page* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %109

73:                                               ; preds = %63
  %74 = load %struct.page*, %struct.page** %18, align 8
  %75 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %74, %struct.page** %75, align 8
  %76 = load %struct.file*, %struct.file** %9, align 8
  %77 = load %struct.page*, %struct.page** %18, align 8
  %78 = call i32 @nfs_flush_incompatible(%struct.file* %76, %struct.page* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.page*, %struct.page** %18, align 8
  %83 = call i32 @unlock_page(%struct.page* %82)
  %84 = load %struct.page*, %struct.page** %18, align 8
  %85 = call i32 @page_cache_release(%struct.page* %84)
  br label %107

86:                                               ; preds = %73
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %86
  %90 = load %struct.file*, %struct.file** %9, align 8
  %91 = load %struct.page*, %struct.page** %18, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i64 @nfs_want_read_modify_write(%struct.file* %90, %struct.page* %91, i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  store i32 1, i32* %19, align 4
  %97 = load %struct.file*, %struct.file** %9, align 8
  %98 = load %struct.page*, %struct.page** %18, align 8
  %99 = call i32 @nfs_readpage(%struct.file* %97, %struct.page* %98)
  store i32 %99, i32* %16, align 4
  %100 = load %struct.page*, %struct.page** %18, align 8
  %101 = call i32 @page_cache_release(%struct.page* %100)
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  br label %49

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %89, %86
  br label %107

107:                                              ; preds = %106, %81
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %70, %61
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @NFS_I(%struct.TYPE_14__*) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @nfs_flush_incompatible(%struct.file*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i64 @nfs_want_read_modify_write(%struct.file*, %struct.page*, i32, i32) #1

declare dso_local i32 @nfs_readpage(%struct.file*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
