; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_populate_write_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_populate_write_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, i64, i64, %struct.ocfs2_write_cluster_desc* }
%struct.ocfs2_write_cluster_desc = type { i64, i32, i32, i32, i64 }

@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_write_ctxt*, i32*, i32*)* @ocfs2_populate_write_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_populate_write_desc(%struct.inode* %0, %struct.ocfs2_write_ctxt* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_write_ctxt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_write_cluster_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_write_ctxt* %1, %struct.ocfs2_write_ctxt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %116, %4
  %18 = load i32, i32* %14, align 4
  %19 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %20 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %119

23:                                               ; preds = %17
  %24 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %25 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %24, i32 0, i32 3
  %26 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %25, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %26, i64 %28
  store %struct.ocfs2_write_cluster_desc* %29, %struct.ocfs2_write_cluster_desc** %10, align 8
  %30 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %31 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %10, align 8
  %37 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %23
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %10, align 8
  %43 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ocfs2_get_clusters(%struct.inode* %41, i64 %44, i64* %13, i32* %11, i32* %12)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %120

51:                                               ; preds = %40
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %62, 2
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %51
  br label %73

66:                                               ; preds = %23
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i64, i64* %13, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %65
  %74 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %10, align 8
  %75 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %78 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load i64, i64* %13, align 8
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUG_ON(i32 %84)
  %86 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %10, align 8
  %87 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %73
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %10, align 8
  %91 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %10, align 8
  %96 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %95, i32 0, i32 2
  store i32 1, i32* %96, align 4
  %97 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %10, align 8
  %98 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %97, i32 0, i32 1
  store i32 1, i32* %98, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, 1
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %94, %88
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %10, align 8
  %110 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %109, i32 0, i32 3
  store i32 1, i32* %110, align 8
  %111 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %10, align 8
  %112 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %11, align 4
  %115 = add i32 %114, -1
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %17

119:                                              ; preds = %17
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %48
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
