; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_do_setlk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_do_setlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.file*, i32, %struct.file_lock*)* }
%struct.TYPE_6__ = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*, i32)* @do_setlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_setlk(%struct.file* %0, i32 %1, %struct.file_lock* %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @nfs_sync_mapping(%struct.TYPE_5__* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %68

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = call %struct.TYPE_7__* @NFS_PROTO(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %29, align 8
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %34 = call i32 %30(%struct.file* %31, i32 %32, %struct.file_lock* %33)
  store i32 %34, i32* %10, align 4
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %38 = call i32 @do_vfs_lock(%struct.file* %36, %struct.file_lock* %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %26
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %68

43:                                               ; preds = %39
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @nfs_sync_mapping(%struct.TYPE_5__* %46)
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = load i32, i32* @FMODE_READ, align 4
  %50 = call i32 @nfs_have_delegation(%struct.inode* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %43
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call %struct.TYPE_6__* @NFS_SERVER(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i64 @is_time_granular(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = call %struct.TYPE_6__* @NFS_SERVER(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = call i32 @__nfs_revalidate_inode(%struct.TYPE_6__* %60, %struct.inode* %61)
  br label %66

63:                                               ; preds = %52
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = call i32 @nfs_zap_caches(%struct.inode* %64)
  br label %66

66:                                               ; preds = %63, %58
  br label %67

67:                                               ; preds = %66, %43
  br label %68

68:                                               ; preds = %67, %42, %22
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

declare dso_local i32 @nfs_sync_mapping(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_7__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @do_vfs_lock(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @nfs_have_delegation(%struct.inode*, i32) #1

declare dso_local i64 @is_time_granular(i32*) #1

declare dso_local %struct.TYPE_6__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @__nfs_revalidate_inode(%struct.TYPE_6__*, %struct.inode*) #1

declare dso_local i32 @nfs_zap_caches(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
