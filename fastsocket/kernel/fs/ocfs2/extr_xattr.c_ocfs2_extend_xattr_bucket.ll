; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_extend_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_extend_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [76 x i8] c"extend xattr bucket in %llu, xattr extend rec starting from %llu, len = %u\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.TYPE_9__*, %struct.ocfs2_xattr_bucket*, i32, i32)* @ocfs2_extend_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_extend_xattr_bucket(%struct.inode* %0, %struct.TYPE_9__* %1, %struct.ocfs2_xattr_bucket* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %13, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ocfs2_blocks_per_xattr_bucket(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %26 = call %struct.TYPE_10__* @bucket_xh(%struct.ocfs2_xattr_bucket* %25)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %33 = call i32 @bucket_blkno(%struct.ocfs2_xattr_bucket* %32)
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %34, i32 %35)
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %40 = call i32 @ocfs2_xattr_buckets_per_cluster(%struct.ocfs2_super* %39)
  %41 = mul nsw i32 %38, %40
  %42 = icmp sge i32 %37, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %46 = call i32 @bucket_blkno(%struct.ocfs2_xattr_bucket* %45)
  %47 = load i32, i32* %16, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %14, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %46, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %14, align 4
  %56 = mul nsw i32 3, %55
  %57 = add nsw i32 %54, %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @ocfs2_extend_trans(%struct.TYPE_9__* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %5
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %115

70:                                               ; preds = %5
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %73 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %74 = call i32 @ocfs2_xattr_bucket_journal_access(%struct.TYPE_9__* %71, %struct.ocfs2_xattr_bucket* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %115

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %96, %80
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @ocfs2_cp_xattr_bucket(%struct.inode* %86, %struct.TYPE_9__* %87, i32 %88, i32 %91, i32 0)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %115

96:                                               ; preds = %85
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %15, align 4
  br label %81

100:                                              ; preds = %81
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @ocfs2_divide_xattr_bucket(%struct.inode* %101, %struct.TYPE_9__* %102, i32 %103, i32 %106, i32* null, i32 0)
  store i32 %107, i32* %11, align 4
  %108 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %109 = call %struct.TYPE_10__* @bucket_xh(%struct.ocfs2_xattr_bucket* %108)
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = call i32 @le16_add_cpu(i32* %110, i32 1)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %114 = call i32 @ocfs2_xattr_bucket_journal_dirty(%struct.TYPE_9__* %112, %struct.ocfs2_xattr_bucket* %113)
  br label %115

115:                                              ; preds = %100, %95, %77, %67
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_blocks_per_xattr_bucket(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_10__* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_xattr_buckets_per_cluster(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_extend_trans(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(%struct.TYPE_9__*, %struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @ocfs2_cp_xattr_bucket(%struct.inode*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_divide_xattr_bucket(%struct.inode*, %struct.TYPE_9__*, i32, i32, i32*, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(%struct.TYPE_9__*, %struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
