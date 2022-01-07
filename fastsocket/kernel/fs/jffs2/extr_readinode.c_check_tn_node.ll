; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_check_tn_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_check_tn_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_tmp_dnode_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@REF_UNCHECKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"check node %#04x-%#04x, phys offs %#08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"check_node_data() returned error: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"CRC error, mark it obsolete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_tmp_dnode_info*)* @check_tn_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tn_node(%struct.jffs2_sb_info* %0, %struct.jffs2_tmp_dnode_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_tmp_dnode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_tmp_dnode_info* %1, %struct.jffs2_tmp_dnode_info** %5, align 8
  %7 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %8 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ref_obsolete(i32 %11)
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %15 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ref_flags(i32 %18)
  %20 = load i64, i64* @REF_UNCHECKED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

23:                                               ; preds = %2
  %24 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %25 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %30 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %35 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %33, %38
  %40 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %41 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ref_offset(i32 %44)
  %46 = call i32 (i8*, ...) @dbg_readinode(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %39, i32 %45)
  %47 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %48 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %49 = call i32 @check_node_data(%struct.jffs2_sb_info* %47, %struct.jffs2_tmp_dnode_info* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %23
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @JFFS2_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %74

58:                                               ; preds = %23
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @dbg_readinode(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %67 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %68 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info* %66, i32 %71)
  br label %73

73:                                               ; preds = %64, %58
  br label %74

74:                                               ; preds = %73, %55
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ref_obsolete(i32) #1

declare dso_local i64 @ref_flags(i32) #1

declare dso_local i32 @dbg_readinode(i8*, ...) #1

declare dso_local i32 @ref_offset(i32) #1

declare dso_local i32 @check_node_data(%struct.jffs2_sb_info*, %struct.jffs2_tmp_dnode_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @JFFS2_ERROR(i8*, i32) #1

declare dso_local i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
