; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_inline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_reflink = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ocfs2_super = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ocfs2_dinode = type { i8*, i8* }
%struct.ocfs2_xattr_header = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_xattr_value_buf = type { i32 (i32*, i32, %struct.TYPE_10__*, i32)*, %struct.TYPE_10__* }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ocfs2_get_xattr_value_root = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xattr_reflink*)* @ocfs2_reflink_xattr_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink_xattr_inline(%struct.ocfs2_xattr_reflink* %0) #0 {
  %2 = alloca %struct.ocfs2_xattr_reflink*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_xattr_header*, align 8
  %11 = alloca %struct.ocfs2_xattr_header*, align 8
  %12 = alloca %struct.ocfs2_alloc_context*, align 8
  %13 = alloca %struct.ocfs2_inode_info*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  %15 = alloca %struct.ocfs2_xattr_value_buf, align 8
  store %struct.ocfs2_xattr_reflink* %0, %struct.ocfs2_xattr_reflink** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %16 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %17 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %16, i32 0, i32 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ocfs2_super* @OCFS2_SB(i32 %20)
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %6, align 8
  %22 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %27, %struct.ocfs2_dinode** %7, align 8
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @le16_to_cpu(i8* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %39, i32 0, i32 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = inttoptr i64 %46 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %47, %struct.ocfs2_xattr_header** %10, align 8
  %48 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = inttoptr i64 %55 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %56, %struct.ocfs2_xattr_header** %11, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %12, align 8
  %57 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %15, i32 0, i32 0
  store i32 (i32*, i32, %struct.TYPE_10__*, i32)* @ocfs2_journal_access_di, i32 (i32*, i32, %struct.TYPE_10__*, i32)** %57, align 8
  %58 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %15, i32 0, i32 1
  %59 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %60 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %58, align 8
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %63 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %10, align 8
  %64 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %65 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ocfs2_reflink_lock_xattr_allocators(%struct.ocfs2_super* %62, %struct.ocfs2_xattr_header* %63, i32 %66, i32* %4, %struct.ocfs2_alloc_context** %12)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %1
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  br label %181

73:                                               ; preds = %1
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %74, i32 %75)
  store i32* %76, i32** %5, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i64 @IS_ERR(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @PTR_ERR(i32* %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %181

85:                                               ; preds = %73
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %88 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @INODE_CACHE(i32 %89)
  %91 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %92 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %95 = call i32 @ocfs2_journal_access_di(i32* %86, i32 %90, %struct.TYPE_10__* %93, i32 %94)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %85
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  br label %177

101:                                              ; preds = %85
  %102 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %103 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %111 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %110, i32 0, i32 2
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @memcpy(i64 %109, i64 %117, i32 %118)
  %120 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %121 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %125, %struct.ocfs2_dinode** %14, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i8* @cpu_to_le16(i32 %126)
  %128 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %129 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %132 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %133 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %132, i32 0, i32 2
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %10, align 8
  %136 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %137 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %11, align 8
  %140 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %141 = load i32, i32* @ocfs2_get_xattr_value_root, align 4
  %142 = call i32 @ocfs2_reflink_xattr_header(i32* %130, %struct.ocfs2_xattr_reflink* %131, %struct.TYPE_9__* %134, %struct.ocfs2_xattr_header* %135, %struct.TYPE_10__* %138, %struct.ocfs2_xattr_header* %139, %struct.ocfs2_xattr_value_buf* %15, %struct.ocfs2_alloc_context* %140, i32 %141, i32* null)
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* %3, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %101
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @mlog_errno(i32 %146)
  br label %177

148:                                              ; preds = %101
  %149 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %150 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call %struct.ocfs2_inode_info* @OCFS2_I(i32 %151)
  store %struct.ocfs2_inode_info* %152, %struct.ocfs2_inode_info** %13, align 8
  %153 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %154 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %153, i32 0, i32 1
  %155 = call i32 @spin_lock(i32* %154)
  %156 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %157 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %160 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %164 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @cpu_to_le16(i32 %165)
  %167 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %168 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  %169 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %170 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %169, i32 0, i32 1
  %171 = call i32 @spin_unlock(i32* %170)
  %172 = load i32*, i32** %5, align 8
  %173 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %174 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %173, i32 0, i32 0
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = call i32 @ocfs2_journal_dirty(i32* %172, %struct.TYPE_10__* %175)
  br label %177

177:                                              ; preds = %148, %145, %98
  %178 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %178, i32* %179)
  br label %181

181:                                              ; preds = %177, %80, %70
  %182 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %183 = icmp ne %struct.ocfs2_alloc_context* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %186 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ocfs2_reflink_lock_xattr_allocators(%struct.ocfs2_super*, %struct.ocfs2_xattr_header*, i32, i32*, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @INODE_CACHE(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_reflink_xattr_header(i32*, %struct.ocfs2_xattr_reflink*, %struct.TYPE_9__*, %struct.ocfs2_xattr_header*, %struct.TYPE_10__*, %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_alloc_context*, i32, i32*) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
