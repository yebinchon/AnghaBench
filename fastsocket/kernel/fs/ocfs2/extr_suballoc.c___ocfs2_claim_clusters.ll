; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c___ocfs2_claim_clusters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c___ocfs2_claim_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ocfs2_alloc_context = type { i64, i64, i64, i32 }

@OCFS2_AC_USE_LOCAL = common dso_local global i64 0, align 8
@OCFS2_AC_USE_MAIN = common dso_local global i64 0, align 8
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"minimum allocation requested %u exceeds group bitmap size %u!\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ocfs2_claim_clusters(%struct.ocfs2_super* %0, i32* %1, %struct.ocfs2_alloc_context* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = call i32 (...) @mlog_entry_void()
  %21 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %22 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %25 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %31 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OCFS2_AC_USE_LOCAL, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %7
  %36 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %37 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @OCFS2_AC_USE_MAIN, align 8
  %40 = icmp ne i64 %38, %39
  br label %41

41:                                               ; preds = %35, %7
  %42 = phi i1 [ false, %7 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %46 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OCFS2_AC_USE_LOCAL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %41
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @ocfs2_claim_local_alloc_bits(%struct.ocfs2_super* %51, i32* %52, %struct.ocfs2_alloc_context* %53, i32 %54, i32* %55, i32* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %50
  %61 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %62 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @atomic_inc(i32* %63)
  br label %65

65:                                               ; preds = %60, %50
  br label %117

66:                                               ; preds = %41
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %69 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp sgt i32 %67, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load i32, i32* @ML_ERROR, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %77 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mlog(i32 %74, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %15, align 4
  br label %137

82:                                               ; preds = %66
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %85 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp ugt i32 %83, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %91 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %89, %82
  %95 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %96 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_super* %95, %struct.ocfs2_alloc_context* %96, i32* %97, i32 %98, i32 %99, i32* %18, i32* %100, i32* %17)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %94
  %105 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %106 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @ocfs2_desc_bitmap_to_cluster_off(i32 %107, i32 %108, i32 %109)
  %111 = load i32*, i32** %13, align 8
  store i32 %110, i32* %111, align 4
  %112 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %113 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = call i32 @atomic_inc(i32* %114)
  br label %116

116:                                              ; preds = %104, %94
  br label %117

117:                                              ; preds = %116, %65
  %118 = load i32, i32* %15, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @ENOSPC, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @mlog_errno(i32 %126)
  br label %128

128:                                              ; preds = %125, %120
  br label %137

129:                                              ; preds = %117
  %130 = load i32*, i32** %14, align 8
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %134 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %129, %128, %73
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @mlog_exit(i32 %138)
  %140 = load i32, i32* %15, align 4
  ret i32 %140
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_claim_local_alloc_bits(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ocfs2_desc_bitmap_to_cluster_off(i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
