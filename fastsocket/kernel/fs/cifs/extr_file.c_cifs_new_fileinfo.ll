; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_new_fileinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_new_fileinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.cifsFileInfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.file = type { i32, %struct.cifsFileInfo*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifsInodeInfo = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@cifs_oplock_break_ops = common dso_local global i32 0, align 4
@cifs_file_list_lock = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cifsFileInfo* @cifs_new_fileinfo(i32 %0, %struct.file* %1, %struct.tcon_link* %2, i32 %3) #0 {
  %5 = alloca %struct.cifsFileInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.tcon_link*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.cifsInodeInfo*, align 8
  %13 = alloca %struct.cifsFileInfo*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.file* %1, %struct.file** %7, align 8
  store %struct.tcon_link* %2, %struct.tcon_link** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %10, align 8
  %18 = load %struct.dentry*, %struct.dentry** %10, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %21)
  store %struct.cifsInodeInfo* %22, %struct.cifsInodeInfo** %12, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.cifsFileInfo* @kzalloc(i32 56, i32 %23)
  store %struct.cifsFileInfo* %24, %struct.cifsFileInfo** %13, align 8
  %25 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %26 = icmp eq %struct.cifsFileInfo* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  store %struct.cifsFileInfo* %28, %struct.cifsFileInfo** %5, align 8
  br label %108

29:                                               ; preds = %4
  %30 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %31 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %34 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %33, i32 0, i32 13
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %39 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %38, i32 0, i32 12
  store i32 %37, i32* %39, align 4
  %40 = call i32 (...) @current_fsuid()
  %41 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %42 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 4
  %43 = load %struct.dentry*, %struct.dentry** %10, align 8
  %44 = call i32 @dget(%struct.dentry* %43)
  %45 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %46 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 4
  %47 = load %struct.file*, %struct.file** %7, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %51 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %53 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %55 = call i32 @cifs_get_tlink(%struct.tcon_link* %54)
  %56 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %57 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %59 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %58, i32 0, i32 7
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %62 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %61, i32 0, i32 6
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %65 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %64, i32 0, i32 5
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %68 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %67, i32 0, i32 4
  %69 = call i32 @vslow_work_init(i32* %68, i32* @cifs_oplock_break_ops)
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cifs_sb_active(i32 %72)
  %74 = call i32 @spin_lock(i32* @cifs_file_list_lock)
  %75 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %76 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %75, i32 0, i32 3
  %77 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %78 = call %struct.TYPE_5__* @tlink_tcon(%struct.tcon_link* %77)
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @list_add(i32* %76, i32* %79)
  %81 = load %struct.file*, %struct.file** %7, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @FMODE_READ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %29
  %88 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %89 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %88, i32 0, i32 2
  %90 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %91 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %90, i32 0, i32 0
  %92 = call i32 @list_add(i32* %89, i32* %91)
  br label %99

93:                                               ; preds = %29
  %94 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %95 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %94, i32 0, i32 2
  %96 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %97 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %96, i32 0, i32 0
  %98 = call i32 @list_add_tail(i32* %95, i32* %97)
  br label %99

99:                                               ; preds = %93, %87
  %100 = call i32 @spin_unlock(i32* @cifs_file_list_lock)
  %101 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @cifs_set_oplock_level(%struct.cifsInodeInfo* %101, i32 %102)
  %104 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %105 = load %struct.file*, %struct.file** %7, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 1
  store %struct.cifsFileInfo* %104, %struct.cifsFileInfo** %106, align 8
  %107 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  store %struct.cifsFileInfo* %107, %struct.cifsFileInfo** %5, align 8
  br label %108

108:                                              ; preds = %99, %27
  %109 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  ret %struct.cifsFileInfo* %109
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifsFileInfo* @kzalloc(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @cifs_get_tlink(%struct.tcon_link*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vslow_work_init(i32*, i32*) #1

declare dso_local i32 @cifs_sb_active(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_set_oplock_level(%struct.cifsInodeInfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
