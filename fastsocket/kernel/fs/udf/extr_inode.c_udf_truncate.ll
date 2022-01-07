; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.udf_inode_info = type { i64, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@udf_get_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_truncate(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @S_ISREG(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @S_ISDIR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @S_ISLNK(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %147

24:                                               ; preds = %17, %11, %1
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = call i64 @IS_APPEND(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = call i64 @IS_IMMUTABLE(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  br label %147

33:                                               ; preds = %28
  %34 = call i32 (...) @lock_kernel()
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %35)
  store %struct.udf_inode_info* %36, %struct.udf_inode_info** %5, align 8
  %37 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %38 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %116

42:                                               ; preds = %33
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %49, %52
  %54 = icmp slt i32 %47, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %42
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = load %struct.inode*, %struct.inode** %2, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @udf_expand_file_adinicb(%struct.inode* %56, i32 %59, i32* %4)
  %61 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %62 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %55
  %67 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %68 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.inode*, %struct.inode** %2, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = call i32 (...) @unlock_kernel()
  br label %147

73:                                               ; preds = %55
  %74 = load %struct.inode*, %struct.inode** %2, align 8
  %75 = call i32 @udf_truncate_extents(%struct.inode* %74)
  br label %76

76:                                               ; preds = %73
  br label %115

77:                                               ; preds = %42
  %78 = load %struct.inode*, %struct.inode** %2, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.inode*, %struct.inode** %2, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %80, %86
  store i32 %87, i32* %3, align 4
  %88 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %89 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %93 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = load %struct.inode*, %struct.inode** %2, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %3, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load %struct.inode*, %struct.inode** %2, align 8
  %107 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %106)
  %108 = sub nsw i32 %105, %107
  %109 = call i32 @memset(i64 %98, i32 0, i32 %108)
  %110 = load %struct.inode*, %struct.inode** %2, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %114 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %77, %76
  br label %127

116:                                              ; preds = %33
  %117 = load %struct.inode*, %struct.inode** %2, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.inode*, %struct.inode** %2, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @udf_get_block, align 4
  %124 = call i32 @block_truncate_page(i32 %119, i32 %122, i32 %123)
  %125 = load %struct.inode*, %struct.inode** %2, align 8
  %126 = call i32 @udf_truncate_extents(%struct.inode* %125)
  br label %127

127:                                              ; preds = %116, %115
  %128 = load %struct.inode*, %struct.inode** %2, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = call i32 @current_fs_time(%struct.TYPE_4__* %130)
  %132 = load %struct.inode*, %struct.inode** %2, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.inode*, %struct.inode** %2, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 3
  store i32 %131, i32* %135, align 4
  %136 = load %struct.inode*, %struct.inode** %2, align 8
  %137 = call i64 @IS_SYNC(%struct.inode* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load %struct.inode*, %struct.inode** %2, align 8
  %141 = call i32 @udf_sync_inode(%struct.inode* %140)
  br label %145

142:                                              ; preds = %127
  %143 = load %struct.inode*, %struct.inode** %2, align 8
  %144 = call i32 @mark_inode_dirty(%struct.inode* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = call i32 (...) @unlock_kernel()
  br label %147

147:                                              ; preds = %145, %66, %32, %23
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @udf_expand_file_adinicb(%struct.inode*, i32, i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @udf_truncate_extents(%struct.inode*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @block_truncate_page(i32, i32, i32) #1

declare dso_local i32 @current_fs_time(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @udf_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
