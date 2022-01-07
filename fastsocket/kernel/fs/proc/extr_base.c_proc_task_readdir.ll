; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_task_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_task_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { i32 }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.task_struct = type { %struct.task_struct* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i64, i32, i32)*)* @proc_task_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_task_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i64, i32, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*, i32, i64, i32, i32)*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pid_namespace*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i8*, i32, i64, i32, i32)* %2, i32 (i8*, i8*, i32, i64, i32, i32)** %6, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %7, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %8, align 8
  store %struct.task_struct* null, %struct.task_struct** %9, align 8
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call %struct.task_struct* @get_proc_task(%struct.inode* %24)
  store %struct.task_struct* %25, %struct.task_struct** %10, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %27 = icmp ne %struct.task_struct* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %143

29:                                               ; preds = %3
  %30 = call i32 (...) @rcu_read_lock()
  %31 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %32 = call i64 @pid_alive(%struct.task_struct* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 0
  %37 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  store %struct.task_struct* %37, %struct.task_struct** %9, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %39 = call i32 @get_task_struct(%struct.task_struct* %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %43 = call i32 @put_task_struct(%struct.task_struct* %42)
  %44 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %45 = icmp ne %struct.task_struct* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %143

47:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  switch i64 %50, label %88 [
    i64 0, label %51
    i64 1, label %70
  ]

51:                                               ; preds = %47
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32 (i8*, i8*, i32, i64, i32, i32)*, i32 (i8*, i8*, i32, i64, i32, i32)** %6, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.file*, %struct.file** %4, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @DT_DIR, align 4
  %62 = call i32 %55(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i64 %59, i32 %60, i32 %61)
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %140

65:                                               ; preds = %51
  %66 = load %struct.file*, %struct.file** %4, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %47, %65
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = call i32 @parent_ino(%struct.dentry* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32 (i8*, i8*, i32, i64, i32, i32)*, i32 (i8*, i8*, i32, i64, i32, i32)** %6, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.file*, %struct.file** %4, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @DT_DIR, align 4
  %80 = call i32 %73(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i64 %77, i32 %78, i32 %79)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %140

83:                                               ; preds = %70
  %84 = load %struct.file*, %struct.file** %4, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %83, %47
  %89 = load %struct.file*, %struct.file** %4, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.pid_namespace*, %struct.pid_namespace** %94, align 8
  store %struct.pid_namespace* %95, %struct.pid_namespace** %14, align 8
  %96 = load %struct.file*, %struct.file** %4, align 8
  %97 = getelementptr inbounds %struct.file, %struct.file* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %13, align 4
  %100 = load %struct.file*, %struct.file** %4, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.file*, %struct.file** %4, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %106, 2
  %108 = load %struct.pid_namespace*, %struct.pid_namespace** %14, align 8
  %109 = call %struct.task_struct* @first_tid(%struct.task_struct* %102, i32 %103, i64 %107, %struct.pid_namespace* %108)
  store %struct.task_struct* %109, %struct.task_struct** %10, align 8
  br label %110

110:                                              ; preds = %132, %88
  %111 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %112 = icmp ne %struct.task_struct* %111, null
  br i1 %112, label %113, label %139

113:                                              ; preds = %110
  %114 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %115 = load %struct.pid_namespace*, %struct.pid_namespace** %14, align 8
  %116 = call i32 @task_pid_nr_ns(%struct.task_struct* %114, %struct.pid_namespace* %115)
  store i32 %116, i32* %13, align 4
  %117 = load %struct.file*, %struct.file** %4, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = load i32 (i8*, i8*, i32, i64, i32, i32)*, i32 (i8*, i8*, i32, i64, i32, i32)** %6, align 8
  %120 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i64 @proc_task_fill_cache(%struct.file* %117, i8* %118, i32 (i8*, i8*, i32, i64, i32, i32)* %119, %struct.task_struct* %120, i32 %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %113
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.file*, %struct.file** %4, align 8
  %128 = getelementptr inbounds %struct.file, %struct.file* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %130 = call i32 @put_task_struct(%struct.task_struct* %129)
  br label %139

131:                                              ; preds = %113
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %134 = call %struct.task_struct* @next_tid(%struct.task_struct* %133)
  store %struct.task_struct* %134, %struct.task_struct** %10, align 8
  %135 = load %struct.file*, %struct.file** %4, align 8
  %136 = getelementptr inbounds %struct.file, %struct.file* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %136, align 8
  br label %110

139:                                              ; preds = %124, %110
  br label %140

140:                                              ; preds = %139, %82, %64
  %141 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %142 = call i32 @put_task_struct(%struct.task_struct* %141)
  br label %143

143:                                              ; preds = %140, %46, %28
  %144 = load i32, i32* %11, align 4
  ret i32 %144
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @pid_alive(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @parent_ino(%struct.dentry*) #1

declare dso_local %struct.task_struct* @first_tid(%struct.task_struct*, i32, i64, %struct.pid_namespace*) #1

declare dso_local i32 @task_pid_nr_ns(%struct.task_struct*, %struct.pid_namespace*) #1

declare dso_local i64 @proc_task_fill_cache(%struct.file*, i8*, i32 (i8*, i8*, i32, i64, i32, i32)*, %struct.task_struct*, i32) #1

declare dso_local %struct.task_struct* @next_tid(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
