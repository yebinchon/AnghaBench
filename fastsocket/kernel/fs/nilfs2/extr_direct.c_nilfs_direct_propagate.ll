; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_propagate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i64 }
%struct.buffer_head = type { i32 }
%struct.nilfs_direct = type { i32 }
%struct.nilfs_palloc_req = type { i8* }
%struct.inode = type { i32 }

@NILFS_BMAP_PTR_VS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.buffer_head*)* @nilfs_direct_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_propagate(%struct.nilfs_bmap* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_direct*, align 8
  %7 = alloca %struct.nilfs_palloc_req, align 8
  %8 = alloca %struct.nilfs_palloc_req, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %13 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %14 = bitcast %struct.nilfs_bmap* %13 to %struct.nilfs_direct*
  store %struct.nilfs_direct* %14, %struct.nilfs_direct** %6, align 8
  %15 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %16 = call i32 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %21 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %20)
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %24 = call i8* @nilfs_bmap_data_get_key(%struct.nilfs_bmap* %22, %struct.buffer_head* %23)
  store i8* %24, i8** %10, align 8
  %25 = load %struct.nilfs_direct*, %struct.nilfs_direct** %6, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i8* @nilfs_direct_get_ptr(%struct.nilfs_direct* %25, i8* %26)
  store i8* %27, i8** %11, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = call i32 @buffer_nilfs_volatile(%struct.buffer_head* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %19
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %7, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %8, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = call i32 @nilfs_dat_prepare_update(%struct.inode* %36, %struct.nilfs_palloc_req* %7, %struct.nilfs_palloc_req* %8)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %31
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %45 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NILFS_BMAP_PTR_VS, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @nilfs_dat_commit_update(%struct.inode* %43, %struct.nilfs_palloc_req* %7, %struct.nilfs_palloc_req* %8, i32 %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %52 = call i32 @set_buffer_nilfs_volatile(%struct.buffer_head* %51)
  %53 = load %struct.nilfs_direct*, %struct.nilfs_direct** %6, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %8, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @nilfs_direct_set_ptr(%struct.nilfs_direct* %53, i8* %54, i8* %56)
  br label %62

58:                                               ; preds = %19
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @nilfs_dat_mark_dirty(%struct.inode* %59, i8* %60)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %58, %42
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %40, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i8* @nilfs_bmap_data_get_key(%struct.nilfs_bmap*, %struct.buffer_head*) #1

declare dso_local i8* @nilfs_direct_get_ptr(%struct.nilfs_direct*, i8*) #1

declare dso_local i32 @buffer_nilfs_volatile(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_dat_prepare_update(%struct.inode*, %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @nilfs_dat_commit_update(%struct.inode*, %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req*, i32) #1

declare dso_local i32 @set_buffer_nilfs_volatile(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_direct_set_ptr(%struct.nilfs_direct*, i8*, i8*) #1

declare dso_local i32 @nilfs_dat_mark_dirty(%struct.inode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
