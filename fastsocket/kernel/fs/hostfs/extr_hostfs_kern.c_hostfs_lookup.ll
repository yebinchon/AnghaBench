; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32* }
%struct.nameidata = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@hostfs_dentry_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @hostfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @hostfs_iget(i32 %13)
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = call i64 @IS_ERR(%struct.inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.inode* %19)
  store i32 %20, i32* %10, align 4
  br label %63

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call i32 @init_inode(%struct.inode* %22, %struct.dentry* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %60

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = call i8* @dentry_name(%struct.dentry* %31, i32 0)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %60

36:                                               ; preds = %28
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @read_name(%struct.inode* %37, i8* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @iput(%struct.inode* %47)
  store %struct.inode* null, %struct.inode** %8, align 8
  br label %54

49:                                               ; preds = %36
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %60

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %46
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = call i32 @d_add(%struct.dentry* %55, %struct.inode* %56)
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 0
  store i32* @hostfs_dentry_ops, i32** %59, align 8
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %66

60:                                               ; preds = %52, %35, %27
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call i32 @iput(%struct.inode* %61)
  br label %63

63:                                               ; preds = %60, %18
  %64 = load i32, i32* %10, align 4
  %65 = call %struct.dentry* @ERR_PTR(i32 %64)
  store %struct.dentry* %65, %struct.dentry** %4, align 8
  br label %66

66:                                               ; preds = %63, %54
  %67 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %67
}

declare dso_local %struct.inode* @hostfs_iget(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @init_inode(%struct.inode*, %struct.dentry*) #1

declare dso_local i8* @dentry_name(%struct.dentry*, i32) #1

declare dso_local i32 @read_name(%struct.inode*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
