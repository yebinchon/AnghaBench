; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_claim_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_claim_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i64, i32, i64 }

@OCFS2_AC_USE_INODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_claim_new_inode(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.buffer_head* %3, %struct.ocfs2_alloc_context* %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_alloc_context*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %18 = call i32 (...) @mlog_entry_void()
  %19 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %20 = icmp ne %struct.ocfs2_alloc_context* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %25 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %31 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %37 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @OCFS2_AC_USE_INODE, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %45 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %46 = call i32 @ocfs2_init_inode_ac_group(%struct.inode* %43, %struct.buffer_head* %44, %struct.ocfs2_alloc_context* %45)
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %48 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i64*, i64** %13, align 8
  %51 = call i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_super* %47, %struct.ocfs2_alloc_context* %48, i32* %49, i32 1, i32 1, i64* %50, i32* %16, i64* %17)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %7
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %78

57:                                               ; preds = %7
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %59 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load i64, i64* %17, align 8
  %67 = load i64*, i64** %13, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %66, %68
  %70 = load i64*, i64** %14, align 8
  store i64 %69, i64* %70, align 8
  %71 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %72 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %77 = call i32 @ocfs2_save_inode_ac_group(%struct.inode* %75, %struct.ocfs2_alloc_context* %76)
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %57, %54
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @mlog_exit(i32 %79)
  %81 = load i32, i32* %15, align 4
  ret i32 %81
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_init_inode_ac_group(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32*, i32, i32, i64*, i32*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ocfs2_save_inode_ac_group(%struct.inode*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
