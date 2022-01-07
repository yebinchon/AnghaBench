; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_direct = type { i32 }
%union.nilfs_bmap_ptr_req = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@NILFS_DIRECT_KEY_MAX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NILFS_BMAP_INVALID_PTR = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i64, i64)* @nilfs_direct_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_insert(%struct.nilfs_bmap* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nilfs_direct*, align 8
  %9 = alloca %union.nilfs_bmap_ptr_req, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %14 = bitcast %struct.nilfs_bmap* %13 to %struct.nilfs_direct*
  store %struct.nilfs_direct* %14, %struct.nilfs_direct** %8, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @NILFS_DIRECT_KEY_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %81

21:                                               ; preds = %3
  %22 = load %struct.nilfs_direct*, %struct.nilfs_direct** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @nilfs_direct_get_ptr(%struct.nilfs_direct* %22, i64 %23)
  %25 = load i64, i64* @NILFS_BMAP_INVALID_PTR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %81

30:                                               ; preds = %21
  %31 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %32 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.nilfs_direct*, %struct.nilfs_direct** %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @nilfs_direct_find_target_v(%struct.nilfs_direct* %35, i64 %36)
  %38 = bitcast %union.nilfs_bmap_ptr_req* %9 to i32*
  store i32 %37, i32* %38, align 4
  %39 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %40 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %39)
  store %struct.inode* %40, %struct.inode** %10, align 8
  br label %41

41:                                               ; preds = %34, %30
  %42 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap* %42, %union.nilfs_bmap_ptr_req* %9, %struct.inode* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = inttoptr i64 %48 to %struct.buffer_head*
  store %struct.buffer_head* %49, %struct.buffer_head** %11, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %51 = call i32 @set_buffer_nilfs_volatile(%struct.buffer_head* %50)
  %52 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = call i32 @nilfs_bmap_commit_alloc_ptr(%struct.nilfs_bmap* %52, %union.nilfs_bmap_ptr_req* %9, %struct.inode* %53)
  %55 = load %struct.nilfs_direct*, %struct.nilfs_direct** %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = bitcast %union.nilfs_bmap_ptr_req* %9 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nilfs_direct_set_ptr(%struct.nilfs_direct* %55, i64 %56, i32 %58)
  %60 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %61 = call i32 @nilfs_bmap_dirty(%struct.nilfs_bmap* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %47
  %64 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %65 = call i32 @nilfs_bmap_set_dirty(%struct.nilfs_bmap* %64)
  br label %66

66:                                               ; preds = %63, %47
  %67 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %68 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.nilfs_direct*, %struct.nilfs_direct** %8, align 8
  %72 = load i64, i64* %6, align 8
  %73 = bitcast %union.nilfs_bmap_ptr_req* %9 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nilfs_direct_set_target_v(%struct.nilfs_direct* %71, i64 %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %66
  %77 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %78 = call i32 @nilfs_bmap_add_blocks(%struct.nilfs_bmap* %77, i32 1)
  br label %79

79:                                               ; preds = %76, %41
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %27, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @nilfs_direct_get_ptr(%struct.nilfs_direct*, i64) #1

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_direct_find_target_v(%struct.nilfs_direct*, i64) #1

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*) #1

declare dso_local i32 @set_buffer_nilfs_volatile(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_bmap_commit_alloc_ptr(%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*) #1

declare dso_local i32 @nilfs_direct_set_ptr(%struct.nilfs_direct*, i64, i32) #1

declare dso_local i32 @nilfs_bmap_dirty(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_set_dirty(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_direct_set_target_v(%struct.nilfs_direct*, i64, i32) #1

declare dso_local i32 @nilfs_bmap_add_blocks(%struct.nilfs_bmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
