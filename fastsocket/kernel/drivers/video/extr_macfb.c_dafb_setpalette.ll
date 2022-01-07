; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_dafb_setpalette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_dafb_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32* }

@dafb_setpalette.lastreg = internal global i32 -1, align 4
@dafb_cmap_regs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @dafb_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dafb_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fb_info* %4, %struct.fb_info** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = lshr i32 %13, 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = lshr i32 %15, 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = lshr i32 %17, 8
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @dafb_setpalette.lastreg, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %5
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @nubus_writel(i32 0, i32* %27)
  %29 = call i32 (...) @nop()
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %74, %25
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %30
  %35 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @nubus_writeb(i32 %43, i32* %45)
  %47 = call i32 (...) @nop()
  %48 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @nubus_writeb(i32 %56, i32* %58)
  %60 = call i32 (...) @nop()
  %61 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @nubus_writeb(i32 %69, i32* %71)
  %73 = call i32 (...) @nop()
  br label %74

74:                                               ; preds = %34
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %30

77:                                               ; preds = %30
  br label %78

78:                                               ; preds = %77, %5
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @nubus_writeb(i32 %79, i32* %81)
  %83 = call i32 (...) @nop()
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @nubus_writeb(i32 %84, i32* %86)
  %88 = call i32 (...) @nop()
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @nubus_writeb(i32 %89, i32* %91)
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @local_irq_restore(i64 %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* @dafb_setpalette.lastreg, align 4
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @nubus_writel(i32, i32*) #1

declare dso_local i32 @nop(...) #1

declare dso_local i32 @nubus_writeb(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
