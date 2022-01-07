; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_inode.c_securityfs_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_inode.c_securityfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__*, %struct.dentry* }
%struct.TYPE_3__ = type { i32, i32 }

@mount = common dso_local global i32 0, align 4
@mount_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @securityfs_remove(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = icmp ne %struct.dentry* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = call i64 @IS_ERR(%struct.dentry* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  br label %68

11:                                               ; preds = %6
  %12 = load %struct.dentry*, %struct.dentry** %2, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %14, %struct.dentry** %3, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = icmp ne %struct.dentry* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %11
  br label %68

23:                                               ; preds = %17
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.dentry*, %struct.dentry** %2, align 8
  %30 = call i64 @positive(%struct.dentry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %23
  %33 = load %struct.dentry*, %struct.dentry** %2, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.dentry*, %struct.dentry** %2, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @S_ISDIR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.dentry*, %struct.dentry** %3, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.dentry*, %struct.dentry** %2, align 8
  %50 = call i32 @simple_rmdir(%struct.TYPE_3__* %48, %struct.dentry* %49)
  br label %57

51:                                               ; preds = %37
  %52 = load %struct.dentry*, %struct.dentry** %3, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.dentry*, %struct.dentry** %2, align 8
  %56 = call i32 @simple_unlink(%struct.TYPE_3__* %54, %struct.dentry* %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.dentry*, %struct.dentry** %2, align 8
  %59 = call i32 @dput(%struct.dentry* %58)
  br label %60

60:                                               ; preds = %57, %32
  br label %61

61:                                               ; preds = %60, %23
  %62 = load %struct.dentry*, %struct.dentry** %3, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = call i32 @simple_release_fs(i32* @mount, i32* @mount_count)
  br label %68

68:                                               ; preds = %61, %22, %10
  ret void
}

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @positive(%struct.dentry*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @simple_rmdir(%struct.TYPE_3__*, %struct.dentry*) #1

declare dso_local i32 @simple_unlink(%struct.TYPE_3__*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @simple_release_fs(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
