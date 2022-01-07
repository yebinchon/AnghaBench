; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_inode_mark.c_fsnotify_destroy_mark_by_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_inode_mark.c_fsnotify_destroy_mark_by_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark_entry = type { i32, %struct.fsnotify_group*, i32, %struct.inode*, i32, i32 }
%struct.fsnotify_group = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fsnotify_mark_entry*, %struct.fsnotify_group*)* }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_destroy_mark_by_entry(%struct.fsnotify_mark_entry* %0) #0 {
  %2 = alloca %struct.fsnotify_mark_entry*, align 8
  %3 = alloca %struct.fsnotify_group*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.fsnotify_mark_entry* %0, %struct.fsnotify_mark_entry** %2, align 8
  %5 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %6 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %9 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %8, i32 0, i32 1
  %10 = load %struct.fsnotify_group*, %struct.fsnotify_group** %9, align 8
  store %struct.fsnotify_group* %10, %struct.fsnotify_group** %3, align 8
  %11 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %12 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %11, i32 0, i32 3
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %15 = icmp ne %struct.fsnotify_group* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = icmp ne %struct.inode* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i1 [ false, %1 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %25 = icmp ne %struct.fsnotify_group* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = icmp ne %struct.inode* %27, null
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i1 [ false, %20 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %34 = icmp ne %struct.fsnotify_group* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %37 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  br label %101

39:                                               ; preds = %29
  %40 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %41 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %40, i32 0, i32 5
  %42 = call i32 @atomic_read(i32* %41)
  %43 = icmp slt i32 %42, 2
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %47 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %46, i32 0, i32 2
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %53 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %52, i32 0, i32 4
  %54 = call i32 @hlist_del_init(i32* %53)
  %55 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %56 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %55, i32 0, i32 3
  store %struct.inode* null, %struct.inode** %56, align 8
  %57 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %58 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %57, i32 0, i32 2
  %59 = call i32 @list_del_init(i32* %58)
  %60 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %61 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %60, i32 0, i32 1
  store %struct.fsnotify_group* null, %struct.fsnotify_group** %61, align 8
  %62 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %63 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark_entry* %62)
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call i32 @fsnotify_recalc_inode_mask_locked(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %70 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %73 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %76 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.fsnotify_mark_entry*, %struct.fsnotify_group*)*, i32 (%struct.fsnotify_mark_entry*, %struct.fsnotify_group*)** %78, align 8
  %80 = icmp ne i32 (%struct.fsnotify_mark_entry*, %struct.fsnotify_group*)* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %39
  %82 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %83 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (%struct.fsnotify_mark_entry*, %struct.fsnotify_group*)*, i32 (%struct.fsnotify_mark_entry*, %struct.fsnotify_group*)** %85, align 8
  %87 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %2, align 8
  %88 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %89 = call i32 %86(%struct.fsnotify_mark_entry* %87, %struct.fsnotify_group* %88)
  br label %90

90:                                               ; preds = %81, %39
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = call i32 @iput(%struct.inode* %91)
  %93 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %94 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %93, i32 0, i32 0
  %95 = call i32 @atomic_dec_and_test(i32* %94)
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %100 = call i32 @fsnotify_final_destroy_group(%struct.fsnotify_group* %99)
  br label %101

101:                                              ; preds = %35, %98, %90
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @fsnotify_put_mark(%struct.fsnotify_mark_entry*) #1

declare dso_local i32 @fsnotify_recalc_inode_mask_locked(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @fsnotify_final_destroy_group(%struct.fsnotify_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
