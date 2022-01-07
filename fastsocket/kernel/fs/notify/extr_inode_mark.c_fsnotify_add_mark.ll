; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_inode_mark.c_fsnotify_add_mark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_inode_mark.c_fsnotify_add_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark_entry = type { i32, i32, i32, %struct.inode*, %struct.fsnotify_group* }
%struct.fsnotify_group = type { i32, i32, i32 }
%struct.inode = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsnotify_add_mark(%struct.fsnotify_mark_entry* %0, %struct.fsnotify_group* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsnotify_mark_entry*, align 8
  %6 = alloca %struct.fsnotify_group*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fsnotify_mark_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.fsnotify_mark_entry* %0, %struct.fsnotify_mark_entry** %5, align 8
  store %struct.fsnotify_group* %1, %struct.fsnotify_group** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %7, align 8
  %11 = call %struct.inode* @igrab(%struct.inode* %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = icmp ne %struct.inode* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  %22 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %5, align 8
  %23 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %26 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call %struct.fsnotify_mark_entry* @fsnotify_find_mark_entry(%struct.fsnotify_group* %31, %struct.inode* %32)
  store %struct.fsnotify_mark_entry* %33, %struct.fsnotify_mark_entry** %8, align 8
  %34 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %8, align 8
  %35 = icmp ne %struct.fsnotify_mark_entry* %34, null
  br i1 %35, label %60, label %36

36:                                               ; preds = %21
  %37 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %38 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %5, align 8
  %39 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %38, i32 0, i32 4
  store %struct.fsnotify_group* %37, %struct.fsnotify_group** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %5, align 8
  %42 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %41, i32 0, i32 3
  store %struct.inode* %40, %struct.inode** %42, align 8
  %43 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %5, align 8
  %44 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %43, i32 0, i32 2
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = call i32 @hlist_add_head(i32* %44, i32* %46)
  %48 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %5, align 8
  %49 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %48, i32 0, i32 1
  %50 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %51 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %50, i32 0, i32 2
  %52 = call i32 @list_add(i32* %49, i32* %51)
  %53 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %5, align 8
  %54 = call i32 @fsnotify_get_mark(%struct.fsnotify_mark_entry* %53)
  %55 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %56 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %55, i32 0, i32 1
  %57 = call i32 @atomic_inc(i32* %56)
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = call i32 @fsnotify_recalc_inode_mask_locked(%struct.inode* %58)
  br label %60

60:                                               ; preds = %36, %21
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %65 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %5, align 8
  %68 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %8, align 8
  %71 = icmp ne %struct.fsnotify_mark_entry* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  %73 = load i32, i32* @EEXIST, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = call i32 @iput(%struct.inode* %75)
  %77 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %8, align 8
  %78 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark_entry* %77)
  br label %82

79:                                               ; preds = %60
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = call i32 @__fsnotify_update_child_dentry_flags(%struct.inode* %80)
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.inode* @igrab(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fsnotify_mark_entry* @fsnotify_find_mark_entry(%struct.fsnotify_group*, %struct.inode*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @fsnotify_get_mark(%struct.fsnotify_mark_entry*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @fsnotify_recalc_inode_mask_locked(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @fsnotify_put_mark(%struct.fsnotify_mark_entry*) #1

declare dso_local i32 @__fsnotify_update_child_dentry_flags(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
