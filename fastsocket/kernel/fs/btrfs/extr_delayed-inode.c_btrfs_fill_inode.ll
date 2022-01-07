; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_fill_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_fill_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.btrfs_delayed_node = type { i32, %struct.btrfs_inode_item, i32 }
%struct.btrfs_inode_item = type { i32 }
%struct.btrfs_timespec = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_fill_inode(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.btrfs_delayed_node*, align 8
  %7 = alloca %struct.btrfs_inode_item*, align 8
  %8 = alloca %struct.btrfs_timespec*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.btrfs_delayed_node* @btrfs_get_delayed_node(%struct.inode* %9)
  store %struct.btrfs_delayed_node* %10, %struct.btrfs_delayed_node** %6, align 8
  %11 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %12 = icmp ne %struct.btrfs_delayed_node* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %128

16:                                               ; preds = %2
  %17 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %26 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %29 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %28)
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %128

32:                                               ; preds = %16
  %33 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %34 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %33, i32 0, i32 1
  store %struct.btrfs_inode_item* %34, %struct.btrfs_inode_item** %7, align 8
  %35 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %36 = call i32 @btrfs_stack_inode_uid(%struct.btrfs_inode_item* %35)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %40 = call i32 @btrfs_stack_inode_gid(%struct.btrfs_inode_item* %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %45 = call i32 @btrfs_stack_inode_size(%struct.btrfs_inode_item* %44)
  %46 = call i32 @btrfs_i_size_write(%struct.inode* %43, i32 %45)
  %47 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %48 = call i32 @btrfs_stack_inode_mode(%struct.btrfs_inode_item* %47)
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %52 = call i32 @btrfs_stack_inode_nlink(%struct.btrfs_inode_item* %51)
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %57 = call i32 @btrfs_stack_inode_nbytes(%struct.btrfs_inode_item* %56)
  %58 = call i32 @inode_set_bytes(%struct.inode* %55, i32 %57)
  %59 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %60 = call i32 @btrfs_stack_inode_generation(%struct.btrfs_inode_item* %59)
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %65 = call i32 @btrfs_stack_inode_sequence(%struct.btrfs_inode_item* %64)
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %71 = call i32 @btrfs_stack_inode_rdev(%struct.btrfs_inode_item* %70)
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %74 = call i32 @btrfs_stack_inode_flags(%struct.btrfs_inode_item* %73)
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  %78 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %79 = call %struct.btrfs_timespec* @btrfs_inode_atime(%struct.btrfs_inode_item* %78)
  store %struct.btrfs_timespec* %79, %struct.btrfs_timespec** %8, align 8
  %80 = load %struct.btrfs_timespec*, %struct.btrfs_timespec** %8, align 8
  %81 = call i8* @btrfs_stack_timespec_sec(%struct.btrfs_timespec* %80)
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.btrfs_timespec*, %struct.btrfs_timespec** %8, align 8
  %86 = call i8* @btrfs_stack_timespec_nsec(%struct.btrfs_timespec* %85)
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  %90 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %91 = call %struct.btrfs_timespec* @btrfs_inode_mtime(%struct.btrfs_inode_item* %90)
  store %struct.btrfs_timespec* %91, %struct.btrfs_timespec** %8, align 8
  %92 = load %struct.btrfs_timespec*, %struct.btrfs_timespec** %8, align 8
  %93 = call i8* @btrfs_stack_timespec_sec(%struct.btrfs_timespec* %92)
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  %97 = load %struct.btrfs_timespec*, %struct.btrfs_timespec** %8, align 8
  %98 = call i8* @btrfs_stack_timespec_nsec(%struct.btrfs_timespec* %97)
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  %102 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %103 = call %struct.btrfs_timespec* @btrfs_inode_ctime(%struct.btrfs_inode_item* %102)
  store %struct.btrfs_timespec* %103, %struct.btrfs_timespec** %8, align 8
  %104 = load %struct.btrfs_timespec*, %struct.btrfs_timespec** %8, align 8
  %105 = call i8* @btrfs_stack_timespec_sec(%struct.btrfs_timespec* %104)
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  %109 = load %struct.btrfs_timespec*, %struct.btrfs_timespec** %8, align 8
  %110 = call i8* @btrfs_stack_timespec_nsec(%struct.btrfs_timespec* %109)
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %114)
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.inode*, %struct.inode** %4, align 8
  %121 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i64 -1, i64* %122, align 8
  %123 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %124 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %127 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %32, %24, %13
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.btrfs_delayed_node* @btrfs_get_delayed_node(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @btrfs_stack_inode_uid(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_gid(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_stack_inode_size(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_mode(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_nlink(%struct.btrfs_inode_item*) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_stack_inode_nbytes(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_generation(%struct.btrfs_inode_item*) #1

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_stack_inode_sequence(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_rdev(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_flags(%struct.btrfs_inode_item*) #1

declare dso_local %struct.btrfs_timespec* @btrfs_inode_atime(%struct.btrfs_inode_item*) #1

declare dso_local i8* @btrfs_stack_timespec_sec(%struct.btrfs_timespec*) #1

declare dso_local i8* @btrfs_stack_timespec_nsec(%struct.btrfs_timespec*) #1

declare dso_local %struct.btrfs_timespec* @btrfs_inode_mtime(%struct.btrfs_inode_item*) #1

declare dso_local %struct.btrfs_timespec* @btrfs_inode_ctime(%struct.btrfs_inode_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
