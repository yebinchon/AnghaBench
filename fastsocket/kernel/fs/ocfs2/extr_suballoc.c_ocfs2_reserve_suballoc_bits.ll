; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_suballoc_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_suballoc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_alloc_context = type { i64, %struct.buffer_head*, i32, i64, %struct.inode* }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32, i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCFS2_CHAIN_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid chain allocator %llu\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Disk Full: wanted=%u, free_bits=%u\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@ALLOC_NEW_GROUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"Alloc File %u Full: wanted=%u, free_bits=%u, and we don't alloc a new group for it.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32, i64, i32*, i32)* @ocfs2_reserve_suballoc_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super* %0, %struct.ocfs2_alloc_context* %1, i32 %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %21 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %23 = call i32 (...) @mlog_entry_void()
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i64, i64* %11, align 8
  %27 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %24, i32 %25, i64 %26)
  store %struct.inode* %27, %struct.inode** %16, align 8
  %28 = load %struct.inode*, %struct.inode** %16, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @mlog_errno(i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %182

36:                                               ; preds = %6
  %37 = load %struct.inode*, %struct.inode** %16, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.inode*, %struct.inode** %16, align 8
  %41 = call i32 @ocfs2_inode_lock(%struct.inode* %40, %struct.buffer_head** %17, i32 1)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.inode*, %struct.inode** %16, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.inode*, %struct.inode** %16, align 8
  %49 = call i32 @iput(%struct.inode* %48)
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %7, align 4
  br label %182

53:                                               ; preds = %36
  %54 = load %struct.inode*, %struct.inode** %16, align 8
  %55 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %56 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %55, i32 0, i32 4
  store %struct.inode* %54, %struct.inode** %56, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %59 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %63, %struct.ocfs2_dinode** %18, align 8
  %64 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %65 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @OCFS2_CHAIN_FL, align 4
  %74 = call i32 @cpu_to_le32(i32 %73)
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %53
  %78 = load %struct.inode*, %struct.inode** %16, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %82 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le64_to_cpu(i32 %83)
  %85 = call i32 @ocfs2_error(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %14, align 4
  br label %176

88:                                               ; preds = %53
  %89 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %90 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le32_to_cpu(i32 %93)
  %95 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %96 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le32_to_cpu(i32 %99)
  %101 = sub nsw i64 %94, %100
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %19, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %170

105:                                              ; preds = %88
  %106 = load %struct.inode*, %struct.inode** %16, align 8
  %107 = call i64 @ocfs2_is_cluster_bitmap(%struct.inode* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %19, align 8
  %112 = call i32 (i32, i8*, i64, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %111)
  %113 = load i32, i32* @ENOSPC, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %14, align 4
  br label %176

115:                                              ; preds = %105
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @ALLOC_NEW_GROUP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %115
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %19, align 8
  %124 = call i32 (i32, i8*, i64, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i64 %121, i64 %122, i64 %123)
  %125 = load i32, i32* @ENOSPC, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %176

127:                                              ; preds = %115
  %128 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %129 = load %struct.inode*, %struct.inode** %16, align 8
  %130 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %131 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %132 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @ocfs2_block_group_alloc(%struct.ocfs2_super* %128, %struct.inode* %129, %struct.buffer_head* %130, i32 %133, i32* %134, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %127
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @ENOSPC, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @mlog_errno(i32 %145)
  br label %147

147:                                              ; preds = %144, %139
  br label %176

148:                                              ; preds = %127
  %149 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %150 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = call i32 @atomic_inc(i32* %151)
  %153 = load i64, i64* %15, align 8
  %154 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %155 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @le32_to_cpu(i32 %158)
  %160 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %161 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @le32_to_cpu(i32 %164)
  %166 = sub nsw i64 %159, %165
  %167 = icmp sgt i64 %153, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @BUG_ON(i32 %168)
  br label %170

170:                                              ; preds = %148, %88
  %171 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %172 = call i32 @get_bh(%struct.buffer_head* %171)
  %173 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %174 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %175 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %174, i32 0, i32 1
  store %struct.buffer_head* %173, %struct.buffer_head** %175, align 8
  br label %176

176:                                              ; preds = %170, %147, %120, %109, %77
  %177 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %178 = call i32 @brelse(%struct.buffer_head* %177)
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @mlog_exit(i32 %179)
  %181 = load i32, i32* %14, align 4
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %176, %44, %30
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @ocfs2_block_group_alloc(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
