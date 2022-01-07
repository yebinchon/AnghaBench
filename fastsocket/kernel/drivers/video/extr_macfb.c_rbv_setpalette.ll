; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_rbv_setpalette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_rbv_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@rbv_cmap_regs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @rbv_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbv_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.fb_info* %4, %struct.fb_info** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = lshr i32 %17, 8
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %12, align 1
  %20 = load i32, i32* %9, align 4
  %21 = lshr i32 %20, 8
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %13, align 1
  %23 = load i32, i32* %10, align 4
  %24 = lshr i32 %23, 8
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %14, align 1
  %26 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %69

32:                                               ; preds = %5
  %33 = load i64, i64* %16, align 8
  %34 = call i32 @local_irq_save(i64 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = sub nsw i32 256, %40
  %42 = add i32 %35, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %15, align 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rbv_cmap_regs, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = call i32 @nubus_writeb(i8 zeroext -1, i32* %45)
  %47 = call i32 (...) @nop()
  %48 = load i8, i8* %15, align 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rbv_cmap_regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i32 @nubus_writeb(i8 zeroext %48, i32* %50)
  %52 = call i32 (...) @nop()
  %53 = load i8, i8* %12, align 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rbv_cmap_regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @nubus_writeb(i8 zeroext %53, i32* %55)
  %57 = call i32 (...) @nop()
  %58 = load i8, i8* %13, align 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rbv_cmap_regs, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @nubus_writeb(i8 zeroext %58, i32* %60)
  %62 = call i32 (...) @nop()
  %63 = load i8, i8* %14, align 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rbv_cmap_regs, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @nubus_writeb(i8 zeroext %63, i32* %65)
  %67 = load i64, i64* %16, align 8
  %68 = call i32 @local_irq_restore(i64 %67)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %32, %31
  %70 = load i32, i32* %6, align 4
  ret i32 %70
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
