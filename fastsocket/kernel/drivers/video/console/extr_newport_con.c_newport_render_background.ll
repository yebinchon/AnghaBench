; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_render_background.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_render_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@npregs = common dso_local global %struct.TYPE_7__* null, align 8
@NPORT_DMODE0_DRAW = common dso_local global i32 0, align 4
@NPORT_DMODE0_BLOCK = common dso_local global i32 0, align 4
@NPORT_DMODE0_DOSETUP = common dso_local global i32 0, align 4
@NPORT_DMODE0_STOPX = common dso_local global i32 0, align 4
@NPORT_DMODE0_STOPY = common dso_local global i32 0, align 4
@topscan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @newport_render_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newport_render_background(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %12 = call i32 @newport_wait(%struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* @NPORT_DMODE0_DRAW, align 4
  %17 = load i32, i32* @NPORT_DMODE0_BLOCK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NPORT_DMODE0_DOSETUP, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @NPORT_DMODE0_STOPX, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @NPORT_DMODE0_STOPY, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @topscan, align 4
  %36 = add nsw i32 %34, %35
  %37 = and i32 %36, 1023
  %38 = or i32 %33, %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 7
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @topscan, align 4
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, 15
  %49 = and i32 %48, 1023
  %50 = or i32 %44, %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  ret void
}

declare dso_local i32 @newport_wait(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
