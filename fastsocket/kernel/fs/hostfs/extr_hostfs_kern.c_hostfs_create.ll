; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inode* @hostfs_iget(i32 %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i64 @IS_ERR(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call i32 @PTR_ERR(%struct.inode* %22)
  store i32 %23, i32* %12, align 4
  br label %100

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = call i32 @init_inode(%struct.inode* %25, %struct.dentry* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %97

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = call i8* @dentry_name(%struct.dentry* %34, i32 0)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %97

39:                                               ; preds = %31
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @S_IRUSR, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @S_IWUSR, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @S_IXUSR, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @S_IRGRP, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @S_IWGRP, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @S_IXGRP, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @S_IROTH, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @S_IWOTH, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @S_IXOTH, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @file_create(i8* %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %39
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %12, align 4
  br label %77

73:                                               ; preds = %39
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @read_name(%struct.inode* %74, i8* %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %73, %71
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @kfree(i8* %78)
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %97

83:                                               ; preds = %77
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = call %struct.TYPE_2__* @HOSTFS_I(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @FMODE_READ, align 4
  %89 = load i32, i32* @FMODE_WRITE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = call %struct.TYPE_2__* @HOSTFS_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.dentry*, %struct.dentry** %7, align 8
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = call i32 @d_instantiate(%struct.dentry* %94, %struct.inode* %95)
  store i32 0, i32* %5, align 4
  br label %102

97:                                               ; preds = %82, %38, %30
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = call i32 @iput(%struct.inode* %98)
  br label %100

100:                                              ; preds = %97, %21
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %83
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.inode* @hostfs_iget(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @init_inode(%struct.inode*, %struct.dentry*) #1

declare dso_local i8* @dentry_name(%struct.dentry*, i32) #1

declare dso_local i32 @file_create(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @read_name(%struct.inode*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.TYPE_2__* @HOSTFS_I(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
