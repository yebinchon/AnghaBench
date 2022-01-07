; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.proc_dir_entry = type { i32 }
%struct.proc_ns_operations = type { i32 (i8*)* }
%struct.TYPE_2__ = type { i8*, %struct.proc_ns_operations*, i64, %struct.proc_dir_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @proc_delete_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.proc_ns_operations*, align 8
  %5 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = call i32 @truncate_inode_pages(i32* %7, i32 0)
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @put_pid(i32 %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %16, align 8
  store %struct.proc_dir_entry* %17, %struct.proc_dir_entry** %3, align 8
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %19 = icmp ne %struct.proc_dir_entry* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %22 = call i32 @de_put(%struct.proc_dir_entry* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @sysctl_head_put(i64 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.inode*, %struct.inode** %2, align 8
  %37 = call i32 @clear_inode(%struct.inode* %36)
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %40, align 8
  store %struct.proc_ns_operations* %41, %struct.proc_ns_operations** %4, align 8
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %5, align 8
  %46 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %4, align 8
  %47 = icmp ne %struct.proc_ns_operations* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %4, align 8
  %53 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %52, i32 0, i32 0
  %54 = load i32 (i8*)*, i32 (i8*)** %53, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 %54(i8* %55)
  br label %57

57:                                               ; preds = %51, %48, %35
  ret void
}

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local i32 @de_put(%struct.proc_dir_entry*) #1

declare dso_local i32 @sysctl_head_put(i64) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
