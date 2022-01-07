; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_readfd_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_readfd_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.task_struct = type { i32 }
%struct.files_struct = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@PROC_NUMBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*, i32)* @proc_readfd_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_readfd_common(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.files_struct*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.dentry*, %struct.dentry** %22, align 8
  store %struct.dentry* %23, %struct.dentry** %9, align 8
  %24 = load %struct.dentry*, %struct.dentry** %9, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %10, align 8
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call %struct.task_struct* @get_proc_task(%struct.inode* %27)
  store %struct.task_struct* %28, %struct.task_struct** %11, align 8
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %14, align 4
  %31 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %32 = icmp ne %struct.task_struct* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  br label %134

34:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %69 [
    i32 0, label %39
    i32 1, label %54
  ]

39:                                               ; preds = %34
  %40 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DT_DIR, align 4
  %46 = call i32 %40(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 0, i32 %44, i32 %45)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %131

49:                                               ; preds = %39
  %50 = load %struct.file*, %struct.file** %5, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %34, %49
  %55 = load %struct.dentry*, %struct.dentry** %9, align 8
  %56 = call i32 @parent_ino(%struct.dentry* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @DT_DIR, align 4
  %61 = call i32 %57(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 1, i32 %59, i32 %60)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %131

64:                                               ; preds = %54
  %65 = load %struct.file*, %struct.file** %5, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %34, %64
  %70 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %71 = call %struct.files_struct* @get_files_struct(%struct.task_struct* %70)
  store %struct.files_struct* %71, %struct.files_struct** %15, align 8
  %72 = load %struct.files_struct*, %struct.files_struct** %15, align 8
  %73 = icmp ne %struct.files_struct* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %131

75:                                               ; preds = %69
  %76 = call i32 (...) @rcu_read_lock()
  %77 = load %struct.file*, %struct.file** %5, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub i32 %79, 2
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %119, %75
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.files_struct*, %struct.files_struct** %15, align 8
  %84 = call %struct.TYPE_4__* @files_fdtable(%struct.files_struct* %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ult i32 %82, %86
  br i1 %87, label %88, label %126

88:                                               ; preds = %81
  %89 = load i32, i32* @PROC_NUMBUF, align 4
  %90 = zext i32 %89 to i64
  %91 = call i8* @llvm.stacksave()
  store i8* %91, i8** %16, align 8
  %92 = alloca i8, i64 %90, align 16
  store i64 %90, i64* %17, align 8
  %93 = load %struct.files_struct*, %struct.files_struct** %15, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @fcheck_files(%struct.files_struct* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  store i32 7, i32* %19, align 4
  br label %115

98:                                               ; preds = %88
  %99 = call i32 (...) @rcu_read_unlock()
  %100 = trunc i64 %90 to i32
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @snprintf(i8* %92, i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 %102, i32* %18, align 4
  %103 = load %struct.file*, %struct.file** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %109 = call i32 @proc_fill_cache(%struct.file* %103, i8* %104, i32 (i8*, i8*, i32, i32, i32, i32)* %105, i8* %92, i32 %106, i32 %107, %struct.task_struct* %108, i32* %12)
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = call i32 (...) @rcu_read_lock()
  store i32 5, i32* %19, align 4
  br label %115

113:                                              ; preds = %98
  %114 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %19, align 4
  br label %115

115:                                              ; preds = %113, %111, %97
  %116 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %19, align 4
  switch i32 %117, label %136 [
    i32 0, label %118
    i32 7, label %119
    i32 5, label %126
  ]

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, i32* %12, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %12, align 4
  %122 = load %struct.file*, %struct.file** %5, align 8
  %123 = getelementptr inbounds %struct.file, %struct.file* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add i32 %124, 1
  store i32 %125, i32* %123, align 8
  br label %81

126:                                              ; preds = %115, %81
  %127 = call i32 (...) @rcu_read_unlock()
  %128 = load %struct.files_struct*, %struct.files_struct** %15, align 8
  %129 = call i32 @put_files_struct(%struct.files_struct* %128)
  br label %130

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %74, %63, %48
  %132 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %133 = call i32 @put_task_struct(%struct.task_struct* %132)
  br label %134

134:                                              ; preds = %131, %33
  %135 = load i32, i32* %14, align 4
  ret i32 %135

136:                                              ; preds = %115
  unreachable
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @parent_ino(%struct.dentry*) #1

declare dso_local %struct.files_struct* @get_files_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_4__* @files_fdtable(%struct.files_struct*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fcheck_files(%struct.files_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @proc_fill_cache(%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*, i8*, i32, i32, %struct.task_struct*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @put_files_struct(%struct.files_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
