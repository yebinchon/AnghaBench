; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_li_deactivate_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_li_deactivate_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i8* }

@LI_CCTL_DMA_ENABLE = common dso_local global i32 0, align 4
@LI_CCTL_RPTR = common dso_local global i32 0, align 4
@LI_CCTL_WPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ctlval = 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ctlreg 0x%x = 0x%lx\0A\00", align 1
@LI_CCFG_DIR_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @li_deactivate_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @li_deactivate_dma(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* @LI_CCTL_DMA_ENABLE, align 4
  %12 = load i32, i32* @LI_CCTL_RPTR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LI_CCTL_WPTR, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i32, ...) @DBGPV(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i32, ...) @DBGPV(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @li_writel(%struct.TYPE_7__* %34, i32 %39, i32 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LI_CCFG_DIR_OUT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr i8, i8* %55, i64 152
  %57 = bitcast i8* %56 to i64*
  store volatile i64 0, i64* %57, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr i8, i8* %58, i64 156
  %60 = bitcast i8* %59 to i64*
  store volatile i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %54, %46, %1
  ret void
}

declare dso_local i32 @DBGPV(i8*, i32, ...) #1

declare dso_local i32 @li_writel(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
