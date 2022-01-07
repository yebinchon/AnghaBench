; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_proc_ns_dir_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_proc_ns_dir_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_ns_operations = type { i32 }
%struct.file = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ns_entries = common dso_local global %struct.proc_ns_operations** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*)* @proc_ns_dir_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_ns_dir_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.proc_ns_operations**, align 8
  %12 = alloca %struct.proc_ns_operations**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %8, align 8
  %19 = load %struct.dentry*, %struct.dentry** %8, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = call %struct.task_struct* @get_proc_task(%struct.inode* %22)
  store %struct.task_struct* %23, %struct.task_struct** %10, align 8
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %27 = icmp ne %struct.task_struct* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %116

29:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %71 [
    i32 0, label %34
    i32 1, label %53
  ]

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @DT_DIR, align 4
  %43 = call i32 %38(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %40, i32 %41, i32 %42)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %113

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %29, %46
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = call i32 @parent_ino(%struct.dentry* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @DT_DIR, align 4
  %61 = call i32 %56(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %58, i32 %59, i32 %60)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %113

64:                                               ; preds = %53
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load %struct.file*, %struct.file** %4, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %29, %64
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 2
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.proc_ns_operations** %75)
  %77 = icmp sge i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %14, align 4
  br label %113

79:                                               ; preds = %71
  %80 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.proc_ns_operations*, %struct.proc_ns_operations** %80, i64 %82
  store %struct.proc_ns_operations** %83, %struct.proc_ns_operations*** %11, align 8
  %84 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  %85 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.proc_ns_operations** %85)
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.proc_ns_operations*, %struct.proc_ns_operations** %84, i64 %88
  store %struct.proc_ns_operations** %89, %struct.proc_ns_operations*** %12, align 8
  br label %90

90:                                               ; preds = %104, %79
  %91 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %11, align 8
  %92 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %12, align 8
  %93 = icmp ule %struct.proc_ns_operations** %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %90
  %95 = load %struct.file*, %struct.file** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %98 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %99 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %11, align 8
  %100 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %99, align 8
  %101 = call i32 @proc_ns_fill_cache(%struct.file* %95, i8* %96, i32 (i8*, i8*, i32, i32, i32, i32)* %97, %struct.task_struct* %98, %struct.proc_ns_operations* %100)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %113

104:                                              ; preds = %94
  %105 = load %struct.file*, %struct.file** %4, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %11, align 8
  %110 = getelementptr inbounds %struct.proc_ns_operations*, %struct.proc_ns_operations** %109, i32 1
  store %struct.proc_ns_operations** %110, %struct.proc_ns_operations*** %11, align 8
  br label %90

111:                                              ; preds = %90
  br label %112

112:                                              ; preds = %111
  store i32 1, i32* %14, align 4
  br label %113

113:                                              ; preds = %112, %103, %78, %63, %45
  %114 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %115 = call i32 @put_task_struct(%struct.task_struct* %114)
  br label %116

116:                                              ; preds = %113, %28
  %117 = load i32, i32* %14, align 4
  ret i32 %117
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @parent_ino(%struct.dentry*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.proc_ns_operations**) #1

declare dso_local i32 @proc_ns_fill_cache(%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*, %struct.task_struct*, %struct.proc_ns_operations*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
