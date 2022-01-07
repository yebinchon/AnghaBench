; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_create_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_create_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.file_operations = type { i32 }

@debugfs_mount = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"debugfs: Ah! can not find a parent!\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dentry*, %struct.dentry**, i8*, %struct.file_operations*)* @debugfs_create_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_create_by_name(i8* %0, i32 %1, %struct.dentry* %2, %struct.dentry** %3, i8* %4, %struct.file_operations* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.file_operations*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.dentry* %2, %struct.dentry** %10, align 8
  store %struct.dentry** %3, %struct.dentry*** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.file_operations* %5, %struct.file_operations** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.dentry*, %struct.dentry** %10, align 8
  %16 = icmp ne %struct.dentry* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %6
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @debugfs_mount, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @debugfs_mount, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @debugfs_mount, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.dentry*, %struct.dentry** %29, align 8
  store %struct.dentry* %30, %struct.dentry** %10, align 8
  br label %31

31:                                               ; preds = %25, %20, %17
  br label %32

32:                                               ; preds = %31, %6
  %33 = load %struct.dentry*, %struct.dentry** %10, align 8
  %34 = icmp ne %struct.dentry* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %105

39:                                               ; preds = %32
  %40 = load %struct.dentry**, %struct.dentry*** %11, align 8
  store %struct.dentry* null, %struct.dentry** %40, align 8
  %41 = load %struct.dentry*, %struct.dentry** %10, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call %struct.dentry* @lookup_one_len(i8* %46, %struct.dentry* %47, i32 %49)
  %51 = load %struct.dentry**, %struct.dentry*** %11, align 8
  store %struct.dentry* %50, %struct.dentry** %51, align 8
  %52 = load %struct.dentry**, %struct.dentry*** %11, align 8
  %53 = load %struct.dentry*, %struct.dentry** %52, align 8
  %54 = call i32 @IS_ERR(%struct.dentry* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %94, label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @S_IFMT, align 4
  %59 = and i32 %57, %58
  switch i32 %59, label %80 [
    i32 129, label %60
    i32 128, label %70
  ]

60:                                               ; preds = %56
  %61 = load %struct.dentry*, %struct.dentry** %10, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load %struct.dentry**, %struct.dentry*** %11, align 8
  %65 = load %struct.dentry*, %struct.dentry** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = load %struct.file_operations*, %struct.file_operations** %13, align 8
  %69 = call i32 @debugfs_mkdir(%struct.TYPE_8__* %63, %struct.dentry* %65, i32 %66, i8* %67, %struct.file_operations* %68)
  store i32 %69, i32* %14, align 4
  br label %90

70:                                               ; preds = %56
  %71 = load %struct.dentry*, %struct.dentry** %10, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load %struct.dentry**, %struct.dentry*** %11, align 8
  %75 = load %struct.dentry*, %struct.dentry** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = load %struct.file_operations*, %struct.file_operations** %13, align 8
  %79 = call i32 @debugfs_link(%struct.TYPE_8__* %73, %struct.dentry* %75, i32 %76, i8* %77, %struct.file_operations* %78)
  store i32 %79, i32* %14, align 4
  br label %90

80:                                               ; preds = %56
  %81 = load %struct.dentry*, %struct.dentry** %10, align 8
  %82 = getelementptr inbounds %struct.dentry, %struct.dentry* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load %struct.dentry**, %struct.dentry*** %11, align 8
  %85 = load %struct.dentry*, %struct.dentry** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.file_operations*, %struct.file_operations** %13, align 8
  %89 = call i32 @debugfs_create(%struct.TYPE_8__* %83, %struct.dentry* %85, i32 %86, i8* %87, %struct.file_operations* %88)
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %80, %70, %60
  %91 = load %struct.dentry**, %struct.dentry*** %11, align 8
  %92 = load %struct.dentry*, %struct.dentry** %91, align 8
  %93 = call i32 @dput(%struct.dentry* %92)
  br label %98

94:                                               ; preds = %39
  %95 = load %struct.dentry**, %struct.dentry*** %11, align 8
  %96 = load %struct.dentry*, %struct.dentry** %95, align 8
  %97 = call i32 @PTR_ERR(%struct.dentry* %96)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = load %struct.dentry*, %struct.dentry** %10, align 8
  %100 = getelementptr inbounds %struct.dentry, %struct.dentry* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %98, %35
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @debugfs_mkdir(%struct.TYPE_8__*, %struct.dentry*, i32, i8*, %struct.file_operations*) #1

declare dso_local i32 @debugfs_link(%struct.TYPE_8__*, %struct.dentry*, i32, i8*, %struct.file_operations*) #1

declare dso_local i32 @debugfs_create(%struct.TYPE_8__*, %struct.dentry*, i32, i8*, %struct.file_operations*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
