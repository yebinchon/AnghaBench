; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raparm_hbucket = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.kvec = type { i32 }
%struct.file = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.raparms = type { i32, i64, i32, i32 }

@S_IFREG = common dso_local global i32 0, align 4
@NFSD_MAY_READ = common dso_local global i32 0, align 4
@raparm_hash = common dso_local global %struct.raparm_hbucket* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_read(%struct.svc_rqst* %0, %struct.svc_fh* %1, i32 %2, %struct.kvec* %3, i32 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca %struct.svc_fh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.file*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.raparms*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.raparm_hbucket*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %8, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.kvec* %3, %struct.kvec** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %20 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %21 = load i32, i32* @S_IFREG, align 4
  %22 = load i32, i32* @NFSD_MAY_READ, align 4
  %23 = call i64 @nfsd_open(%struct.svc_rqst* %19, %struct.svc_fh* %20, i32 %21, i32 %22, %struct.file** %14)
  store i64 %23, i64* %17, align 8
  %24 = load i64, i64* %17, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i64, i64* %17, align 8
  store i64 %27, i64* %7, align 8
  br label %95

28:                                               ; preds = %6
  %29 = load %struct.file*, %struct.file** %14, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.inode*, %struct.inode** %33, align 8
  store %struct.inode* %34, %struct.inode** %15, align 8
  %35 = load %struct.inode*, %struct.inode** %15, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %15, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.raparms* @nfsd_get_raparms(i32 %39, i32 %42)
  store %struct.raparms* %43, %struct.raparms** %16, align 8
  %44 = load %struct.raparms*, %struct.raparms** %16, align 8
  %45 = icmp ne %struct.raparms* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %28
  %47 = load %struct.raparms*, %struct.raparms** %16, align 8
  %48 = getelementptr inbounds %struct.raparms, %struct.raparms* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.raparms*, %struct.raparms** %16, align 8
  %53 = getelementptr inbounds %struct.raparms, %struct.raparms* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.file*, %struct.file** %14, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %46, %28
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %59 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %60 = load %struct.file*, %struct.file** %14, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.kvec*, %struct.kvec** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i64*, i64** %13, align 8
  %65 = call i64 @nfsd_vfs_read(%struct.svc_rqst* %58, %struct.svc_fh* %59, %struct.file* %60, i32 %61, %struct.kvec* %62, i32 %63, i64* %64)
  store i64 %65, i64* %17, align 8
  %66 = load %struct.raparms*, %struct.raparms** %16, align 8
  %67 = icmp ne %struct.raparms* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %57
  %69 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** @raparm_hash, align 8
  %70 = load %struct.raparms*, %struct.raparms** %16, align 8
  %71 = getelementptr inbounds %struct.raparms, %struct.raparms* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %69, i64 %72
  store %struct.raparm_hbucket* %73, %struct.raparm_hbucket** %18, align 8
  %74 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** %18, align 8
  %75 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %74, i32 0, i32 0
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.file*, %struct.file** %14, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.raparms*, %struct.raparms** %16, align 8
  %81 = getelementptr inbounds %struct.raparms, %struct.raparms* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.raparms*, %struct.raparms** %16, align 8
  %83 = getelementptr inbounds %struct.raparms, %struct.raparms* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.raparms*, %struct.raparms** %16, align 8
  %85 = getelementptr inbounds %struct.raparms, %struct.raparms* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** %18, align 8
  %89 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  br label %91

91:                                               ; preds = %68, %57
  %92 = load %struct.file*, %struct.file** %14, align 8
  %93 = call i32 @nfsd_close(%struct.file* %92)
  %94 = load i64, i64* %17, align 8
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %91, %26
  %96 = load i64, i64* %7, align 8
  ret i64 %96
}

declare dso_local i64 @nfsd_open(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, %struct.file**) #1

declare dso_local %struct.raparms* @nfsd_get_raparms(i32, i32) #1

declare dso_local i64 @nfsd_vfs_read(%struct.svc_rqst*, %struct.svc_fh*, %struct.file*, i32, %struct.kvec*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd_close(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
