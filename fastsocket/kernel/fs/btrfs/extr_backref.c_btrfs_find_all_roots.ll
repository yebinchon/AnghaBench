; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_btrfs_find_all_roots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_btrfs_find_all_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.ulist = type { i32 }
%struct.ulist_node = type { i32 }
%struct.ulist_iterator = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_find_all_roots(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1, i32 %2, i32 %3, i32 %4, %struct.ulist** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ulist**, align 8
  %14 = alloca %struct.ulist*, align 8
  %15 = alloca %struct.ulist_node*, align 8
  %16 = alloca %struct.ulist_iterator, align 4
  %17 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ulist** %5, %struct.ulist*** %13, align 8
  store %struct.ulist_node* null, %struct.ulist_node** %15, align 8
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call %struct.ulist* @ulist_alloc(i32 %18)
  store %struct.ulist* %19, %struct.ulist** %14, align 8
  %20 = load %struct.ulist*, %struct.ulist** %14, align 8
  %21 = icmp ne %struct.ulist* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %76

25:                                               ; preds = %6
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call %struct.ulist* @ulist_alloc(i32 %26)
  %28 = load %struct.ulist**, %struct.ulist*** %13, align 8
  store %struct.ulist* %27, %struct.ulist** %28, align 8
  %29 = load %struct.ulist**, %struct.ulist*** %13, align 8
  %30 = load %struct.ulist*, %struct.ulist** %29, align 8
  %31 = icmp ne %struct.ulist* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.ulist*, %struct.ulist** %14, align 8
  %34 = call i32 @ulist_free(%struct.ulist* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %76

37:                                               ; preds = %25
  %38 = call i32 @ULIST_ITER_INIT(%struct.ulist_iterator* %16)
  br label %39

39:                                               ; preds = %37, %69
  %40 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.ulist*, %struct.ulist** %14, align 8
  %46 = load %struct.ulist**, %struct.ulist*** %13, align 8
  %47 = load %struct.ulist*, %struct.ulist** %46, align 8
  %48 = call i32 @find_parent_nodes(%struct.btrfs_trans_handle* %40, %struct.btrfs_fs_info* %41, i32 %42, i32 %43, i32 %44, %struct.ulist* %45, %struct.ulist* %47, i32* null)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %39
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.ulist*, %struct.ulist** %14, align 8
  %58 = call i32 @ulist_free(%struct.ulist* %57)
  %59 = load %struct.ulist**, %struct.ulist*** %13, align 8
  %60 = load %struct.ulist*, %struct.ulist** %59, align 8
  %61 = call i32 @ulist_free(%struct.ulist* %60)
  %62 = load i32, i32* %17, align 4
  store i32 %62, i32* %7, align 4
  br label %76

63:                                               ; preds = %51, %39
  %64 = load %struct.ulist*, %struct.ulist** %14, align 8
  %65 = call %struct.ulist_node* @ulist_next(%struct.ulist* %64, %struct.ulist_iterator* %16)
  store %struct.ulist_node* %65, %struct.ulist_node** %15, align 8
  %66 = load %struct.ulist_node*, %struct.ulist_node** %15, align 8
  %67 = icmp ne %struct.ulist_node* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %73

69:                                               ; preds = %63
  %70 = load %struct.ulist_node*, %struct.ulist_node** %15, align 8
  %71 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %10, align 4
  br label %39

73:                                               ; preds = %68
  %74 = load %struct.ulist*, %struct.ulist** %14, align 8
  %75 = call i32 @ulist_free(%struct.ulist* %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %56, %32, %22
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.ulist* @ulist_alloc(i32) #1

declare dso_local i32 @ulist_free(%struct.ulist*) #1

declare dso_local i32 @ULIST_ITER_INIT(%struct.ulist_iterator*) #1

declare dso_local i32 @find_parent_nodes(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, i32, i32, i32, %struct.ulist*, %struct.ulist*, i32*) #1

declare dso_local %struct.ulist_node* @ulist_next(%struct.ulist*, %struct.ulist_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
