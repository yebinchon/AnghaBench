; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_new_metadata_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_new_metadata_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_AC_USE_META = common dso_local global i32 0, align 4
@ocfs2_block_group_search = common dso_local global i32 0, align 4
@EXTENT_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ALLOC_NEW_GROUP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %0, i32 %1, %struct.ocfs2_alloc_context** %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_alloc_context**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ocfs2_alloc_context** %2, %struct.ocfs2_alloc_context*** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ocfs2_alloc_context* @kzalloc(i32 12, i32 %9)
  %11 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  store %struct.ocfs2_alloc_context* %10, %struct.ocfs2_alloc_context** %11, align 8
  %12 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %13 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %14 = icmp ne %struct.ocfs2_alloc_context* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @mlog_errno(i32 %18)
  br label %55

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %23 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %24 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @OCFS2_AC_USE_META, align 4
  %26 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %27 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %26, align 8
  %28 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %30 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @ocfs2_block_group_search, align 4
  %33 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %34 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %33, align 8
  %35 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %37 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %38 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %37, align 8
  %39 = load i32, i32* @EXTENT_ALLOC_SYSTEM_INODE, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ALLOC_NEW_GROUP, align 4
  %42 = call i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super* %36, %struct.ocfs2_alloc_context* %38, i32 %39, i32 %40, i32* null, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %20
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %53

53:                                               ; preds = %50, %45
  br label %55

54:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %53, %15
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %60 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %59, align 8
  %61 = icmp ne %struct.ocfs2_alloc_context* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %64 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %63, align 8
  %65 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %64)
  %66 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %66, align 8
  br label %67

67:                                               ; preds = %62, %58, %55
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @mlog_exit(i32 %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.ocfs2_alloc_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32, i32, i32*, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
