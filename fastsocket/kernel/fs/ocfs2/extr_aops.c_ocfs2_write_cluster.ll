; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, i32*, i32, i32, i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_6__ = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Inode %llu: EAGAIN return during allocation.\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Corrupting extend for inode %llu, at logical block %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.ocfs2_write_ctxt*, i32, i64, i32)* @ocfs2_write_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_cluster(%struct.address_space* %0, i32 %1, i32 %2, i32 %3, %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_write_ctxt* %6, i32 %7, i64 %8, i32 %9) #0 {
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca %struct.ocfs2_alloc_context*, align 8
  %17 = alloca %struct.ocfs2_write_ctxt*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.inode*, align 8
  %27 = alloca %struct.ocfs2_extent_tree, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %15, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %16, align 8
  store %struct.ocfs2_write_ctxt* %6, %struct.ocfs2_write_ctxt** %17, align 8
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i32 %9, i32* %20, align 4
  %30 = load %struct.address_space*, %struct.address_space** %11, align 8
  %31 = getelementptr inbounds %struct.address_space, %struct.address_space* %30, i32 0, i32 0
  %32 = load %struct.inode*, %struct.inode** %31, align 8
  store %struct.inode* %32, %struct.inode** %26, align 8
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* %23, align 4
  %37 = load i32, i32* %23, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %10
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %28, align 4
  %41 = load %struct.inode*, %struct.inode** %26, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @OCFS2_SB(%struct.TYPE_5__* %43)
  %45 = load %struct.inode*, %struct.inode** %26, align 8
  %46 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %17, align 8
  %47 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %17, align 8
  %50 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %53 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %54 = call i32 @ocfs2_add_inode_data(i32 %44, %struct.inode* %45, i32* %28, i32 1, i32 0, i32 %48, i32 %51, %struct.ocfs2_alloc_context* %52, %struct.ocfs2_alloc_context* %53, i32* null)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = load %struct.inode*, %struct.inode** %26, align 8
  %61 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @mlog_bug_on_msg(i32 %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* %21, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %39
  %68 = load i32, i32* %21, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %184

70:                                               ; preds = %39
  br label %98

71:                                               ; preds = %10
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  %75 = load %struct.inode*, %struct.inode** %26, align 8
  %76 = call i32 @INODE_CACHE(%struct.inode* %75)
  %77 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %17, align 8
  %78 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %27, i32 %76, i32 %79)
  %81 = load %struct.inode*, %struct.inode** %26, align 8
  %82 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %17, align 8
  %83 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %88 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %17, align 8
  %89 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %88, i32 0, i32 2
  %90 = call i32 @ocfs2_mark_extent_written(%struct.inode* %81, %struct.ocfs2_extent_tree* %27, i32 %84, i32 %85, i32 1, i32 %86, %struct.ocfs2_alloc_context* %87, i32* %89)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %74
  %94 = load i32, i32* %21, align 4
  %95 = call i32 @mlog_errno(i32 %94)
  br label %184

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96, %71
  br label %98

98:                                               ; preds = %97, %70
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.inode*, %struct.inode** %26, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = call i64 @ocfs2_clusters_to_blocks(%struct.TYPE_5__* %104, i32 %105)
  store i64 %106, i64* %24, align 8
  br label %115

107:                                              ; preds = %98
  %108 = load i64, i64* %19, align 8
  %109 = load %struct.inode*, %struct.inode** %26, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = ashr i64 %108, %113
  store i64 %114, i64* %24, align 8
  br label %115

115:                                              ; preds = %107, %101
  %116 = load %struct.inode*, %struct.inode** %26, align 8
  %117 = load i64, i64* %24, align 8
  %118 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %116, i64 %117, i64* %25, i32* null, i32* null)
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %21, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load %struct.inode*, %struct.inode** %26, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load %struct.inode*, %struct.inode** %26, align 8
  %126 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %125)
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %24, align 8
  %130 = call i32 @ocfs2_error(%struct.TYPE_5__* %124, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %128, i64 %129)
  br label %184

131:                                              ; preds = %115
  %132 = load i64, i64* %25, align 8
  %133 = icmp eq i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @BUG_ON(i32 %134)
  store i32 0, i32* %22, align 4
  br label %136

136:                                              ; preds = %168, %131
  %137 = load i32, i32* %22, align 4
  %138 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %17, align 8
  %139 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %136
  %143 = load %struct.inode*, %struct.inode** %26, align 8
  %144 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %17, align 8
  %145 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %17, align 8
  %146 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %22, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i64, i64* %19, align 8
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @ocfs2_prepare_page_for_write(%struct.inode* %143, i64* %25, %struct.ocfs2_write_ctxt* %144, i32 %151, i32 %152, i64 %153, i32 %154, i32 %155)
  store i32 %156, i32* %29, align 4
  %157 = load i32, i32* %29, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %142
  %160 = load i32, i32* %29, align 4
  %161 = call i32 @mlog_errno(i32 %160)
  %162 = load i32, i32* %21, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* %29, align 4
  store i32 %165, i32* %21, align 4
  br label %166

166:                                              ; preds = %164, %159
  br label %167

167:                                              ; preds = %166, %142
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %22, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %22, align 4
  br label %136

171:                                              ; preds = %136
  %172 = load i32, i32* %21, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load i32, i32* %23, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load %struct.inode*, %struct.inode** %26, align 8
  %179 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %17, align 8
  %180 = load i64, i64* %19, align 8
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @ocfs2_write_failure(%struct.inode* %178, %struct.ocfs2_write_ctxt* %179, i64 %180, i32 %181)
  br label %183

183:                                              ; preds = %177, %174, %171
  br label %184

184:                                              ; preds = %183, %121, %93, %67
  %185 = load i32, i32* %21, align 4
  ret i32 %185
}

declare dso_local i32 @ocfs2_add_inode_data(i32, %struct.inode*, i32*, i32, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, i32*) #1

declare dso_local i32 @OCFS2_SB(%struct.TYPE_5__*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_extent_written(%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32, %struct.ocfs2_alloc_context*, i32*) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @ocfs2_error(%struct.TYPE_5__*, i8*, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_prepare_page_for_write(%struct.inode*, i64*, %struct.ocfs2_write_ctxt*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @ocfs2_write_failure(%struct.inode*, %struct.ocfs2_write_ctxt*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
