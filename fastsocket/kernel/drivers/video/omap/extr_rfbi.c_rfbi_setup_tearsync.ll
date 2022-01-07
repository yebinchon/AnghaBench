; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_rfbi.c_rfbi_setup_tearsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_rfbi.c_rfbi_setup_tearsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@rfbi = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [57 x i8] c"setup_tearsync: pins %d hs %d vs %d hs_inv %d vs_inv %d\0A\00", align 1
@RFBI_HSYNC_WIDTH = common dso_local global i32 0, align 4
@RFBI_VSYNC_WIDTH = common dso_local global i32 0, align 4
@RFBI_CONFIG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @rfbi_setup_tearsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfbi_setup_tearsync(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %94

26:                                               ; preds = %20, %6
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ps_to_rfbi_ticks(i32 %27, i32 1)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @ps_to_rfbi_ticks(i32 %29, i32 1)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EDOM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %94

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 2, i32* %16, align 4
  br label %41

40:                                               ; preds = %36
  store i32 4, i32* %16, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EDOM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %94

48:                                               ; preds = %41
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %94

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rfbi, i32 0, i32 0), align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rfbi, i32 0, i32 1), align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = call i32 @rfbi_enable_clocks(i32 1)
  %67 = load i32, i32* @RFBI_HSYNC_WIDTH, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @rfbi_write_reg(i32 %67, i32 %68)
  %70 = load i32, i32* @RFBI_VSYNC_WIDTH, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @rfbi_write_reg(i32 %70, i32 %71)
  %73 = load i32, i32* @RFBI_CONFIG0, align 4
  %74 = call i32 @rfbi_read_reg(i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %55
  %78 = load i32, i32* %17, align 4
  %79 = and i32 %78, -2097153
  store i32 %79, i32* %17, align 4
  br label %83

80:                                               ; preds = %55
  %81 = load i32, i32* %17, align 4
  %82 = or i32 %81, 2097152
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  %88 = and i32 %87, -1048577
  store i32 %88, i32* %17, align 4
  br label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %17, align 4
  %91 = or i32 %90, 1048576
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = call i32 @rfbi_enable_clocks(i32 0)
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %52, %45, %33, %23
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @ps_to_rfbi_ticks(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rfbi_enable_clocks(i32) #1

declare dso_local i32 @rfbi_write_reg(i32, i32) #1

declare dso_local i32 @rfbi_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
