; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_reg_unlocked_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_reg_unlocked_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type opaque
%struct.proc_dir_entry = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 (%struct.file*, i32, i64)*, i32 (%struct.inode*, %struct.file*, i32, i64)* }

@ENOTTY = common dso_local global i64 0, align 8
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @proc_reg_unlocked_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @proc_reg_unlocked_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.proc_dir_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64 (%struct.file*, i32, i64)*, align 8
  %11 = alloca i32 (%struct.inode*, %struct.file*, i32, i64)*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  %18 = call %struct.proc_dir_entry* @PDE(%struct.inode* %17)
  store %struct.proc_dir_entry* %18, %struct.proc_dir_entry** %8, align 8
  %19 = load i64, i64* @ENOTTY, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %9, align 8
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %22 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %25 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %30 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %4, align 8
  br label %90

33:                                               ; preds = %3
  %34 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %35 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %39 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %41, align 8
  store i64 (%struct.file*, i32, i64)* %42, i64 (%struct.file*, i32, i64)** %10, align 8
  %43 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %44 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32 (%struct.inode*, %struct.file*, i32, i64)*, i32 (%struct.inode*, %struct.file*, i32, i64)** %46, align 8
  store i32 (%struct.inode*, %struct.file*, i32, i64)* %47, i32 (%struct.inode*, %struct.file*, i32, i64)** %11, align 8
  %48 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %49 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %10, align 8
  %52 = icmp ne i64 (%struct.file*, i32, i64)* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %33
  %54 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %10, align 8
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i64 %54(%struct.file* %55, i32 %56, i64 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @ENOIOCTLCMD, align 8
  %61 = sub nsw i64 0, %60
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i64, i64* @EINVAL, align 8
  %65 = sub nsw i64 0, %64
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %63, %53
  br label %86

67:                                               ; preds = %33
  %68 = load i32 (%struct.inode*, %struct.file*, i32, i64)*, i32 (%struct.inode*, %struct.file*, i32, i64)** %11, align 8
  %69 = icmp ne i32 (%struct.inode*, %struct.file*, i32, i64)* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = call i32 (...) @lock_kernel()
  %72 = load i32 (%struct.inode*, %struct.file*, i32, i64)*, i32 (%struct.inode*, %struct.file*, i32, i64)** %11, align 8
  %73 = load %struct.file*, %struct.file** %5, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.inode*, %struct.inode** %77, align 8
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 %72(%struct.inode* %78, %struct.file* %79, i32 %80, i64 %81)
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %9, align 8
  %84 = call i32 (...) @unlock_kernel()
  br label %85

85:                                               ; preds = %70, %67
  br label %86

86:                                               ; preds = %85, %66
  %87 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %88 = call i32 @pde_users_dec(%struct.proc_dir_entry* %87)
  %89 = load i64, i64* %9, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %86, %28
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @pde_users_dec(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
