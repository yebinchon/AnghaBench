; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_flock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_13__, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i64, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"NFS: flock(%s/%s, t=%x, fl=%x)\0A\00", align 1
@FL_FLOCK = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@NFS_MOUNT_LOCAL_FLOCK = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @nfs_flock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_flock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %30, i64 %33, i32 %36)
  %38 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FL_FLOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load i32, i32* @ENOLCK, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %83

47:                                               ; preds = %3
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = call %struct.TYPE_14__* @NFS_SERVER(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NFS_MOUNT_LOCAL_FLOCK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = ptrtoint %struct.file* %57 to i64
  %59 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %60 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %62 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @OFFSET_MAX, align 4
  %64 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %67 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @F_UNLCK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @do_unlk(%struct.file* %72, i32 %73, %struct.file_lock* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %83

77:                                               ; preds = %56
  %78 = load %struct.file*, %struct.file** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @do_setlk(%struct.file* %78, i32 %79, %struct.file_lock* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %71, %44
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @dprintk(i8*, i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_14__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @do_unlk(%struct.file*, i32, %struct.file_lock*, i32) #1

declare dso_local i32 @do_setlk(%struct.file*, i32, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
