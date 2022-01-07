; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_locks.c_ocfs2_flock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_locks.c_ocfs2_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i32, i64 }
%struct.ocfs2_super = type { i32 }

@FL_FLOCK = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@OCFS2_MOUNT_LOCALFLOCKS = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_flock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ocfs2_super* @OCFS2_SB(i32 %17)
  store %struct.ocfs2_super* %18, %struct.ocfs2_super** %9, align 8
  %19 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %20 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FL_FLOCK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOLCK, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %67

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i64 @__mandatory_lock(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOLCK, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %67

35:                                               ; preds = %28
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %37 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OCFS2_MOUNT_LOCALFLOCKS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %44 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %35
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %49 = call i32 @flock_lock_file_wait(%struct.file* %47, %struct.file_lock* %48)
  store i32 %49, i32* %4, align 4
  br label %67

50:                                               ; preds = %42
  %51 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %52 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @F_UNLCK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %60 = call i32 @ocfs2_do_funlock(%struct.file* %57, i32 %58, %struct.file_lock* %59)
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %50
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %66 = call i32 @ocfs2_do_flock(%struct.file* %62, %struct.inode* %63, i32 %64, %struct.file_lock* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %56, %46, %32, %25
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @__mandatory_lock(%struct.inode*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @flock_lock_file_wait(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @ocfs2_do_funlock(%struct.file*, i32, %struct.file_lock*) #1

declare dso_local i32 @ocfs2_do_flock(%struct.file*, %struct.inode*, i32, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
