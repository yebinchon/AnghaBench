; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_claim_metadata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_claim_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_alloc_context = type { i64, i64, i64 }

@OCFS2_AC_USE_META = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_claim_metadata(%struct.ocfs2_super* %0, i32* %1, %struct.ocfs2_alloc_context* %2, i64 %3, i64* %4, i32* %5, i64* %6) #0 {
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64* %6, i64** %14, align 8
  %17 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %18 = icmp ne %struct.ocfs2_alloc_context* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %23 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %26 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add nsw i64 %27, %28
  %30 = icmp slt i64 %24, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %34 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OCFS2_AC_USE_META, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %41 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64*, i64** %12, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_super* %40, %struct.ocfs2_alloc_context* %41, i32* %42, i64 %43, i32 1, i64* %44, i32* %45, i64* %16)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %7
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %69

52:                                               ; preds = %7
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @atomic_inc(i32* %55)
  %57 = load i64, i64* %16, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %57, %59
  %61 = load i64*, i64** %14, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  %65 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %66 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %52, %49
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @mlog_exit(i32 %70)
  %72 = load i32, i32* %15, align 4
  ret i32 %72
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32*, i64, i32, i64*, i32*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
