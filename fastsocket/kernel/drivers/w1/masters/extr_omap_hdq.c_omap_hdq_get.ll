; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32, i32, i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@OMAP_HDQ_MAX_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"attempt to exceed the max use count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Can not enable ick\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Can not enable fck\0A\00", align 1
@OMAP_HDQ_SYSSTATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSSTATUS_RESETDONE = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_CLOCKENABLE = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSCONFIG = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSCONFIG_AUTOIDLE = common dso_local global i32 0, align 4
@OMAP_HDQ_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*)* @omap_hdq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hdq_get(%struct.hdq_data* %0) #0 {
  %2 = alloca %struct.hdq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.hdq_data* %0, %struct.hdq_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %5 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock_interruptible(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINTR, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %114

12:                                               ; preds = %1
  %13 = load i32, i32* @OMAP_HDQ_MAX_USER, align 4
  %14 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %15 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %20 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %110

25:                                               ; preds = %12
  %26 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %27 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = call i32 @try_module_get(i32 %30)
  %32 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %33 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 1, %34
  br i1 %35, label %36, label %99

36:                                               ; preds = %25
  %37 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %38 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @clk_enable(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %44 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %101

49:                                               ; preds = %36
  %50 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %51 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @clk_enable(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %57 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %61 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_disable(i32 %62)
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %101

66:                                               ; preds = %49
  %67 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %68 = load i32, i32* @OMAP_HDQ_SYSSTATUS, align 4
  %69 = call i32 @hdq_reg_in(%struct.hdq_data* %67, i32 %68)
  %70 = load i32, i32* @OMAP_HDQ_SYSSTATUS_RESETDONE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %66
  %74 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %75 = call i32 @_omap_hdq_reset(%struct.hdq_data* %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %80 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %73
  br label %98

84:                                               ; preds = %66
  %85 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %86 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %87 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_CLOCKENABLE, align 4
  %88 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @hdq_reg_out(%struct.hdq_data* %85, i32 %86, i32 %89)
  %91 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %92 = load i32, i32* @OMAP_HDQ_SYSCONFIG, align 4
  %93 = load i32, i32* @OMAP_HDQ_SYSCONFIG_AUTOIDLE, align 4
  %94 = call i32 @hdq_reg_out(%struct.hdq_data* %91, i32 %92, i32 %93)
  %95 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %96 = load i32, i32* @OMAP_HDQ_INT_STATUS, align 4
  %97 = call i32 @hdq_reg_in(%struct.hdq_data* %95, i32 %96)
  br label %98

98:                                               ; preds = %84, %83
  br label %99

99:                                               ; preds = %98, %25
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %55, %42
  %102 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %103 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @clk_put(i32 %104)
  %106 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %107 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @clk_put(i32 %108)
  br label %110

110:                                              ; preds = %101, %18
  %111 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %112 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  br label %114

114:                                              ; preds = %110, %9
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i64 @clk_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @hdq_reg_in(%struct.hdq_data*, i32) #1

declare dso_local i32 @_omap_hdq_reset(%struct.hdq_data*) #1

declare dso_local i32 @hdq_reg_out(%struct.hdq_data*, i32, i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
