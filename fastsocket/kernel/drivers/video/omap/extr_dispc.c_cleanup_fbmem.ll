; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_cleanup_fbmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_cleanup_fbmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32** }
%struct.TYPE_3__ = type { i32, %struct.omapfb_mem_region* }
%struct.omapfb_mem_region = type { i64, i64 }

@DISPC_MEMTYPE_NUM = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_fbmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_fbmem() #0 {
  %1 = alloca %struct.omapfb_mem_region*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @DISPC_MEMTYPE_NUM, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1), align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1), align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @cleanup_resmap(i32* %19)
  br label %21

21:                                               ; preds = %14, %7
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %3

25:                                               ; preds = %3
  %26 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0, i32 1), align 8
  %27 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %26, i64 0
  store %struct.omapfb_mem_region* %27, %struct.omapfb_mem_region** %1, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %50, %25
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0, i32 0), align 8
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %1, align 8
  %34 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %1, align 8
  %39 = call i32 @free_fbmem(%struct.omapfb_mem_region* %38)
  br label %49

40:                                               ; preds = %32
  %41 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %1, align 8
  %42 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %1, align 8
  %47 = call i32 @unmap_kern(%struct.omapfb_mem_region* %46)
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  %53 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %1, align 8
  %54 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %53, i32 1
  store %struct.omapfb_mem_region* %54, %struct.omapfb_mem_region** %1, align 8
  br label %28

55:                                               ; preds = %28
  ret void
}

declare dso_local i32 @cleanup_resmap(i32*) #1

declare dso_local i32 @free_fbmem(%struct.omapfb_mem_region*) #1

declare dso_local i32 @unmap_kern(%struct.omapfb_mem_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
