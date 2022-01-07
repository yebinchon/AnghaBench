; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_remove_from_lpt_heap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_remove_from_lpt_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.ubifs_lpt_heap* }
%struct.ubifs_lpt_heap = type { i32, %struct.ubifs_lprops** }
%struct.ubifs_lprops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_lprops*, i32)* @remove_from_lpt_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_lpt_heap(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_lpt_heap*, align 8
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %10 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %14, i64 %17
  store %struct.ubifs_lpt_heap* %18, %struct.ubifs_lpt_heap** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %24 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i1 [ false, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ubifs_assert(i32 %29)
  %31 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %32 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %31, i32 0, i32 1
  %33 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %33, i64 %35
  %37 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %36, align 8
  %38 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %39 = icmp eq %struct.ubifs_lprops* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ubifs_assert(i32 %40)
  %42 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %43 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %48 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %88

51:                                               ; preds = %27
  %52 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %53 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %52, i32 0, i32 1
  %54 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %53, align 8
  %55 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %56 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %54, i64 %58
  %60 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %59, align 8
  %61 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %62 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %61, i32 0, i32 1
  %63 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %63, i64 %65
  store %struct.ubifs_lprops* %60, %struct.ubifs_lprops** %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %69 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %68, i32 0, i32 1
  %70 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %70, i64 %72
  %74 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %73, align 8
  %75 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %74, i32 0, i32 0
  store i32 %67, i32* %75, align 4
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %77 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %78 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %79 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %78, i32 0, i32 1
  %80 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %80, i64 %82
  %84 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @adjust_lpt_heap(%struct.ubifs_info* %76, %struct.ubifs_lpt_heap* %77, %struct.ubifs_lprops* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %51, %27
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %90 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @dbg_check_heap(%struct.ubifs_info* %89, %struct.ubifs_lpt_heap* %90, i32 %91, i32 -1)
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @adjust_lpt_heap(%struct.ubifs_info*, %struct.ubifs_lpt_heap*, %struct.ubifs_lprops*, i32, i32) #1

declare dso_local i32 @dbg_check_heap(%struct.ubifs_info*, %struct.ubifs_lpt_heap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
