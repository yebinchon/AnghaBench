; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcdc.c_setup_fbmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcdc.c_setup_fbmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.omapfb_mem_desc = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@lcdc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"no memory regions defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"only one plane is supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"vram at %08x size %08lx mapped to 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_mem_desc*)* @setup_fbmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_fbmem(%struct.omapfb_mem_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_mem_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.omapfb_mem_desc* %0, %struct.omapfb_mem_desc** %3, align 8
  %5 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %6 = getelementptr inbounds %struct.omapfb_mem_desc, %struct.omapfb_mem_desc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lcdc, i32 0, i32 4), align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %71

16:                                               ; preds = %1
  %17 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %18 = getelementptr inbounds %struct.omapfb_mem_desc, %struct.omapfb_mem_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lcdc, i32 0, i32 4), align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %27 = getelementptr inbounds %struct.omapfb_mem_desc, %struct.omapfb_mem_desc* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %30 = getelementptr inbounds %struct.omapfb_mem_desc, %struct.omapfb_mem_desc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lcdc, i32 0, i32 0), align 8
  %37 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %38 = getelementptr inbounds %struct.omapfb_mem_desc, %struct.omapfb_mem_desc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 0
  %41 = call i32 @alloc_fbmem(%struct.TYPE_6__* %40)
  store i32 %41, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %71

45:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %71

46:                                               ; preds = %28
  %47 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %48 = getelementptr inbounds %struct.omapfb_mem_desc, %struct.omapfb_mem_desc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lcdc, i32 0, i32 1), align 8
  %53 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %54 = getelementptr inbounds %struct.omapfb_mem_desc, %struct.omapfb_mem_desc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lcdc, i32 0, i32 3), align 4
  %59 = call i32 (...) @mmap_kern()
  store i32 %59, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %71

63:                                               ; preds = %46
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lcdc, i32 0, i32 4), align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lcdc, i32 0, i32 1), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lcdc, i32 0, i32 3), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lcdc, i32 0, i32 2), align 8
  %70 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %67, i32 %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %63, %61, %45, %43, %9
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @alloc_fbmem(%struct.TYPE_6__*) #1

declare dso_local i32 @mmap_kern(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
