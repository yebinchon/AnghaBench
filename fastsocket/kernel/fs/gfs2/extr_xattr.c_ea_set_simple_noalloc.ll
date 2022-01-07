; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_set_simple_noalloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_set_simple_noalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i32 }
%struct.ea_set = type { i64, i64, %struct.gfs2_ea_request* }
%struct.gfs2_ea_request = type { i32 }

@RES_DINODE = common dso_local global i64 0, align 8
@RES_EATTR = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.ea_set*)* @ea_set_simple_noalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_set_simple_noalloc(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_ea_header* %2, %struct.ea_set* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.gfs2_ea_header*, align 8
  %9 = alloca %struct.ea_set*, align 8
  %10 = alloca %struct.gfs2_ea_request*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header** %8, align 8
  store %struct.ea_set* %3, %struct.ea_set** %9, align 8
  %13 = load %struct.ea_set*, %struct.ea_set** %9, align 8
  %14 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %13, i32 0, i32 2
  %15 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %14, align 8
  store %struct.gfs2_ea_request* %15, %struct.gfs2_ea_request** %10, align 8
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 0
  %18 = call i32 @GFS2_SB(%struct.TYPE_2__* %17)
  %19 = load i64, i64* @RES_DINODE, align 8
  %20 = load i32, i32* @RES_EATTR, align 4
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @gfs2_trans_begin(i32 %18, i64 %23, i32 0)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %86

29:                                               ; preds = %4
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %34 = call i32 @gfs2_trans_add_meta(i32 %32, %struct.buffer_head* %33)
  %35 = load %struct.ea_set*, %struct.ea_set** %9, align 8
  %36 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %8, align 8
  %41 = call %struct.gfs2_ea_header* @ea_split_ea(%struct.gfs2_ea_header* %40)
  store %struct.gfs2_ea_header* %41, %struct.gfs2_ea_header** %8, align 8
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %44 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %8, align 8
  %45 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %10, align 8
  %46 = call i32 @ea_write(%struct.gfs2_inode* %43, %struct.gfs2_ea_header* %44, %struct.gfs2_ea_request* %45)
  %47 = load %struct.ea_set*, %struct.ea_set** %9, align 8
  %48 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %53 = load %struct.ea_set*, %struct.ea_set** %9, align 8
  %54 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ea_set_remove_stuffed(%struct.gfs2_inode* %52, i64 %55)
  br label %57

57:                                               ; preds = %51, %42
  %58 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %59 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %58, %struct.buffer_head** %11)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %80

63:                                               ; preds = %57
  %64 = load i32, i32* @CURRENT_TIME, align 4
  %65 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %66 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %69 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %72 = call i32 @gfs2_trans_add_meta(i32 %70, %struct.buffer_head* %71)
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %73, i32 %76)
  %78 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %79 = call i32 @brelse(%struct.buffer_head* %78)
  br label %80

80:                                               ; preds = %63, %62
  %81 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %82 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %81, i32 0, i32 0
  %83 = call i32 @GFS2_SB(%struct.TYPE_2__* %82)
  %84 = call i32 @gfs2_trans_end(i32 %83)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %80, %27
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @gfs2_trans_begin(i32, i64, i32) #1

declare dso_local i32 @GFS2_SB(%struct.TYPE_2__*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local %struct.gfs2_ea_header* @ea_split_ea(%struct.gfs2_ea_header*) #1

declare dso_local i32 @ea_write(%struct.gfs2_inode*, %struct.gfs2_ea_header*, %struct.gfs2_ea_request*) #1

declare dso_local i32 @ea_set_remove_stuffed(%struct.gfs2_inode*, i64) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
