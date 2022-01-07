; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_proc_ns_dir_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_proc_ns_dir_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_ns_operations = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nameidata = type { i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ns_entries = common dso_local global %struct.proc_ns_operations** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @proc_ns_dir_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_ns_dir_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.proc_ns_operations**, align 8
  %10 = alloca %struct.proc_ns_operations**, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.task_struct* @get_proc_task(%struct.inode* %12)
  store %struct.task_struct* %13, %struct.task_struct** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.dentry* @ERR_PTR(i32 %19)
  store %struct.dentry* %20, %struct.dentry** %7, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %22 = icmp ne %struct.task_struct* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %75

24:                                               ; preds = %3
  %25 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  %26 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  %27 = call i64 @ARRAY_SIZE(%struct.proc_ns_operations** %26)
  %28 = getelementptr inbounds %struct.proc_ns_operations*, %struct.proc_ns_operations** %25, i64 %27
  store %struct.proc_ns_operations** %28, %struct.proc_ns_operations*** %10, align 8
  %29 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  store %struct.proc_ns_operations** %29, %struct.proc_ns_operations*** %9, align 8
  br label %30

30:                                               ; preds = %57, %24
  %31 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %9, align 8
  %32 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %10, align 8
  %33 = icmp ult %struct.proc_ns_operations** %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %9, align 8
  %36 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %35, align 8
  %37 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strlen(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %57

43:                                               ; preds = %34
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %9, align 8
  %49 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %48, align 8
  %50 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @memcmp(i32 %47, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  br label %60

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %42
  %58 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %9, align 8
  %59 = getelementptr inbounds %struct.proc_ns_operations*, %struct.proc_ns_operations** %58, i32 1
  store %struct.proc_ns_operations** %59, %struct.proc_ns_operations*** %9, align 8
  br label %30

60:                                               ; preds = %55, %30
  %61 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %9, align 8
  %62 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %10, align 8
  %63 = icmp eq %struct.proc_ns_operations** %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %72

65:                                               ; preds = %60
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = load %struct.dentry*, %struct.dentry** %5, align 8
  %68 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %69 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %9, align 8
  %70 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %69, align 8
  %71 = call %struct.dentry* @proc_ns_instantiate(%struct.inode* %66, %struct.dentry* %67, %struct.task_struct* %68, %struct.proc_ns_operations* %70)
  store %struct.dentry* %71, %struct.dentry** %7, align 8
  br label %72

72:                                               ; preds = %65, %64
  %73 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %74 = call i32 @put_task_struct(%struct.task_struct* %73)
  br label %75

75:                                               ; preds = %72, %23
  %76 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %76
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.proc_ns_operations**) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local %struct.dentry* @proc_ns_instantiate(%struct.inode*, %struct.dentry*, %struct.task_struct*, %struct.proc_ns_operations*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
