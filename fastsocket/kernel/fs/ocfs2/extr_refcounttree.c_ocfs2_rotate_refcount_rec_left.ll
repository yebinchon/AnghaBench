; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_rotate_refcount_rec_left.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_rotate_refcount_rec_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_refcount_block = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_refcount_block*, i32)* @ocfs2_rotate_refcount_rec_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_rotate_refcount_rec_left(%struct.ocfs2_refcount_block* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_refcount_block*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_refcount_block* %0, %struct.ocfs2_refcount_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %13, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %28 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %36 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = call i32 @le32_add_cpu(i32* %34, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %49 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = sub nsw i32 %52, 2
  %54 = icmp slt i32 %47, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %2
  %56 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %57 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %62
  %64 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %65 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %70
  %72 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %73 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sub nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memmove(%struct.TYPE_6__* %63, %struct.TYPE_6__* %71, i32 %82)
  br label %84

84:                                               ; preds = %55, %2
  %85 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %86 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %90 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @le16_to_cpu(i32 %92)
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %95
  %97 = call i32 @memset(%struct.TYPE_6__* %96, i32 0, i32 4)
  %98 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %99 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @le16_add_cpu(i32* %100, i32 -1)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memmove(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
