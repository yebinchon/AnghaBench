; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_dinode = type { i32, i64, i64 }
%struct.ocfs2_refcount_tree = type { %struct.ocfs2_caching_info }
%struct.ocfs2_caching_info = type { i32 }

@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_xattr_remove(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  %8 = alloca %struct.ocfs2_refcount_tree*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_caching_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %13)
  store %struct.ocfs2_inode_info* %14, %struct.ocfs2_inode_info** %6, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %18, %struct.ocfs2_dinode** %7, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_caching_info* null, %struct.ocfs2_caching_info** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @OCFS2_SB(i32 %21)
  %23 = call i32 @ocfs2_supports_xattr(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %179

26:                                               ; preds = %2
  %27 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %28 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %179

34:                                               ; preds = %26
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %34
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @OCFS2_SB(i32 %45)
  %47 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @le64_to_cpu(i64 %49)
  %51 = call i32 @ocfs2_lock_refcount_tree(i32 %46, i32 %50, i32 1, %struct.ocfs2_refcount_tree** %8, %struct.buffer_head** %9)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %165

57:                                               ; preds = %42
  %58 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %8, align 8
  %59 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %58, i32 0, i32 0
  store %struct.ocfs2_caching_info* %59, %struct.ocfs2_caching_info** %10, align 8
  br label %60

60:                                               ; preds = %57, %34
  %61 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %62 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %70 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %72 = call i32 @ocfs2_xattr_ibody_remove(%struct.inode* %68, %struct.buffer_head* %69, %struct.ocfs2_caching_info* %70, %struct.buffer_head* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %165

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %81 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %87 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @le64_to_cpu(i64 %88)
  %90 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %92 = call i32 @ocfs2_xattr_free_block(%struct.inode* %85, i32 %89, %struct.ocfs2_caching_info* %90, %struct.buffer_head* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @mlog_errno(i32 %96)
  br label %165

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %79
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @OCFS2_SB(i32 %102)
  %104 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %105 = call i32* @ocfs2_start_trans(i32 %103, i32 %104)
  store i32* %105, i32** %11, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i64 @IS_ERR(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @PTR_ERR(i32* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %165

114:                                              ; preds = %99
  %115 = load i32*, i32** %11, align 8
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = call i32 @INODE_CACHE(%struct.inode* %116)
  %118 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %119 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %120 = call i32 @ocfs2_journal_access_di(i32* %115, i32 %117, %struct.buffer_head* %118, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @mlog_errno(i32 %124)
  br label %158

126:                                              ; preds = %114
  %127 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %128 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  %129 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %130 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %129, i32 0, i32 1
  %131 = call i32 @spin_lock(i32* %130)
  %132 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %133 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %134 = or i32 %132, %133
  %135 = xor i32 %134, -1
  %136 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %137 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %141 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @cpu_to_le16(i32 %142)
  %144 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %145 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %147 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %146, i32 0, i32 1
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = load i32*, i32** %11, align 8
  %150 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %151 = call i32 @ocfs2_journal_dirty(i32* %149, %struct.buffer_head* %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %126
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %157

157:                                              ; preds = %154, %126
  br label %158

158:                                              ; preds = %157, %123
  %159 = load %struct.inode*, %struct.inode** %4, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @OCFS2_SB(i32 %161)
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @ocfs2_commit_trans(i32 %162, i32* %163)
  br label %165

165:                                              ; preds = %158, %109, %95, %75, %54
  %166 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %8, align 8
  %167 = icmp ne %struct.ocfs2_refcount_tree* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load %struct.inode*, %struct.inode** %4, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @OCFS2_SB(i32 %171)
  %173 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %8, align 8
  %174 = call i32 @ocfs2_unlock_refcount_tree(i32 %172, %struct.ocfs2_refcount_tree* %173, i32 1)
  br label %175

175:                                              ; preds = %168, %165
  %176 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %177 = call i32 @brelse(%struct.buffer_head* %176)
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %175, %33, %25
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_supports_xattr(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(i32, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_ibody_remove(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_xattr_free_block(%struct.inode*, i32, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(i32, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
