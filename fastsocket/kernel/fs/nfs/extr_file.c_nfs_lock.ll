; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_14__, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i64, i64, i64, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 (%struct.file_lock*)* }

@ENOLCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NFS: lock(%s/%s, t=%x, fl=%x, r=%lld:%lld)\0A\00", align 1
@NFSIOS_VFSLOCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@NFS_MOUNT_LOCAL_FCNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @nfs_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load i32, i32* @ENOLCK, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %37 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %40 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %43 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %32, i64 %35, i32 %38, i64 %41, i64 %44)
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load i32, i32* @NFSIOS_VFSLOCK, align 4
  %48 = call i32 @nfs_inc_stats(%struct.inode* %46, i32 %47)
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i64 @__mandatory_lock(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %3
  %53 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %54 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @F_UNLCK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %115

59:                                               ; preds = %52, %3
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call %struct.TYPE_15__* @NFS_SERVER(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NFS_MOUNT_LOCAL_FCNTL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %59
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = call %struct.TYPE_16__* @NFS_PROTO(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %71, align 8
  %73 = icmp ne i32 (%struct.file_lock*)* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = call %struct.TYPE_16__* @NFS_PROTO(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %77, align 8
  %79 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %80 = call i32 %78(%struct.file_lock* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %115

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @IS_GETLK(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.file*, %struct.file** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @do_getlk(%struct.file* %90, i32 %91, %struct.file_lock* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  br label %114

95:                                               ; preds = %85
  %96 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %97 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @F_UNLCK, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.file*, %struct.file** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @do_unlk(%struct.file* %102, i32 %103, %struct.file_lock* %104, i32 %105)
  store i32 %106, i32* %8, align 4
  br label %113

107:                                              ; preds = %95
  %108 = load %struct.file*, %struct.file** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @do_setlk(%struct.file* %108, i32 %109, %struct.file_lock* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %107, %101
  br label %114

114:                                              ; preds = %113, %89
  br label %115

115:                                              ; preds = %114, %83, %58
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i32 @dprintk(i8*, i32, i32, i64, i32, i64, i64) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i64 @__mandatory_lock(%struct.inode*) #1

declare dso_local %struct.TYPE_15__* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.TYPE_16__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i64 @IS_GETLK(i32) #1

declare dso_local i32 @do_getlk(%struct.file*, i32, %struct.file_lock*, i32) #1

declare dso_local i32 @do_unlk(%struct.file*, i32, %struct.file_lock*, i32) #1

declare dso_local i32 @do_setlk(%struct.file*, i32, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
