; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_lookup_de.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_lookup_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i64, i32, i32, %struct.proc_dir_entry*, %struct.proc_dir_entry* }
%struct.inode = type { i32 }
%struct.dentry = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@proc_subdir_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@proc_dentry_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @proc_lookup_de(%struct.proc_dir_entry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = call i32 @spin_lock(i32* @proc_subdir_lock)
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %15 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %14, i32 0, i32 4
  %16 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %15, align 8
  store %struct.proc_dir_entry* %16, %struct.proc_dir_entry** %5, align 8
  br label %17

17:                                               ; preds = %59, %3
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %19 = icmp ne %struct.proc_dir_entry* %18, null
  br i1 %19, label %20, label %63

20:                                               ; preds = %17
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %22 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %59

30:                                               ; preds = %20
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %36 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %39 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @memcmp(i32 %34, i32 %37, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %30
  %44 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %45 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %48 = call i32 @de_get(%struct.proc_dir_entry* %47)
  %49 = call i32 @spin_unlock(i32* @proc_subdir_lock)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %57 = call %struct.inode* @proc_get_inode(i32 %54, i32 %55, %struct.proc_dir_entry* %56)
  store %struct.inode* %57, %struct.inode** %8, align 8
  br label %65

58:                                               ; preds = %30
  br label %59

59:                                               ; preds = %58, %29
  %60 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %61 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %60, i32 0, i32 3
  %62 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %61, align 8
  store %struct.proc_dir_entry* %62, %struct.proc_dir_entry** %5, align 8
  br label %17

63:                                               ; preds = %17
  %64 = call i32 @spin_unlock(i32* @proc_subdir_lock)
  br label %65

65:                                               ; preds = %63, %43
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = icmp ne %struct.inode* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.dentry*, %struct.dentry** %7, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  store i32* @proc_dentry_operations, i32** %70, align 8
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = call i32 @d_add(%struct.dentry* %71, %struct.inode* %72)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %83

74:                                               ; preds = %65
  %75 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %76 = icmp ne %struct.proc_dir_entry* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %79 = call i32 @de_put(%struct.proc_dir_entry* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %9, align 4
  %82 = call %struct.dentry* @ERR_PTR(i32 %81)
  store %struct.dentry* %82, %struct.dentry** %4, align 8
  br label %83

83:                                               ; preds = %80, %68
  %84 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %84
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @de_get(%struct.proc_dir_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.inode* @proc_get_inode(i32, i32, %struct.proc_dir_entry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @de_put(%struct.proc_dir_entry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
