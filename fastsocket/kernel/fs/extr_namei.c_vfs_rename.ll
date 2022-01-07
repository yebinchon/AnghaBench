; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8* }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @S_ISDIR(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.dentry*, %struct.dentry** %9, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp eq %struct.TYPE_6__* %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %112

28:                                               ; preds = %4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @may_delete(%struct.inode* %29, %struct.dentry* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %112

37:                                               ; preds = %28
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = load %struct.dentry*, %struct.dentry** %9, align 8
  %45 = call i32 @may_create(%struct.inode* %43, %struct.dentry* %44)
  store i32 %45, i32* %10, align 4
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = load %struct.dentry*, %struct.dentry** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @may_delete(%struct.inode* %47, %struct.dentry* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %112

56:                                               ; preds = %51
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @EPERM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %112

66:                                               ; preds = %56
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call i32 @vfs_dq_init(%struct.inode* %67)
  %69 = load %struct.inode*, %struct.inode** %8, align 8
  %70 = call i32 @vfs_dq_init(%struct.inode* %69)
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @fsnotify_oldname_init(i8* %74)
  store i8* %75, i8** %12, align 8
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %66
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = load %struct.dentry*, %struct.dentry** %7, align 8
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = load %struct.dentry*, %struct.dentry** %9, align 8
  %83 = call i32 @vfs_rename_dir(%struct.inode* %79, %struct.dentry* %80, %struct.inode* %81, %struct.dentry* %82)
  store i32 %83, i32* %10, align 4
  br label %90

84:                                               ; preds = %66
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = load %struct.dentry*, %struct.dentry** %7, align 8
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = load %struct.dentry*, %struct.dentry** %9, align 8
  %89 = call i32 @vfs_rename_other(%struct.inode* %85, %struct.dentry* %86, %struct.inode* %87, %struct.dentry* %88)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %84, %78
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %90
  %94 = load %struct.dentry*, %struct.dentry** %7, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %13, align 8
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.dentry*, %struct.dentry** %9, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load %struct.dentry*, %struct.dentry** %7, align 8
  %107 = call i32 @fsnotify_move(%struct.inode* %98, %struct.inode* %99, i8* %100, i8* %101, i32 %102, %struct.TYPE_6__* %105, %struct.dentry* %106)
  br label %108

108:                                              ; preds = %93, %90
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @fsnotify_oldname_free(i8* %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %63, %54, %35, %27
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @may_delete(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @may_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i8* @fsnotify_oldname_init(i8*) #1

declare dso_local i32 @vfs_rename_dir(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @vfs_rename_other(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @fsnotify_move(%struct.inode*, %struct.inode*, i8*, i8*, i32, %struct.TYPE_6__*, %struct.dentry*) #1

declare dso_local i32 @fsnotify_oldname_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
