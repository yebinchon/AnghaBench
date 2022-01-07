; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_bmove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_bmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i16 }
%struct.TYPE_5__ = type { i32, i16, i16 }
%struct.vc_data = type { i32 }

@topscan = common dso_local global i32 0, align 4
@npregs = common dso_local global %struct.TYPE_7__* null, align 8
@NPORT_DMODE0_S2S = common dso_local global i32 0, align 4
@NPORT_DMODE0_BLOCK = common dso_local global i32 0, align 4
@NPORT_DMODE0_DOSETUP = common dso_local global i32 0, align 4
@NPORT_DMODE0_STOPX = common dso_local global i32 0, align 4
@NPORT_DMODE0_STOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32, i32, i32, i32)* @newport_bmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newport_bmove(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  %23 = shl i32 %22, 3
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %15, align 2
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %14, align 4
  %27 = add nsw i32 %25, %26
  %28 = shl i32 %27, 3
  %29 = sub nsw i32 %28, 1
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %17, align 2
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 %31, 4
  %33 = load i32, i32* @topscan, align 4
  %34 = add nsw i32 %32, %33
  %35 = and i32 %34, 1023
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %16, align 2
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %37, %38
  %40 = shl i32 %39, 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* @topscan, align 4
  %43 = add nsw i32 %41, %42
  %44 = and i32 %43, 1023
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %18, align 2
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %46, %47
  %49 = shl i32 %48, 3
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %19, align 2
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %51, %52
  %54 = shl i32 %53, 4
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %20, align 2
  %56 = load i16, i16* %19, align 2
  %57 = sext i16 %56 to i32
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %7
  %60 = load i16, i16* %17, align 2
  store i16 %60, i16* %21, align 2
  %61 = load i16, i16* %15, align 2
  store i16 %61, i16* %17, align 2
  %62 = load i16, i16* %21, align 2
  store i16 %62, i16* %15, align 2
  br label %63

63:                                               ; preds = %59, %7
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %65 = call i32 @newport_wait(%struct.TYPE_7__* %64)
  %66 = load i32, i32* @NPORT_DMODE0_S2S, align 4
  %67 = load i32, i32* @NPORT_DMODE0_BLOCK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @NPORT_DMODE0_DOSETUP, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @NPORT_DMODE0_STOPX, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @NPORT_DMODE0_STOPY, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load i16, i16* %15, align 2
  %79 = sext i16 %78 to i32
  %80 = shl i32 %79, 16
  %81 = load i16, i16* %16, align 2
  %82 = sext i16 %81 to i32
  %83 = or i32 %80, %82
  %84 = trunc i32 %83 to i16
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i16 %84, i16* %87, align 4
  %88 = load i16, i16* %17, align 2
  %89 = sext i16 %88 to i32
  %90 = shl i32 %89, 16
  %91 = load i16, i16* %18, align 2
  %92 = sext i16 %91 to i32
  %93 = or i32 %90, %92
  %94 = trunc i32 %93 to i16
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i16 %94, i16* %97, align 2
  %98 = load i16, i16* %19, align 2
  %99 = sext i16 %98 to i32
  %100 = shl i32 %99, 16
  %101 = load i16, i16* %20, align 2
  %102 = sext i16 %101 to i32
  %103 = or i32 %100, %102
  %104 = trunc i32 %103 to i16
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i16 %104, i16* %107, align 4
  ret void
}

declare dso_local i32 @newport_wait(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
