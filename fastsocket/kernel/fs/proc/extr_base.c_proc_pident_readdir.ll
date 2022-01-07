; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pident_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pident_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.pid_entry = type { i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*, %struct.pid_entry*, i32)* @proc_pident_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pident_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i32, i32, i32)* %2, %struct.pid_entry* %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %9 = alloca %struct.pid_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.task_struct*, align 8
  %15 = alloca %struct.pid_entry*, align 8
  %16 = alloca %struct.pid_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 (i8*, i8*, i32, i32, i32, i32)** %8, align 8
  store %struct.pid_entry* %3, %struct.pid_entry** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.dentry*, %struct.dentry** %21, align 8
  store %struct.dentry* %22, %struct.dentry** %12, align 8
  %23 = load %struct.dentry*, %struct.dentry** %12, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %13, align 8
  %26 = load %struct.inode*, %struct.inode** %13, align 8
  %27 = call %struct.task_struct* @get_proc_task(%struct.inode* %26)
  store %struct.task_struct* %27, %struct.task_struct** %14, align 8
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %18, align 4
  %30 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  %31 = icmp ne %struct.task_struct* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  br label %117

33:                                               ; preds = %5
  store i32 0, i32* %18, align 4
  %34 = load %struct.file*, %struct.file** %6, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %75 [
    i32 0, label %38
    i32 1, label %57
  ]

38:                                               ; preds = %33
  %39 = load %struct.inode*, %struct.inode** %13, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %17, align 4
  %42 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %8, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @DT_DIR, align 4
  %47 = call i32 %42(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %44, i32 %45, i32 %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %114

50:                                               ; preds = %38
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load %struct.file*, %struct.file** %6, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %33, %50
  %58 = load %struct.dentry*, %struct.dentry** %12, align 8
  %59 = call i32 @parent_ino(%struct.dentry* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %8, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @DT_DIR, align 4
  %65 = call i32 %60(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %62, i32 %63, i32 %64)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %114

68:                                               ; preds = %57
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = load %struct.file*, %struct.file** %6, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %33, %68
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 2
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp uge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 1, i32* %18, align 4
  br label %114

82:                                               ; preds = %75
  %83 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %83, i64 %85
  store %struct.pid_entry* %86, %struct.pid_entry** %15, align 8
  %87 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sub i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %87, i64 %90
  store %struct.pid_entry* %91, %struct.pid_entry** %16, align 8
  br label %92

92:                                               ; preds = %105, %82
  %93 = load %struct.pid_entry*, %struct.pid_entry** %15, align 8
  %94 = load %struct.pid_entry*, %struct.pid_entry** %16, align 8
  %95 = icmp ule %struct.pid_entry* %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load %struct.file*, %struct.file** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %8, align 8
  %100 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  %101 = load %struct.pid_entry*, %struct.pid_entry** %15, align 8
  %102 = call i32 @proc_pident_fill_cache(%struct.file* %97, i8* %98, i32 (i8*, i8*, i32, i32, i32, i32)* %99, %struct.task_struct* %100, %struct.pid_entry* %101)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %114

105:                                              ; preds = %96
  %106 = load %struct.file*, %struct.file** %6, align 8
  %107 = getelementptr inbounds %struct.file, %struct.file* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.pid_entry*, %struct.pid_entry** %15, align 8
  %111 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %110, i32 1
  store %struct.pid_entry* %111, %struct.pid_entry** %15, align 8
  br label %92

112:                                              ; preds = %92
  br label %113

113:                                              ; preds = %112
  store i32 1, i32* %18, align 4
  br label %114

114:                                              ; preds = %113, %104, %81, %67, %49
  %115 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  %116 = call i32 @put_task_struct(%struct.task_struct* %115)
  br label %117

117:                                              ; preds = %114, %32
  %118 = load i32, i32* %18, align 4
  ret i32 %118
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @parent_ino(%struct.dentry*) #1

declare dso_local i32 @proc_pident_fill_cache(%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*, %struct.task_struct*, %struct.pid_entry*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
