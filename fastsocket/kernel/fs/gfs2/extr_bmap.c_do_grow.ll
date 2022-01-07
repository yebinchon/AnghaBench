; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_do_grow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_do_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_alloc_parms = type { i64 }
%struct.buffer_head = type { i32 }

@RES_DATA = common dso_local global i64 0, align 8
@RES_DINODE = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_RG_BIT = common dso_local global i64 0, align 8
@GFS2_QUOTA_OFF = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @do_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_grow(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.gfs2_alloc_parms, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %12)
  store %struct.gfs2_inode* %13, %struct.gfs2_inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %7, align 8
  %16 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %8, i32 0, i32 0
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RES_DATA, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %16, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %23 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 4
  %34 = icmp ugt i64 %27, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %25
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %37 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %125

42:                                               ; preds = %35
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %44 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %43, %struct.gfs2_alloc_parms* %8)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %120

48:                                               ; preds = %42
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %25, %2
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %51 = load i64, i64* @RES_DINODE, align 8
  %52 = load i64, i64* @RES_STATFS, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* @RES_RG_BIT, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %57 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @GFS2_QUOTA_OFF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %65

63:                                               ; preds = %49
  %64 = load i64, i64* @RES_QUOTA, align 8
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i64 [ 0, %62 ], [ %64, %63 ]
  %67 = add nsw i64 %55, %66
  %68 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %50, i64 %67, i32 0)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %114

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %77 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %76, i32* null)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %111

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %72
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %84 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %83, %struct.buffer_head** %9)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %111

88:                                               ; preds = %82
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @i_size_write(%struct.inode* %89, i32 %90)
  %92 = load i32, i32* @CURRENT_TIME, align 4
  %93 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %94 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %97 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i32 %92, i32* %98, align 4
  %99 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %100 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %103 = call i32 @gfs2_trans_add_meta(i32 %101, %struct.buffer_head* %102)
  %104 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %104, i32 %107)
  %109 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %110 = call i32 @brelse(%struct.buffer_head* %109)
  br label %111

111:                                              ; preds = %88, %87, %80
  %112 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %113 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %112)
  br label %114

114:                                              ; preds = %111, %71
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %119 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %118)
  br label %120

120:                                              ; preds = %117, %47
  %121 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %122 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %121)
  br label %123

123:                                              ; preds = %120, %114
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %40
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, i32*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
