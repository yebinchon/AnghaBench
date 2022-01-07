; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_buckets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_buckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_reflink_xattr_tree_args = type { %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32 }
%struct.TYPE_16__ = type { i32 }

@ocfs2_journal_access = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@ocfs2_get_reflink_xattr_value_root = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.ocfs2_reflink_xattr_tree_args*)* @ocfs2_reflink_xattr_buckets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink_xattr_buckets(i32* %0, i32 %1, i32 %2, i32 %3, %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_reflink_xattr_tree_args* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_alloc_context*, align 8
  %13 = alloca %struct.ocfs2_alloc_context*, align 8
  %14 = alloca %struct.ocfs2_reflink_xattr_tree_args*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.super_block*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ocfs2_xattr_value_buf, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %12, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %13, align 8
  store %struct.ocfs2_reflink_xattr_tree_args* %6, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %24 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %23, i32 0, i32 2
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  store %struct.super_block* %29, %struct.super_block** %18, align 8
  %30 = load %struct.super_block*, %struct.super_block** %18, align 8
  %31 = call i32 @OCFS2_SB(%struct.super_block* %30)
  %32 = call i32 @ocfs2_xattr_buckets_per_cluster(i32 %31)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %19, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %20, align 4
  %36 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %37 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %21, align 4
  %41 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %22, i32 0, i32 0
  %42 = load i32, i32* @ocfs2_journal_access, align 4
  store i32 %42, i32* %41, align 4
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %182, %7
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %191

47:                                               ; preds = %43
  %48 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %49 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @ocfs2_read_xattr_bucket(%struct.TYPE_14__* %50, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %191

58:                                               ; preds = %47
  %59 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %60 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @ocfs2_init_xattr_bucket(%struct.TYPE_14__* %61, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %191

69:                                               ; preds = %58
  %70 = load i32, i32* %15, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %74 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = call %struct.TYPE_16__* @bucket_xh(%struct.TYPE_14__* %75)
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  store i32 %79, i32* %20, align 4
  br label %80

80:                                               ; preds = %72, %69
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %83 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %86 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %81, %struct.TYPE_14__* %84, i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %191

92:                                               ; preds = %80
  store i32 0, i32* %16, align 4
  br label %93

93:                                               ; preds = %112, %92
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %21, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %99 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @bucket_block(%struct.TYPE_14__* %100, i32 %101)
  %103 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %104 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @bucket_block(%struct.TYPE_14__* %105, i32 %106)
  %108 = load %struct.super_block*, %struct.super_block** %18, align 8
  %109 = getelementptr inbounds %struct.super_block, %struct.super_block* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @memcpy(i32 %102, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %93

115:                                              ; preds = %93
  %116 = load i32*, i32** %8, align 8
  %117 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %118 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %117, i32 0, i32 0
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %116, %struct.TYPE_14__* %119)
  %121 = load i32*, i32** %8, align 8
  %122 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %123 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %122, i32 0, i32 2
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %126 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %125, i32 0, i32 1
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %133 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %132, i32 0, i32 1
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = call %struct.TYPE_16__* @bucket_xh(%struct.TYPE_14__* %134)
  %136 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %137 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %136, i32 0, i32 0
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %144 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = call %struct.TYPE_16__* @bucket_xh(%struct.TYPE_14__* %145)
  %147 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %148 = load i32, i32* @ocfs2_get_reflink_xattr_value_root, align 4
  %149 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %150 = call i32 @ocfs2_reflink_xattr_header(i32* %121, %struct.TYPE_15__* %124, i32 %131, %struct.TYPE_16__* %135, i32 %142, %struct.TYPE_16__* %146, %struct.ocfs2_xattr_value_buf* %22, %struct.ocfs2_alloc_context* %147, i32 %148, %struct.ocfs2_reflink_xattr_tree_args* %149)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %115
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @mlog_errno(i32 %154)
  br label %191

156:                                              ; preds = %115
  %157 = load i32*, i32** %8, align 8
  %158 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %159 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %162 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %157, %struct.TYPE_14__* %160, i32 %161)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @mlog_errno(i32 %166)
  br label %191

168:                                              ; preds = %156
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %171 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %170, i32 0, i32 0
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  %173 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %169, %struct.TYPE_14__* %172)
  %174 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %175 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %174, i32 0, i32 1
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = call i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_14__* %176)
  %178 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %179 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %178, i32 0, i32 0
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = call i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_14__* %180)
  br label %182

182:                                              ; preds = %168
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %10, align 4
  br label %43

191:                                              ; preds = %165, %153, %89, %66, %55, %43
  %192 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %193 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %192, i32 0, i32 1
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = call i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_14__* %194)
  %196 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %14, align 8
  %197 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %196, i32 0, i32 0
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = call i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_14__* %198)
  %200 = load i32, i32* %17, align 4
  ret i32 %200
}

declare dso_local i32 @ocfs2_xattr_buckets_per_cluster(i32) #1

declare dso_local i32 @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @ocfs2_read_xattr_bucket(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_xattr_bucket(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_16__* @bucket_xh(%struct.TYPE_14__*) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bucket_block(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @ocfs2_reflink_xattr_header(i32*, %struct.TYPE_15__*, i32, %struct.TYPE_16__*, i32, %struct.TYPE_16__*, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_alloc_context*, i32, %struct.ocfs2_reflink_xattr_tree_args*) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
