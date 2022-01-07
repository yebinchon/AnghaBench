; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_relink_block_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_relink_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.ocfs2_group_desc = type { i8*, i8* }

@.str = private unnamed_addr constant [62 x i8] c"Suballoc %llu, chain %u, move group %llu to top, prev = %llu\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, %struct.buffer_head*, i64)* @ocfs2_relink_block_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_relink_block_group(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, %struct.buffer_head* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_dinode*, align 8
  %18 = alloca %struct.ocfs2_group_desc*, align 8
  %19 = alloca %struct.ocfs2_group_desc*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %23, %struct.ocfs2_dinode** %17, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %27, %struct.ocfs2_group_desc** %18, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %31, %struct.ocfs2_group_desc** %19, align 8
  %32 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %33 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %19, align 8
  %39 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %45 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @le64_to_cpu(i8* %46)
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %50 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @le64_to_cpu(i8* %51)
  %53 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %19, align 8
  %54 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @le64_to_cpu(i8* %55)
  %57 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %48, i64 %52, i64 %56)
  %58 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %59 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @le64_to_cpu(i8* %66)
  store i64 %67, i64* %14, align 8
  %68 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %69 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @le64_to_cpu(i8* %70)
  store i64 %71, i64* %15, align 8
  %72 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %19, align 8
  %73 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @le64_to_cpu(i8* %74)
  store i64 %75, i64* %16, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = call i32 @INODE_CACHE(%struct.inode* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %80 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %81 = call i32 @ocfs2_journal_access_gd(i32* %76, i32 %78, %struct.buffer_head* %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %6
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %166

87:                                               ; preds = %6
  %88 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %89 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %19, align 8
  %92 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %95 = call i32 @ocfs2_journal_dirty(i32* %93, %struct.buffer_head* %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  br label %166

101:                                              ; preds = %87
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = call i32 @INODE_CACHE(%struct.inode* %103)
  %105 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %106 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %107 = call i32 @ocfs2_journal_access_gd(i32* %102, i32 %104, %struct.buffer_head* %105, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %166

113:                                              ; preds = %101
  %114 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %115 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %124 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %127 = call i32 @ocfs2_journal_dirty(i32* %125, %struct.buffer_head* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %113
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @mlog_errno(i32 %131)
  br label %166

133:                                              ; preds = %113
  %134 = load i32*, i32** %7, align 8
  %135 = load %struct.inode*, %struct.inode** %8, align 8
  %136 = call i32 @INODE_CACHE(%struct.inode* %135)
  %137 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %138 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %139 = call i32 @ocfs2_journal_access_di(i32* %134, i32 %136, %struct.buffer_head* %137, i32 %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @mlog_errno(i32 %143)
  br label %166

145:                                              ; preds = %133
  %146 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %147 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %150 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i64, i64* %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store i8* %148, i8** %156, align 8
  %157 = load i32*, i32** %7, align 8
  %158 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %159 = call i32 @ocfs2_journal_dirty(i32* %157, %struct.buffer_head* %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %145
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @mlog_errno(i32 %163)
  br label %166

165:                                              ; preds = %145
  store i32 0, i32* %13, align 4
  br label %166

166:                                              ; preds = %165, %162, %142, %130, %110, %98, %84
  %167 = load i32, i32* %13, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %166
  %170 = load i64, i64* %14, align 8
  %171 = call i8* @cpu_to_le64(i64 %170)
  %172 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %173 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i64, i64* %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i8* %171, i8** %179, align 8
  %180 = load i64, i64* %15, align 8
  %181 = call i8* @cpu_to_le64(i64 %180)
  %182 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %183 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  %184 = load i64, i64* %16, align 8
  %185 = call i8* @cpu_to_le64(i64 %184)
  %186 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %19, align 8
  %187 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  br label %188

188:                                              ; preds = %169, %166
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @mlog_exit(i32 %189)
  %191 = load i32, i32* %13, align 4
  ret i32 %191
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i64, i64) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
