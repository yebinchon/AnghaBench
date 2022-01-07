; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_zero_partial_clusters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_zero_partial_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"byte start: %llu, end: %llu\0A\00", align 1
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"1st range: start: %llu, tmpend: %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"2nd range: start: %llu, end: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @ocfs2_zero_partial_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_zero_partial_clusters(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ocfs2_super* @OCFS2_SB(i32 %18)
  store %struct.ocfs2_super* %19, %struct.ocfs2_super** %10, align 8
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sub i32 %29, 1
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sub i32 %35, 1
  %37 = and i32 %34, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %117

40:                                               ; preds = %33, %3
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %42 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %43 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %41, i32 %42)
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i64 @IS_ERR(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @PTR_ERR(i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %117

52:                                               ; preds = %40
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %59, 1
  %61 = xor i32 %60, -1
  %62 = and i32 %56, %61
  %63 = add i32 %55, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %67, %52
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %71, i64 %73)
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ocfs2_zero_range_for_truncate(%struct.inode* %75, i32* %76, i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %85

85:                                               ; preds = %82, %69
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %92 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sub i32 %93, 1
  %95 = xor i32 %94, -1
  %96 = and i32 %90, %95
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %98, i64 %100)
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @ocfs2_zero_range_for_truncate(%struct.inode* %102, i32* %103, i32 %104, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %89
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %112

112:                                              ; preds = %109, %89
  br label %113

113:                                              ; preds = %112, %85
  %114 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %114, i32* %115)
  br label %117

117:                                              ; preds = %113, %47, %39
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_zero_range_for_truncate(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
