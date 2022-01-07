; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_gcov_seq_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_gcov_seq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.gcov_node* }
%struct.gcov_node = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.gcov_iterator* }
%struct.gcov_iterator = type { i32 }
%struct.gcov_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@node_lock = common dso_local global i32 0, align 4
@gcov_seq_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @gcov_seq_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcov_seq_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gcov_node*, align 8
  %6 = alloca %struct.gcov_iterator*, align 8
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca %struct.gcov_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.gcov_node*, %struct.gcov_node** %11, align 8
  store %struct.gcov_node* %12, %struct.gcov_node** %5, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = call i32 @mutex_lock(i32* @node_lock)
  %16 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %17 = call i32 @get_node_info(%struct.gcov_node* %16)
  %18 = call %struct.gcov_info* @gcov_info_dup(i32 %17)
  store %struct.gcov_info* %18, %struct.gcov_info** %8, align 8
  %19 = load %struct.gcov_info*, %struct.gcov_info** %8, align 8
  %20 = icmp ne %struct.gcov_info* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.gcov_info*, %struct.gcov_info** %8, align 8
  %24 = call %struct.gcov_iterator* @gcov_iter_new(%struct.gcov_info* %23)
  store %struct.gcov_iterator* %24, %struct.gcov_iterator** %6, align 8
  %25 = load %struct.gcov_iterator*, %struct.gcov_iterator** %6, align 8
  %26 = icmp ne %struct.gcov_iterator* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %47

28:                                               ; preds = %22
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = call i32 @seq_open(%struct.file* %29, i32* @gcov_seq_ops)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %44

34:                                               ; preds = %28
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load %struct.seq_file*, %struct.seq_file** %36, align 8
  store %struct.seq_file* %37, %struct.seq_file** %7, align 8
  %38 = load %struct.gcov_iterator*, %struct.gcov_iterator** %6, align 8
  %39 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %40 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %39, i32 0, i32 0
  store %struct.gcov_iterator* %38, %struct.gcov_iterator** %40, align 8
  br label %41

41:                                               ; preds = %47, %34, %21
  %42 = call i32 @mutex_unlock(i32* @node_lock)
  %43 = load i32, i32* %9, align 4
  ret i32 %43

44:                                               ; preds = %33
  %45 = load %struct.gcov_iterator*, %struct.gcov_iterator** %6, align 8
  %46 = call i32 @gcov_iter_free(%struct.gcov_iterator* %45)
  br label %47

47:                                               ; preds = %44, %27
  %48 = load %struct.gcov_info*, %struct.gcov_info** %8, align 8
  %49 = call i32 @gcov_info_free(%struct.gcov_info* %48)
  br label %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gcov_info* @gcov_info_dup(i32) #1

declare dso_local i32 @get_node_info(%struct.gcov_node*) #1

declare dso_local %struct.gcov_iterator* @gcov_iter_new(%struct.gcov_info*) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gcov_iter_free(%struct.gcov_iterator*) #1

declare dso_local i32 @gcov_info_free(%struct.gcov_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
