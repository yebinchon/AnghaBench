; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_fd_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_fd_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32 }
%struct.dentry = type { i32* }
%struct.task_struct = type { i32 }
%struct.file = type { i32 }
%struct.files_struct = type { i32 }
%struct.proc_inode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@proc_pid_link_inode_operations = common dso_local global i32 0, align 4
@proc_fd_link = common dso_local global i32 0, align 4
@tid_fd_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)* @proc_fd_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_fd_instantiate(%struct.inode* %0, %struct.dentry* %1, %struct.task_struct* %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.files_struct*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.proc_inode*, align 8
  %14 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.dentry* @ERR_PTR(i32 %19)
  store %struct.dentry* %20, %struct.dentry** %14, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %25 = call %struct.inode* @proc_pid_make_inode(i32 %23, %struct.task_struct* %24)
  store %struct.inode* %25, %struct.inode** %12, align 8
  %26 = load %struct.inode*, %struct.inode** %12, align 8
  %27 = icmp ne %struct.inode* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %107

29:                                               ; preds = %4
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = call %struct.proc_inode* @PROC_I(%struct.inode* %30)
  store %struct.proc_inode* %31, %struct.proc_inode** %13, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.proc_inode*, %struct.proc_inode** %13, align 8
  %34 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %36 = call %struct.files_struct* @get_files_struct(%struct.task_struct* %35)
  store %struct.files_struct* %36, %struct.files_struct** %11, align 8
  %37 = load %struct.files_struct*, %struct.files_struct** %11, align 8
  %38 = icmp ne %struct.files_struct* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %115

40:                                               ; preds = %29
  %41 = load i32, i32* @S_IFLNK, align 4
  %42 = load %struct.inode*, %struct.inode** %12, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.files_struct*, %struct.files_struct** %11, align 8
  %45 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %44, i32 0, i32 0
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.files_struct*, %struct.files_struct** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.file* @fcheck_files(%struct.files_struct* %47, i32 %48)
  store %struct.file* %49, %struct.file** %10, align 8
  %50 = load %struct.file*, %struct.file** %10, align 8
  %51 = icmp ne %struct.file* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  br label %109

53:                                               ; preds = %40
  %54 = load %struct.file*, %struct.file** %10, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FMODE_READ, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i32, i32* @S_IRUSR, align 4
  %62 = load i32, i32* @S_IXUSR, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.inode*, %struct.inode** %12, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %60, %53
  %69 = load %struct.file*, %struct.file** %10, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FMODE_WRITE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load i32, i32* @S_IWUSR, align 4
  %77 = load i32, i32* @S_IXUSR, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.inode*, %struct.inode** %12, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %75, %68
  %84 = load %struct.files_struct*, %struct.files_struct** %11, align 8
  %85 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load %struct.files_struct*, %struct.files_struct** %11, align 8
  %88 = call i32 @put_files_struct(%struct.files_struct* %87)
  %89 = load %struct.inode*, %struct.inode** %12, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 2
  store i32* @proc_pid_link_inode_operations, i32** %90, align 8
  %91 = load %struct.inode*, %struct.inode** %12, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  store i32 64, i32* %92, align 4
  %93 = load i32, i32* @proc_fd_link, align 4
  %94 = load %struct.proc_inode*, %struct.proc_inode** %13, align 8
  %95 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.dentry*, %struct.dentry** %6, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 0
  store i32* @tid_fd_dentry_operations, i32** %98, align 8
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  %100 = load %struct.inode*, %struct.inode** %12, align 8
  %101 = call i32 @d_add(%struct.dentry* %99, %struct.inode* %100)
  %102 = load %struct.dentry*, %struct.dentry** %6, align 8
  %103 = call i64 @tid_fd_revalidate(%struct.dentry* %102, i32* null)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %83
  store %struct.dentry* null, %struct.dentry** %14, align 8
  br label %106

106:                                              ; preds = %105, %83
  br label %107

107:                                              ; preds = %115, %106, %28
  %108 = load %struct.dentry*, %struct.dentry** %14, align 8
  ret %struct.dentry* %108

109:                                              ; preds = %52
  %110 = load %struct.files_struct*, %struct.files_struct** %11, align 8
  %111 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.files_struct*, %struct.files_struct** %11, align 8
  %114 = call i32 @put_files_struct(%struct.files_struct* %113)
  br label %115

115:                                              ; preds = %109, %39
  %116 = load %struct.inode*, %struct.inode** %12, align 8
  %117 = call i32 @iput(%struct.inode* %116)
  br label %107
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @proc_pid_make_inode(i32, %struct.task_struct*) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local %struct.files_struct* @get_files_struct(%struct.task_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.file* @fcheck_files(%struct.files_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_files_struct(%struct.files_struct*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @tid_fd_revalidate(%struct.dentry*, i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
