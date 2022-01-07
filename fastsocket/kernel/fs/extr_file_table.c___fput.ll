; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file_table.c___fput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file_table.c___fput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.inode*, %struct.file*)*, i32 (i32, %struct.file*, i32)* }

@FASYNC = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fput(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %9, %struct.dentry** %3, align 8
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.vfsmount*, %struct.vfsmount** %12, align 8
  store %struct.vfsmount* %13, %struct.vfsmount** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %5, align 8
  %17 = call i32 (...) @might_sleep()
  %18 = load %struct.file*, %struct.file** %2, align 8
  %19 = call i32 @fsnotify_close(%struct.file* %18)
  %20 = load %struct.file*, %struct.file** %2, align 8
  %21 = call i32 @eventpoll_release(%struct.file* %20)
  %22 = load %struct.file*, %struct.file** %2, align 8
  %23 = call i32 @locks_remove_flock(%struct.file* %22)
  %24 = load %struct.file*, %struct.file** %2, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FASYNC, align 4
  %28 = and i32 %26, %27
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %1
  %32 = load %struct.file*, %struct.file** %2, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.file*, %struct.file** %2, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32 (i32, %struct.file*, i32)*, i32 (i32, %struct.file*, i32)** %40, align 8
  %42 = icmp ne i32 (i32, %struct.file*, i32)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.file*, %struct.file** %2, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32 (i32, %struct.file*, i32)*, i32 (i32, %struct.file*, i32)** %47, align 8
  %49 = load %struct.file*, %struct.file** %2, align 8
  %50 = call i32 %48(i32 -1, %struct.file* %49, i32 0)
  br label %51

51:                                               ; preds = %43, %36, %31
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.file*, %struct.file** %2, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.file*, %struct.file** %2, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %61, align 8
  %63 = icmp ne i32 (%struct.inode*, %struct.file*)* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.file*, %struct.file** %2, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %68, align 8
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = load %struct.file*, %struct.file** %2, align 8
  %72 = call i32 %69(%struct.inode* %70, %struct.file* %71)
  br label %73

73:                                               ; preds = %64, %57, %52
  %74 = load %struct.file*, %struct.file** %2, align 8
  %75 = call i32 @security_file_free(%struct.file* %74)
  %76 = load %struct.file*, %struct.file** %2, align 8
  %77 = call i32 @ima_file_free(%struct.file* %76)
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @S_ISCHR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br label %88

88:                                               ; preds = %83, %73
  %89 = phi i1 [ false, %73 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @cdev_put(i32* %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.file*, %struct.file** %2, align 8
  %100 = getelementptr inbounds %struct.file, %struct.file* %99, i32 0, i32 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = call i32 @fops_put(%struct.TYPE_6__* %101)
  %103 = load %struct.file*, %struct.file** %2, align 8
  %104 = getelementptr inbounds %struct.file, %struct.file* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @put_pid(i32 %106)
  %108 = load %struct.file*, %struct.file** %2, align 8
  %109 = call i32 @file_kill(%struct.file* %108)
  %110 = load %struct.file*, %struct.file** %2, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @FMODE_WRITE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %98
  %117 = load %struct.file*, %struct.file** %2, align 8
  %118 = call i32 @drop_file_write_access(%struct.file* %117)
  br label %119

119:                                              ; preds = %116, %98
  %120 = load %struct.file*, %struct.file** %2, align 8
  %121 = getelementptr inbounds %struct.file, %struct.file* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %122, align 8
  %123 = load %struct.file*, %struct.file** %2, align 8
  %124 = getelementptr inbounds %struct.file, %struct.file* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %125, align 8
  %126 = load %struct.file*, %struct.file** %2, align 8
  %127 = call i32 @file_free(%struct.file* %126)
  %128 = load %struct.dentry*, %struct.dentry** %3, align 8
  %129 = call i32 @dput(%struct.dentry* %128)
  %130 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %131 = call i32 @mntput(%struct.vfsmount* %130)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @fsnotify_close(%struct.file*) #1

declare dso_local i32 @eventpoll_release(%struct.file*) #1

declare dso_local i32 @locks_remove_flock(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @security_file_free(%struct.file*) #1

declare dso_local i32 @ima_file_free(%struct.file*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @cdev_put(i32*) #1

declare dso_local i32 @fops_put(%struct.TYPE_6__*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @file_kill(%struct.file*) #1

declare dso_local i32 @drop_file_write_access(%struct.file*) #1

declare dso_local i32 @file_free(%struct.file*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
