; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.list_head = type { i32 }
%struct.nfs_pageio_descriptor = type { i32 }
%struct.nfs_readdesc = type { i32*, %struct.nfs_pageio_descriptor* }
%struct.TYPE_4__ = type { i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32*)* }

@ESTALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"NFS: nfs_readpages (%s/%Ld %d)\0A\00", align 1
@NFSIOS_VFSREADPAGES = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@nfs_async_read_completion_ops = common dso_local global i32 0, align 4
@readpage_async_filler = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@NFSIOS_READPAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_readpages(%struct.file* %0, %struct.address_space* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_pageio_descriptor, align 4
  %11 = alloca %struct.nfs_readdesc, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %11, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %11, i32 0, i32 1
  store %struct.nfs_pageio_descriptor* %10, %struct.nfs_pageio_descriptor** %16, align 8
  %17 = load %struct.address_space*, %struct.address_space** %7, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %12, align 8
  %20 = load i32, i32* @ESTALE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.inode*, %struct.inode** %12, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = call i64 @NFS_FILEID(%struct.inode* %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %28, i32 %29)
  %31 = load %struct.inode*, %struct.inode** %12, align 8
  %32 = load i32, i32* @NFSIOS_VFSREADPAGES, align 4
  %33 = call i32 @nfs_inc_stats(%struct.inode* %31, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %12, align 8
  %35 = call i64 @NFS_STALE(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  br label %96

38:                                               ; preds = %4
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = icmp eq %struct.file* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.inode*, %struct.inode** %12, align 8
  %43 = load i32, i32* @FMODE_READ, align 4
  %44 = call i32* @nfs_find_open_context(%struct.inode* %42, i32* null, i32 %43)
  %45 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %11, i32 0, i32 0
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %11, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EBADF, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %98

52:                                               ; preds = %41
  br label %58

53:                                               ; preds = %38
  %54 = load %struct.file*, %struct.file** %6, align 8
  %55 = call i32 @nfs_file_open_context(%struct.file* %54)
  %56 = call i32* @get_nfs_open_context(i32 %55)
  %57 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %11, i32 0, i32 0
  store i32* %56, i32** %57, align 8
  br label %58

58:                                               ; preds = %53, %52
  %59 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %11, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = load %struct.address_space*, %struct.address_space** %7, align 8
  %63 = load %struct.list_head*, %struct.list_head** %8, align 8
  %64 = call i32 @nfs_readpages_from_fscache(i32* %60, %struct.inode* %61, %struct.address_space* %62, %struct.list_head* %63, i32* %9)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %92

68:                                               ; preds = %58
  %69 = load %struct.inode*, %struct.inode** %12, align 8
  %70 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32*)*, i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32*)** %71, align 8
  %73 = load %struct.inode*, %struct.inode** %12, align 8
  %74 = call i32 %72(%struct.nfs_pageio_descriptor* %10, %struct.inode* %73, i32* @nfs_async_read_completion_ops)
  %75 = load %struct.address_space*, %struct.address_space** %7, align 8
  %76 = load %struct.list_head*, %struct.list_head** %8, align 8
  %77 = load i32, i32* @readpage_async_filler, align 4
  %78 = call i32 @read_cache_pages(%struct.address_space* %75, %struct.list_head* %76, i32 %77, %struct.nfs_readdesc* %11)
  store i32 %78, i32* %14, align 4
  %79 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %10)
  %80 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %83 = add nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %86 = ashr i32 %84, %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %13, align 8
  %88 = load %struct.inode*, %struct.inode** %12, align 8
  %89 = load i32, i32* @NFSIOS_READPAGES, align 4
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @nfs_add_stats(%struct.inode* %88, i32 %89, i64 %90)
  br label %92

92:                                               ; preds = %68, %67
  %93 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %11, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @put_nfs_open_context(i32* %94)
  br label %96

96:                                               ; preds = %92, %37
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %49
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @dprintk(i8*, i32, i64, i32) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i64 @NFS_STALE(%struct.inode*) #1

declare dso_local i32* @nfs_find_open_context(%struct.inode*, i32*, i32) #1

declare dso_local i32* @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local i32 @nfs_readpages_from_fscache(i32*, %struct.inode*, %struct.address_space*, %struct.list_head*, i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @read_cache_pages(%struct.address_space*, %struct.list_head*, i32, %struct.nfs_readdesc*) #1

declare dso_local i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i64) #1

declare dso_local i32 @put_nfs_open_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
