; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_mv_xattr_buckets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_mv_xattr_buckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"mv xattrs from cluster %llu to %llu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.TYPE_10__*, i64, i64, i64, i32, i32*)* @ocfs2_mv_xattr_buckets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_mv_xattr_buckets(%struct.inode* %0, %struct.TYPE_10__* %1, i64 %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %22 = alloca %struct.ocfs2_xattr_bucket*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ocfs2_super* @OCFS2_SB(i32 %25)
  store %struct.ocfs2_super* %26, %struct.ocfs2_super** %18, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ocfs2_blocks_per_xattr_bucket(i32 %29)
  store i32 %30, i32* %19, align 4
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %32 = call i32 @ocfs2_xattr_buckets_per_cluster(%struct.ocfs2_super* %31)
  store i32 %32, i32* %20, align 4
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %20, align 4
  %38 = icmp uge i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %7
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %20, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %19, align 4
  %49 = mul i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %43, %7
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode* %54)
  store %struct.ocfs2_xattr_bucket* %55, %struct.ocfs2_xattr_bucket** %21, align 8
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = call %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode* %56)
  store %struct.ocfs2_xattr_bucket* %57, %struct.ocfs2_xattr_bucket** %22, align 8
  %58 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %59 = icmp ne %struct.ocfs2_xattr_bucket* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %62 = icmp ne %struct.ocfs2_xattr_bucket* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %184

68:                                               ; preds = %60
  %69 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %69, i64 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %184

77:                                               ; preds = %68
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %19, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  store i32 %85, i32* %17, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @ocfs2_extend_trans(%struct.TYPE_10__* %86, i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %77
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @mlog_errno(i32 %92)
  br label %184

94:                                               ; preds = %77
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %97 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %98 = call i32 @ocfs2_xattr_bucket_journal_access(%struct.TYPE_10__* %95, %struct.ocfs2_xattr_bucket* %96, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %184

104:                                              ; preds = %94
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %131, %104
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %20, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %105
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %19, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %112, %116
  %118 = load i64, i64* %12, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %19, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %118, %122
  %124 = call i32 @ocfs2_cp_xattr_bucket(%struct.inode* %110, %struct.TYPE_10__* %111, i64 %117, i64 %123, i32 1)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %109
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @mlog_errno(i32 %128)
  br label %184

130:                                              ; preds = %109
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %105

134:                                              ; preds = %105
  %135 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %135, i64 %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @mlog_errno(i32 %141)
  br label %184

143:                                              ; preds = %134
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %145 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %146 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %147 = call i32 @ocfs2_xattr_bucket_journal_access(%struct.TYPE_10__* %144, %struct.ocfs2_xattr_bucket* %145, i32 %146)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @mlog_errno(i32 %151)
  br label %184

153:                                              ; preds = %143
  %154 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %155 = call %struct.TYPE_11__* @bucket_xh(%struct.ocfs2_xattr_bucket* %154)
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32, i32* %20, align 4
  %158 = sub nsw i32 0, %157
  %159 = call i32 @le16_add_cpu(i32* %156, i32 %158)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %161 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %162 = call i32 @ocfs2_xattr_bucket_journal_dirty(%struct.TYPE_10__* %160, %struct.ocfs2_xattr_bucket* %161)
  %163 = load i32, i32* %20, align 4
  %164 = call i32 @cpu_to_le16(i32 %163)
  %165 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %166 = call %struct.TYPE_11__* @bucket_xh(%struct.ocfs2_xattr_bucket* %165)
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %169 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %170 = call i32 @ocfs2_xattr_bucket_journal_dirty(%struct.TYPE_10__* %168, %struct.ocfs2_xattr_bucket* %169)
  %171 = load i32*, i32** %14, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %153
  %174 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %175 = call %struct.TYPE_11__* @bucket_xh(%struct.ocfs2_xattr_bucket* %174)
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @le32_to_cpu(i32 %180)
  %182 = load i32*, i32** %14, align 8
  store i32 %181, i32* %182, align 4
  br label %183

183:                                              ; preds = %173, %153
  br label %184

184:                                              ; preds = %183, %150, %140, %127, %101, %91, %74, %63
  %185 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %22, align 8
  %186 = call i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket* %185)
  %187 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %21, align 8
  %188 = call i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket* %187)
  %189 = load i32, i32* %16, align 4
  ret i32 %189
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_blocks_per_xattr_bucket(i32) #1

declare dso_local i32 @ocfs2_xattr_buckets_per_cluster(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket*, i64) #1

declare dso_local i32 @ocfs2_extend_trans(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(%struct.TYPE_10__*, %struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @ocfs2_cp_xattr_bucket(%struct.inode*, %struct.TYPE_10__*, i64, i64, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(%struct.TYPE_10__*, %struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
