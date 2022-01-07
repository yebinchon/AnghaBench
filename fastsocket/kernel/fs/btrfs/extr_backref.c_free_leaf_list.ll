; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_free_leaf_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_free_leaf_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulist = type { i32 }
%struct.ulist_node = type { i64 }
%struct.extent_inode_elem = type { %struct.extent_inode_elem* }
%struct.ulist_iterator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ulist*)* @free_leaf_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_leaf_list(%struct.ulist* %0) #0 {
  %2 = alloca %struct.ulist*, align 8
  %3 = alloca %struct.ulist_node*, align 8
  %4 = alloca %struct.extent_inode_elem*, align 8
  %5 = alloca %struct.extent_inode_elem*, align 8
  %6 = alloca %struct.ulist_iterator, align 4
  store %struct.ulist* %0, %struct.ulist** %2, align 8
  store %struct.ulist_node* null, %struct.ulist_node** %3, align 8
  %7 = call i32 @ULIST_ITER_INIT(%struct.ulist_iterator* %6)
  br label %8

8:                                                ; preds = %34, %17, %1
  %9 = load %struct.ulist*, %struct.ulist** %2, align 8
  %10 = call %struct.ulist_node* @ulist_next(%struct.ulist* %9, %struct.ulist_iterator* %6)
  store %struct.ulist_node* %10, %struct.ulist_node** %3, align 8
  %11 = icmp ne %struct.ulist_node* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load %struct.ulist_node*, %struct.ulist_node** %3, align 8
  %14 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %8

18:                                               ; preds = %12
  %19 = load %struct.ulist_node*, %struct.ulist_node** %3, align 8
  %20 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.extent_inode_elem*
  store %struct.extent_inode_elem* %22, %struct.extent_inode_elem** %4, align 8
  br label %23

23:                                               ; preds = %32, %18
  %24 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %4, align 8
  %25 = icmp ne %struct.extent_inode_elem* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %4, align 8
  %28 = getelementptr inbounds %struct.extent_inode_elem, %struct.extent_inode_elem* %27, i32 0, i32 0
  %29 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %28, align 8
  store %struct.extent_inode_elem* %29, %struct.extent_inode_elem** %5, align 8
  %30 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %4, align 8
  %31 = call i32 @kfree(%struct.extent_inode_elem* %30)
  br label %32

32:                                               ; preds = %26
  %33 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %5, align 8
  store %struct.extent_inode_elem* %33, %struct.extent_inode_elem** %4, align 8
  br label %23

34:                                               ; preds = %23
  %35 = load %struct.ulist_node*, %struct.ulist_node** %3, align 8
  %36 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %8

37:                                               ; preds = %8
  %38 = load %struct.ulist*, %struct.ulist** %2, align 8
  %39 = call i32 @ulist_free(%struct.ulist* %38)
  ret void
}

declare dso_local i32 @ULIST_ITER_INIT(%struct.ulist_iterator*) #1

declare dso_local %struct.ulist_node* @ulist_next(%struct.ulist*, %struct.ulist_iterator*) #1

declare dso_local i32 @kfree(%struct.extent_inode_elem*) #1

declare dso_local i32 @ulist_free(%struct.ulist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
