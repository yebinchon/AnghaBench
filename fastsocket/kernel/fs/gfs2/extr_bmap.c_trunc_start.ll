; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_trunc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_trunc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }

@RES_DINODE = common dso_local global i64 0, align 8
@RES_JDATA = common dso_local global i64 0, align 8
@GFS2_JTRUNC_REVOKES = common dso_local global i32 0, align 4
@GFS2_DIF_TRUNC_IN_PROG = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @trunc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trunc_start(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_sbd*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %16)
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %10, align 8
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %22 = call i32 @gfs2_is_jdata(%struct.gfs2_inode* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %27 = load i64, i64* @RES_DINODE, align 8
  %28 = load i64, i64* @RES_JDATA, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @GFS2_JTRUNC_REVOKES, align 4
  %31 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %26, i64 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %34 = load i64, i64* @RES_DINODE, align 8
  %35 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %33, i64 %34, i32 0)
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  br label %129

41:                                               ; preds = %36
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %43 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %42, %struct.buffer_head** %11)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %125

47:                                               ; preds = %41
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %49 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %52 = call i32 @gfs2_trans_add_meta(i32 %50, %struct.buffer_head* %51)
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %54 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @gfs2_buffer_clear_tail(%struct.buffer_head* %57, i32 %61)
  br label %86

63:                                               ; preds = %47
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %66 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = and i32 %64, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load %struct.address_space*, %struct.address_space** %10, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @gfs2_block_truncate_page(%struct.address_space* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %122

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %63
  %81 = load i32, i32* @GFS2_DIF_TRUNC_IN_PROG, align 4
  %82 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %83 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %56
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @i_size_write(%struct.inode* %87, i32 %88)
  %90 = load i32, i32* @CURRENT_TIME, align 4
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %92 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %95 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 %90, i32* %96, align 4
  %97 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %98 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %97, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %86
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @gfs2_journaled_truncate(%struct.inode* %105, i32 %106, i32 %107)
  store i32 %108, i32* %13, align 4
  br label %114

109:                                              ; preds = %86
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @truncate_pagecache(%struct.inode* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %119 = call i32 @brelse(%struct.buffer_head* %118)
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %4, align 4
  br label %129

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %78
  %123 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %124 = call i32 @brelse(%struct.buffer_head* %123)
  br label %125

125:                                              ; preds = %122, %46
  %126 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %127 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %126)
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %125, %117, %39
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.buffer_head*, i32) #1

declare dso_local i32 @gfs2_block_truncate_page(%struct.address_space*, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_journaled_truncate(%struct.inode*, i32, i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
