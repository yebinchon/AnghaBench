; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_complete_reflink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_complete_reflink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32, i32, %struct.TYPE_4__ }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*, i32)* @ocfs2_complete_reflink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_complete_reflink(%struct.inode* %0, %struct.buffer_head* %1, %struct.inode* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %20, %struct.ocfs2_dinode** %14, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %15, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @i_size_read(%struct.inode* %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @OCFS2_SB(i32 %29)
  %31 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %32 = call i32* @ocfs2_start_trans(i32 %30, i32 %31)
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %5
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @PTR_ERR(i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %174

42:                                               ; preds = %5
  %43 = load i32*, i32** %13, align 8
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = call i32 @INODE_CACHE(%struct.inode* %44)
  %46 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %47 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %48 = call i32 @ocfs2_journal_access_di(i32* %43, i32 %45, %struct.buffer_head* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %166

54:                                               ; preds = %42
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = call %struct.TYPE_3__* @OCFS2_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = call %struct.TYPE_3__* @OCFS2_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call %struct.TYPE_3__* @OCFS2_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call %struct.TYPE_3__* @OCFS2_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = call %struct.TYPE_3__* @OCFS2_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = call %struct.TYPE_3__* @OCFS2_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = call %struct.TYPE_3__* @OCFS2_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = call %struct.TYPE_3__* @OCFS2_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @i_size_write(%struct.inode* %84, i32 %85)
  %87 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %88 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %91 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %90, i32 0, i32 11
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %93 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %96 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %95, i32 0, i32 10
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %98 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %101 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %103 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %106 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %108 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %111 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %162

114:                                              ; preds = %54
  %115 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %116 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %119 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  %120 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %121 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %124 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %126 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %129 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  %130 = load %struct.inode*, %struct.inode** %9, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 2
  %132 = bitcast %struct.TYPE_4__* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 bitcast (%struct.TYPE_4__* @CURRENT_TIME to i8*), i64 8, i1 false)
  %133 = load %struct.inode*, %struct.inode** %9, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @cpu_to_le64(i32 %136)
  %138 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %139 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load %struct.inode*, %struct.inode** %9, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @cpu_to_le32(i32 %143)
  %145 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %146 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load %struct.inode*, %struct.inode** %7, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.inode*, %struct.inode** %9, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %153 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %156 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %158 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %161 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %114, %54
  %163 = load i32*, i32** %13, align 8
  %164 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %165 = call i32 @ocfs2_journal_dirty(i32* %163, %struct.buffer_head* %164)
  br label %166

166:                                              ; preds = %162, %51
  %167 = load %struct.inode*, %struct.inode** %9, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @OCFS2_SB(i32 %169)
  %171 = load i32*, i32** %13, align 8
  %172 = call i32 @ocfs2_commit_trans(i32 %170, i32* %171)
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %166, %36
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
