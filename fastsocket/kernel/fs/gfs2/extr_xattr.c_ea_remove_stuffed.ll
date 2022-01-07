; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_remove_stuffed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_remove_stuffed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_ea_location = type { %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header* }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i32, i32, i32 }

@RES_DINODE = common dso_local global i64 0, align 8
@RES_EATTR = common dso_local global i64 0, align 8
@GFS2_EAFLAG_LAST = common dso_local global i32 0, align 4
@GFS2_EATYPE_UNUSED = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_ea_location*)* @ea_remove_stuffed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_remove_stuffed(%struct.gfs2_inode* %0, %struct.gfs2_ea_location* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_ea_location*, align 8
  %6 = alloca %struct.gfs2_ea_header*, align 8
  %7 = alloca %struct.gfs2_ea_header*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_ea_location* %1, %struct.gfs2_ea_location** %5, align 8
  %11 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %11, i32 0, i32 2
  %13 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %12, align 8
  store %struct.gfs2_ea_header* %13, %struct.gfs2_ea_header** %6, align 8
  %14 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %5, align 8
  %15 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %14, i32 0, i32 1
  %16 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %15, align 8
  store %struct.gfs2_ea_header* %16, %struct.gfs2_ea_header** %7, align 8
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 0
  %19 = call i32 @GFS2_SB(%struct.TYPE_2__* %18)
  %20 = load i64, i64* @RES_DINODE, align 8
  %21 = load i64, i64* @RES_EATTR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @gfs2_trans_begin(i32 %19, i64 %22, i32 0)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %90

28:                                               ; preds = %2
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %5, align 8
  %33 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %32, i32 0, i32 0
  %34 = load %struct.buffer_head*, %struct.buffer_head** %33, align 8
  %35 = call i32 @gfs2_trans_add_meta(i32 %31, %struct.buffer_head* %34)
  %36 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %37 = icmp ne %struct.gfs2_ea_header* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %28
  %39 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %40 = call i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %39)
  %41 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %42 = call i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %41)
  %43 = add nsw i64 %40, %42
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @cpu_to_be32(i64 %44)
  %46 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %47 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %49 = call i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = load i32, i32* @GFS2_EAFLAG_LAST, align 4
  %53 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %54 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %38
  br label %62

58:                                               ; preds = %28
  %59 = load i32, i32* @GFS2_EATYPE_UNUSED, align 4
  %60 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %61 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %57
  %63 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %64 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %63, %struct.buffer_head** %8)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @CURRENT_TIME, align 4
  %69 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %70 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %73 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %76 = call i32 @gfs2_trans_add_meta(i32 %74, %struct.buffer_head* %75)
  %77 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %77, i32 %80)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  br label %84

84:                                               ; preds = %67, %62
  %85 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %86 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %85, i32 0, i32 0
  %87 = call i32 @GFS2_SB(%struct.TYPE_2__* %86)
  %88 = call i32 @gfs2_trans_end(i32 %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %26
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @gfs2_trans_begin(i32, i64, i32) #1

declare dso_local i32 @GFS2_SB(%struct.TYPE_2__*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header*) #1

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
