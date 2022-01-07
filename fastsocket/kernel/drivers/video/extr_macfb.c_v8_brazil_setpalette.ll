; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_v8_brazil_setpalette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_v8_brazil_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@v8_brazil_cmap_regs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @v8_brazil_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v8_brazil_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.fb_info* %4, %struct.fb_info** %11, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = lshr i32 %22, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %13, align 1
  %25 = load i32, i32* %9, align 4
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %14, align 1
  %28 = load i32, i32* %10, align 4
  %29 = lshr i32 %28, 8
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %15, align 1
  %31 = load i32, i32* %12, align 4
  %32 = icmp ugt i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %66

34:                                               ; preds = %5
  %35 = load i64, i64* %17, align 8
  %36 = call i32 @local_irq_save(i64 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %12, align 4
  %39 = sub i32 8, %38
  %40 = shl i32 %37, %39
  %41 = load i32, i32* %12, align 4
  %42 = ashr i32 255, %41
  %43 = or i32 %40, %42
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %16, align 1
  %45 = load i8, i8* %16, align 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v8_brazil_cmap_regs, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = call i32 @nubus_writeb(i8 zeroext %45, i32* %47)
  %49 = call i32 (...) @nop()
  %50 = load i8, i8* %13, align 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v8_brazil_cmap_regs, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @nubus_writeb(i8 zeroext %50, i32* %52)
  %54 = call i32 (...) @nop()
  %55 = load i8, i8* %14, align 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v8_brazil_cmap_regs, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @nubus_writeb(i8 zeroext %55, i32* %57)
  %59 = call i32 (...) @nop()
  %60 = load i8, i8* %15, align 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v8_brazil_cmap_regs, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @nubus_writeb(i8 zeroext %60, i32* %62)
  %64 = load i64, i64* %17, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %34, %33
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @nubus_writeb(i8 zeroext, i32*) #1

declare dso_local i32 @nop(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
