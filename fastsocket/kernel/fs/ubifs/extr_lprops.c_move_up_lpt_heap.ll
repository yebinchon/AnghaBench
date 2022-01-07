; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_move_up_lpt_heap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_move_up_lpt_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lpt_heap = type { %struct.ubifs_lprops** }
%struct.ubifs_lprops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_lpt_heap*, %struct.ubifs_lprops*, i32)* @move_up_lpt_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_up_lpt_heap(%struct.ubifs_info* %0, %struct.ubifs_lpt_heap* %1, %struct.ubifs_lprops* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_lpt_heap*, align 8
  %7 = alloca %struct.ubifs_lprops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_lpt_heap* %1, %struct.ubifs_lpt_heap** %6, align 8
  store %struct.ubifs_lprops* %2, %struct.ubifs_lprops** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %14 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %77

19:                                               ; preds = %4
  %20 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %74, %19
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %12, align 4
  %27 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %27, i32 0, i32 0
  %29 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %29, i64 %31
  %33 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %77

40:                                               ; preds = %23
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %6, align 8
  %43 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %42, i32 0, i32 0
  %44 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %44, i64 %46
  %48 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %47, align 8
  %49 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %48, i32 0, i32 0
  store i32 %41, i32* %49, align 4
  %50 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %6, align 8
  %51 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %50, i32 0, i32 0
  %52 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %52, i64 %54
  %56 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %55, align 8
  %57 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %6, align 8
  %58 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %57, i32 0, i32 0
  %59 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %59, i64 %61
  store %struct.ubifs_lprops* %56, %struct.ubifs_lprops** %62, align 8
  %63 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %64 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %6, align 8
  %65 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %64, i32 0, i32 0
  %66 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %66, i64 %68
  store %struct.ubifs_lprops* %63, %struct.ubifs_lprops** %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %72 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %40
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %23, label %77

77:                                               ; preds = %18, %39, %74
  ret void
}

declare dso_local i32 @get_heap_comp_val(%struct.ubifs_lprops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
