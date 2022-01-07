; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_li_read_ad1843_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_li_read_ad1843_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@LI_CODEC_COMMAND = common dso_local global i32 0, align 4
@LI_CC_DIR_RD = common dso_local global i32 0, align 4
@LI_CODEC_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"li_read_ad1843_reg(lith=0x%p, reg=%d) returns 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @li_read_ad1843_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @li_read_ad1843_reg(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @in_interrupt()
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @li_ad1843_wait(%struct.TYPE_7__* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load i32, i32* @LI_CODEC_COMMAND, align 4
  %21 = load i32, i32* @LI_CC_DIR_RD, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @li_writel(%struct.TYPE_7__* %19, i32 %20, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = call i32 @li_ad1843_wait(%struct.TYPE_7__* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %18, %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = load i32, i32* @LI_CODEC_DATA, align 4
  %33 = call i32 @li_readl(%struct.TYPE_7__* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @DBGXV(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @li_ad1843_wait(%struct.TYPE_7__*) #1

declare dso_local i32 @li_writel(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @li_readl(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @DBGXV(i8*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
