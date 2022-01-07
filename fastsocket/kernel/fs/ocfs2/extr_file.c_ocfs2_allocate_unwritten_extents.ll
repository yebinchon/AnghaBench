; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_allocate_unwritten_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_allocate_unwritten_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64)* @ocfs2_allocate_unwritten_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_allocate_unwritten_extents(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @ocfs2_read_inode_block(%struct.inode* %25, %struct.buffer_head** %13)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %114

32:                                               ; preds = %24
  %33 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i64 @ocfs2_size_fits_inline_data(%struct.buffer_head* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %114

38:                                               ; preds = %32
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %41 = call i32 @ocfs2_convert_inline_data_to_extents(%struct.inode* %39, %struct.buffer_head* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %114

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_3__* @OCFS2_SB(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = ashr i64 %49, %55
  store i64 %56, i64* %8, align 8
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i64 @ocfs2_clusters_for_bytes(i32 %59, i64 %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub nsw i64 %65, %64
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %106, %48
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %67
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @ocfs2_get_clusters(%struct.inode* %71, i64 %72, i64* %9, i64* %11, i32* null)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %114

79:                                               ; preds = %70
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i64, i64* %10, align 8
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %106

89:                                               ; preds = %85
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @__ocfs2_extend_allocation(%struct.inode* %90, i64 %91, i64 %92, i32 1)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @ENOSPC, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %104

104:                                              ; preds = %101, %96
  br label %114

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %88
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %8, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %10, align 8
  %112 = sub nsw i64 %111, %110
  store i64 %112, i64* %10, align 8
  br label %67

113:                                              ; preds = %67
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %104, %76, %44, %37, %29
  %115 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %116 = call i32 @brelse(%struct.buffer_head* %115)
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_size_fits_inline_data(%struct.buffer_head*, i64) #1

declare dso_local i32 @ocfs2_convert_inline_data_to_extents(%struct.inode*, %struct.buffer_head*) #1

declare dso_local %struct.TYPE_3__* @OCFS2_SB(i32) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(i32, i64) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @__ocfs2_extend_allocation(%struct.inode*, i64, i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
