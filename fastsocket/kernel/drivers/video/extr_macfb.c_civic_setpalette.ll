; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_civic_setpalette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_civic_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.fb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@civic_setpalette.lastreg = internal global i32 -1, align 4
@civic_cmap_regs = common dso_local global %struct.TYPE_4__* null, align 8
@CIVIC_VBL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @civic_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @civic_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.fb_info* %4, %struct.fb_info** %11, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %127

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = lshr i32 %22, 8
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = lshr i32 %24, 8
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = lshr i32 %26, 8
  store i32 %27, i32* %10, align 4
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @local_irq_save(i64 %28)
  %30 = load i32, i32* %7, align 4
  %31 = trunc i32 %30 to i8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = call i32 @nubus_writeb(i8 zeroext %31, i32* %33)
  %35 = call i32 (...) @nop()
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i8* @nubus_readb(i32* %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %21
  %44 = load i32, i32* %8, align 4
  %45 = trunc i32 %44 to i8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @nubus_writeb(i8 zeroext %45, i32* %47)
  %49 = call i32 (...) @nop()
  %50 = load i32, i32* %9, align 4
  %51 = trunc i32 %50 to i8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @nubus_writeb(i8 zeroext %51, i32* %53)
  %55 = call i32 (...) @nop()
  %56 = load i32, i32* %10, align 4
  %57 = trunc i32 %56 to i8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @nubus_writeb(i8 zeroext %57, i32* %59)
  %61 = call i32 (...) @nop()
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @nubus_writeb(i8 zeroext 0, i32* %63)
  %65 = call i32 (...) @nop()
  br label %123

66:                                               ; preds = %21
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i8* @nubus_readb(i32* %68)
  %70 = ptrtoint i8* %69 to i8
  store i8 %70, i8* %14, align 1
  %71 = call i32 (...) @nop()
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i8* @nubus_readb(i32* %73)
  %75 = ptrtoint i8* %74 to i8
  store i8 %75, i8* %14, align 1
  %76 = call i32 (...) @nop()
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i8* @nubus_readb(i32* %78)
  %80 = ptrtoint i8* %79 to i8
  store i8 %80, i8* %14, align 1
  %81 = call i32 (...) @nop()
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i8* @nubus_readb(i32* %83)
  %85 = ptrtoint i8* %84 to i8
  store i8 %85, i8* %14, align 1
  %86 = call i32 (...) @nop()
  %87 = load i32, i32* %13, align 4
  %88 = and i32 %87, 13
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %66
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @nubus_writeb(i8 zeroext 0, i32* %92)
  %94 = call i32 (...) @nop()
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @nubus_writeb(i8 zeroext 0, i32* %96)
  %98 = call i32 (...) @nop()
  br label %99

99:                                               ; preds = %90, %66
  %100 = load i32, i32* %8, align 4
  %101 = trunc i32 %100 to i8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @nubus_writeb(i8 zeroext %101, i32* %103)
  %105 = call i32 (...) @nop()
  %106 = load i32, i32* %9, align 4
  %107 = trunc i32 %106 to i8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @nubus_writeb(i8 zeroext %107, i32* %109)
  %111 = call i32 (...) @nop()
  %112 = load i32, i32* %10, align 4
  %113 = trunc i32 %112 to i8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = call i32 @nubus_writeb(i8 zeroext %113, i32* %115)
  %117 = call i32 (...) @nop()
  %118 = load i8, i8* %14, align 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @civic_cmap_regs, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = call i32 @nubus_writeb(i8 zeroext %118, i32* %120)
  %122 = call i32 (...) @nop()
  br label %123

123:                                              ; preds = %99, %43
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @local_irq_restore(i64 %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* @civic_setpalette.lastreg, align 4
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %123, %20
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @nubus_writeb(i8 zeroext, i32*) #1

declare dso_local i32 @nop(...) #1

declare dso_local i8* @nubus_readb(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
