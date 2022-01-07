; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.h_ocfs2_calc_tree_trunc_credits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.h_ocfs2_calc_tree_trunc_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_extent_list = type { i32*, i32 }

@OCFS2_TRUNCATE_LOG_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.ocfs2_dinode*, %struct.ocfs2_extent_list*)* @ocfs2_calc_tree_trunc_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_calc_tree_trunc_credits(%struct.super_block* %0, i32 %1, %struct.ocfs2_dinode* %2, %struct.ocfs2_extent_list* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_dinode*, align 8
  %8 = alloca %struct.ocfs2_extent_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ocfs2_dinode* %2, %struct.ocfs2_dinode** %7, align 8
  store %struct.ocfs2_extent_list* %3, %struct.ocfs2_extent_list** %8, align 8
  %13 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %14 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %18 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 1, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %39 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %40 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %38, i32* %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 1, %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %48, %37, %34, %4
  %54 = load i64, i64* @OCFS2_TRUNCATE_LOG_UPDATE, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = call i64 @ocfs2_quota_trans_credits(%struct.super_block* %59)
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, i32*) #1

declare dso_local i64 @ocfs2_quota_trans_credits(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
