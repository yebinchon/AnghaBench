; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_rfbi.c_rfbi_enable_tearsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_rfbi.c_rfbi_enable_tearsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@rfbi = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"tearsync %d line %d mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RFBI_CONFIG0 = common dso_local global i32 0, align 4
@RFBI_LINE_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rfbi_enable_tearsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfbi_enable_tearsync(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rfbi, i32 0, i32 2), align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rfbi, i32 0, i32 0), align 8
  %13 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ugt i32 %14, 2047
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %42

19:                                               ; preds = %2
  %20 = call i32 @rfbi_enable_clocks(i32 1)
  %21 = load i32, i32* @RFBI_CONFIG0, align 4
  %22 = call i32 @rfbi_read_reg(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, -13
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rfbi, i32 0, i32 1), align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rfbi, i32 0, i32 0), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rfbi, i32 0, i32 0), align 8
  %30 = shl i32 %29, 2
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %34

33:                                               ; preds = %19
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rfbi, i32 0, i32 0), align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* @RFBI_CONFIG0, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @rfbi_write_reg(i32 %35, i32 %36)
  %38 = load i32, i32* @RFBI_LINE_NUMBER, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @rfbi_write_reg(i32 %38, i32 %39)
  %41 = call i32 @rfbi_enable_clocks(i32 0)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rfbi_enable_clocks(i32) #1

declare dso_local i32 @rfbi_read_reg(i32) #1

declare dso_local i32 @rfbi_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
