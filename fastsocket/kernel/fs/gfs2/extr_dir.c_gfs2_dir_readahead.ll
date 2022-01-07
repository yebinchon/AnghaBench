; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_readahead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file_ra_state = type { i32 }
%struct.gfs2_inode = type { i32*, %struct.gfs2_glock* }
%struct.gfs2_glock = type { i32 }
%struct.buffer_head = type { i32 }

@MAX_RA_BLOCKS = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@READA = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32, %struct.file_ra_state*)* @gfs2_dir_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_dir_readahead(%struct.inode* %0, i32 %1, i32 %2, %struct.file_ra_state* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_ra_state*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_glock*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.file_ra_state* %3, %struct.file_ra_state** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %15)
  store %struct.gfs2_inode* %16, %struct.gfs2_inode** %9, align 8
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 1
  %19 = load %struct.gfs2_glock*, %struct.gfs2_glock** %18, align 8
  store %struct.gfs2_glock* %19, %struct.gfs2_glock** %10, align 8
  store i64 0, i64* %12, align 8
  %20 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %21 = icmp ne %struct.file_ra_state* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAX_RA_BLOCKS, align 4
  %25 = add i32 %23, %24
  %26 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %27 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %4
  br label %101

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %34 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max(i32 %32, i32 %35)
  %37 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %38 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %98, %31
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @MAX_RA_BLOCKS, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %101

43:                                               ; preds = %39
  %44 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %45 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %101

50:                                               ; preds = %43
  %51 = load i64, i64* %12, align 8
  store i64 %51, i64* %13, align 8
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %53 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %56 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @be64_to_cpu(i32 %60)
  store i64 %61, i64* %12, align 8
  %62 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %63 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %50
  br label %98

70:                                               ; preds = %50
  %71 = load %struct.gfs2_glock*, %struct.gfs2_glock** %10, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %71, i64 %72, i32 1)
  store %struct.buffer_head* %73, %struct.buffer_head** %11, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %75 = call i64 @trylock_buffer(%struct.buffer_head* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %70
  %78 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %79 = call i64 @buffer_uptodate(%struct.buffer_head* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %83 = call i32 @unlock_buffer(%struct.buffer_head* %82)
  %84 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %85 = call i32 @brelse(%struct.buffer_head* %84)
  br label %98

86:                                               ; preds = %77
  %87 = load i32, i32* @end_buffer_read_sync, align 4
  %88 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %89 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @READA, align 4
  %91 = load i32, i32* @REQ_META, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %94 = call i32 @submit_bh(i32 %92, %struct.buffer_head* %93)
  br label %98

95:                                               ; preds = %70
  %96 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %97 = call i32 @brelse(%struct.buffer_head* %96)
  br label %98

98:                                               ; preds = %95, %86, %81, %69
  %99 = load i32, i32* %14, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %39

101:                                              ; preds = %30, %49, %39
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock*, i64, i32) #1

declare dso_local i64 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
