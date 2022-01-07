; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_replace_cow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_replace_cow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cow_context = type { i64, i64, i32 (%struct.ocfs2_cow_context*, i64, i64*, i64*, i32*)*, i32, %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.ocfs2_super = type { i32 }

@.str = private unnamed_addr constant [88 x i8] c"Inode %lu want to use refcount tree, but the feature bit is not set in the super block.\00", align 1
@EROFS = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cow_context*)* @ocfs2_replace_cow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_replace_cow(%struct.ocfs2_cow_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_cow_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_cow_context* %0, %struct.ocfs2_cow_context** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %12, i32 0, i32 4
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ocfs2_super* @OCFS2_SB(i32 %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %11, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ocfs2_super* @OCFS2_SB(i32 %27)
  %29 = call i32 @ocfs2_refcount_tree(%struct.ocfs2_super* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %1
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ocfs2_error(i32 %34, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EROFS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %109

41:                                               ; preds = %1
  %42 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %43 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %42, i32 0, i32 3
  %44 = call i32 @ocfs2_init_dealloc_ctxt(i32* %43)
  br label %45

45:                                               ; preds = %88, %41
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %95

48:                                               ; preds = %45
  %49 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %50 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %49, i32 0, i32 2
  %51 = load i32 (%struct.ocfs2_cow_context*, i64, i64*, i64*, i32*)*, i32 (%struct.ocfs2_cow_context*, i64, i64*, i64*, i32*)** %50, align 8
  %52 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 %51(%struct.ocfs2_cow_context* %52, i64 %53, i64* %8, i64* %9, i32* %10)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @mlog_errno(i32 %58)
  br label %95

60:                                               ; preds = %48
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i64, i64* %7, align 8
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %71, %60
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @ocfs2_make_clusters_writable(i32 %76, %struct.ocfs2_cow_context* %77, i64 %78, i64 %79, i64 %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %95

88:                                               ; preds = %73
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %7, align 8
  %91 = sub nsw i64 %90, %89
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %6, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %6, align 8
  br label %45

95:                                               ; preds = %85, %57, %45
  %96 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %97 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %96, i32 0, i32 3
  %98 = call i64 @ocfs2_dealloc_has_cluster(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %102 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %101, i32 1)
  %103 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %104 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %105 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %104, i32 0, i32 3
  %106 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %103, i32* %105)
  br label %107

107:                                              ; preds = %100, %95
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %31
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_refcount_tree(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_make_clusters_writable(i32, %struct.ocfs2_cow_context*, i64, i64, i64, i32) #1

declare dso_local i64 @ocfs2_dealloc_has_cluster(i32*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
