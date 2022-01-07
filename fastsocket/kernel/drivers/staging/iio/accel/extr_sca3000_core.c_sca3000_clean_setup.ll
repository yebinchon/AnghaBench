; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_clean_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_clean_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { i32, i32 }

@SCA3000_REG_ADDR_INT_STATUS = common dso_local global i32 0, align 4
@SCA3000_REG_CTRL_SEL_MD_CTRL = common dso_local global i32 0, align 4
@SCA3000_MD_CTRL_PROT_MASK = common dso_local global i32 0, align 4
@SCA3000_REG_CTRL_SEL_OUT_CTRL = common dso_local global i32 0, align 4
@SCA3000_OUT_CTRL_PROT_MASK = common dso_local global i32 0, align 4
@SCA3000_OUT_CTRL_BUF_X_EN = common dso_local global i32 0, align 4
@SCA3000_OUT_CTRL_BUF_Y_EN = common dso_local global i32 0, align 4
@SCA3000_OUT_CTRL_BUF_Z_EN = common dso_local global i32 0, align 4
@SCA3000_OUT_CTRL_BUF_DIV_4 = common dso_local global i32 0, align 4
@SCA3000_REG_ADDR_INT_MASK = common dso_local global i32 0, align 4
@SCA3000_INT_MASK_PROT_MASK = common dso_local global i32 0, align 4
@SCA3000_INT_MASK_ACTIVE_LOW = common dso_local global i32 0, align 4
@SCA3000_REG_ADDR_MODE = common dso_local global i32 0, align 4
@SCA3000_MODE_PROT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sca3000_state*)* @sca3000_clean_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_clean_setup(%struct.sca3000_state* %0) #0 {
  %2 = alloca %struct.sca3000_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.sca3000_state* %0, %struct.sca3000_state** %2, align 8
  %5 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %6 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %9 = load i32, i32* @SCA3000_REG_ADDR_INT_STATUS, align 4
  %10 = call i32 @sca3000_read_data(%struct.sca3000_state* %8, i32 %9, i32** %4, i32 1)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %105

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %18 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %19 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %17, i32 %18, i32** %4)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %105

23:                                               ; preds = %14
  %24 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %25 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SCA3000_MD_CTRL_PROT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @sca3000_write_ctrl_reg(%struct.sca3000_state* %24, i32 %25, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %105

37:                                               ; preds = %23
  %38 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %39 = load i32, i32* @SCA3000_REG_CTRL_SEL_OUT_CTRL, align 4
  %40 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %38, i32 %39, i32** %4)
  %41 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %42 = load i32, i32* @SCA3000_REG_CTRL_SEL_OUT_CTRL, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SCA3000_OUT_CTRL_PROT_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @SCA3000_OUT_CTRL_BUF_X_EN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SCA3000_OUT_CTRL_BUF_Y_EN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SCA3000_OUT_CTRL_BUF_Z_EN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @SCA3000_OUT_CTRL_BUF_DIV_4, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @sca3000_write_ctrl_reg(%struct.sca3000_state* %41, i32 %42, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %37
  br label %105

62:                                               ; preds = %37
  %63 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %64 = load i32, i32* @SCA3000_REG_ADDR_INT_MASK, align 4
  %65 = call i32 @sca3000_read_data(%struct.sca3000_state* %63, i32 %64, i32** %4, i32 1)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %105

69:                                               ; preds = %62
  %70 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %71 = load i32, i32* @SCA3000_REG_ADDR_INT_MASK, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SCA3000_INT_MASK_PROT_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @SCA3000_INT_MASK_ACTIVE_LOW, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @sca3000_write_reg(%struct.sca3000_state* %70, i32 %71, i32 %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @kfree(i32* %80)
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  br label %105

85:                                               ; preds = %69
  %86 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %87 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %88 = call i32 @sca3000_read_data(%struct.sca3000_state* %86, i32 %87, i32** %4, i32 1)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %105

92:                                               ; preds = %85
  %93 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %94 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SCA3000_MODE_PROT_MASK, align 4
  %99 = and i32 %97, %98
  %100 = call i32 @sca3000_write_reg(%struct.sca3000_state* %93, i32 %94, i32 %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @kfree(i32* %101)
  %103 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %104 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %103, i32 0, i32 0
  store i32 11, i32* %104, align 4
  br label %105

105:                                              ; preds = %92, %91, %84, %68, %61, %36, %22, %13
  %106 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %107 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32**, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @sca3000_read_ctrl_reg(%struct.sca3000_state*, i32, i32**) #1

declare dso_local i32 @sca3000_write_ctrl_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
