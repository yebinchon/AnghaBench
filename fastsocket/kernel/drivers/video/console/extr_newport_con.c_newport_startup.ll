; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.newport_regs = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@sgi_gfxaddr = common dso_local global i32 0, align 4
@npregs = common dso_local global %struct.newport_regs* null, align 8
@NPORT_CFG_GD0 = common dso_local global i32 0, align 4
@TESTVAL = common dso_local global i32 0, align 4
@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@FONT_DATA = common dso_local global i32 0, align 4
@font_data = common dso_local global i32* null, align 8
@newport_has_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SGI Newport\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @newport_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @newport_startup() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @sgi_gfxaddr, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %55

6:                                                ; preds = %0
  %7 = load %struct.newport_regs*, %struct.newport_regs** @npregs, align 8
  %8 = icmp ne %struct.newport_regs* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @sgi_gfxaddr, align 4
  %11 = call i64 @ioremap(i32 %10, i32 24)
  %12 = inttoptr i64 %11 to %struct.newport_regs*
  store %struct.newport_regs* %12, %struct.newport_regs** @npregs, align 8
  br label %13

13:                                               ; preds = %9, %6
  %14 = load i32, i32* @NPORT_CFG_GD0, align 4
  %15 = load %struct.newport_regs*, %struct.newport_regs** @npregs, align 8
  %16 = getelementptr inbounds %struct.newport_regs, %struct.newport_regs* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.newport_regs*, %struct.newport_regs** @npregs, align 8
  %19 = call i64 @newport_wait(%struct.newport_regs* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %54

22:                                               ; preds = %13
  %23 = load i32, i32* @TESTVAL, align 4
  %24 = load %struct.newport_regs*, %struct.newport_regs** @npregs, align 8
  %25 = getelementptr inbounds %struct.newport_regs, %struct.newport_regs* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.newport_regs*, %struct.newport_regs** @npregs, align 8
  %28 = getelementptr inbounds %struct.newport_regs, %struct.newport_regs* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @TESTVAL, align 4
  %33 = call i64 @XSTI_TO_FXSTART(i32 %32)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %54

36:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32, i32* @FONT_DATA, align 4
  %43 = load i32*, i32** @font_data, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %37

50:                                               ; preds = %37
  %51 = call i32 (...) @newport_reset()
  %52 = call i32 (...) @newport_get_revisions()
  %53 = call i32 (...) @newport_get_screensize()
  store i32 1, i32* @newport_has_init, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %55

54:                                               ; preds = %35, %21
  store i8* null, i8** %1, align 8
  br label %55

55:                                               ; preds = %54, %50, %5
  %56 = load i8*, i8** %1, align 8
  ret i8* %56
}

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i64 @newport_wait(%struct.newport_regs*) #1

declare dso_local i64 @XSTI_TO_FXSTART(i32) #1

declare dso_local i32 @newport_reset(...) #1

declare dso_local i32 @newport_get_revisions(...) #1

declare dso_local i32 @newport_get_screensize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
