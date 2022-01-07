; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_common.c_sb_dsp_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_common.c_sb_dsp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Entered sb_dsp_reset()\0A\00", align 1
@MDL_ESS = common dso_local global i64 0, align 8
@DSP_RESET = common dso_local global i32 0, align 4
@DSP_DATA_AVAIL = common dso_local global i32 0, align 4
@DSP_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"sb: No response to RESET\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sb_dsp_reset() OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sb_dsp_reset(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @DEB(i32 %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MDL_ESS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i32 @ess_dsp_reset(%struct.TYPE_4__* %13)
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %1
  %16 = load i32, i32* @DSP_RESET, align 4
  %17 = call i32 @outb(i32 1, i32 %16)
  %18 = call i32 @udelay(i32 10)
  %19 = load i32, i32* @DSP_RESET, align 4
  %20 = call i32 @outb(i32 0, i32 %19)
  %21 = call i32 @udelay(i32 30)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %34, %15
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 1000
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* @DSP_DATA_AVAIL, align 4
  %27 = call i32 @inb(i32 %26)
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %22

37:                                               ; preds = %31
  %38 = load i32, i32* @DSP_READ, align 4
  %39 = call i32 @inb(i32 %38)
  %40 = icmp ne i32 %39, 170
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @DDB(i32 %42)
  store i32 0, i32* %2, align 4
  br label %47

44:                                               ; preds = %37
  %45 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @DEB(i32 %45)
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %41, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ess_dsp_reset(%struct.TYPE_4__*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @DDB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
