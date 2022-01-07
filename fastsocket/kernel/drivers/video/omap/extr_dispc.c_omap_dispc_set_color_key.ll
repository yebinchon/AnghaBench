; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_set_color_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_set_color_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.omapfb_color_key }
%struct.omapfb_color_key = type { i32, i32, i32, i32 }

@DISPC_DEFAULT_COLOR0 = common dso_local global i32 0, align 4
@DISPC_TRANS_COLOR0 = common dso_local global i32 0, align 4
@DISPC_DEFAULT_COLOR1 = common dso_local global i32 0, align 4
@DISPC_TRANS_COLOR1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DISPC_CONFIG = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_color_key*)* @omap_dispc_set_color_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dispc_set_color_key(%struct.omapfb_color_key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_color_key*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omapfb_color_key* %0, %struct.omapfb_color_key** %3, align 8
  %8 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %3, align 8
  %9 = getelementptr inbounds %struct.omapfb_color_key, %struct.omapfb_color_key* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %17 [
    i32 131, label %11
    i32 132, label %14
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @DISPC_DEFAULT_COLOR0, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @DISPC_TRANS_COLOR0, align 4
  store i32 %13, i32* %5, align 4
  store i32 10, i32* %6, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @DISPC_DEFAULT_COLOR1, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @DISPC_TRANS_COLOR1, align 4
  store i32 %16, i32* %5, align 4
  store i32 12, i32* %6, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %14, %11
  %21 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %3, align 8
  %22 = getelementptr inbounds %struct.omapfb_color_key, %struct.omapfb_color_key* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %27 [
    i32 130, label %24
    i32 129, label %25
    i32 128, label %26
  ]

24:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %30

25:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %30

26:                                               ; preds = %20
  store i32 3, i32* %7, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %26, %25, %24
  %31 = call i32 @enable_lcd_clocks(i32 1)
  %32 = load i32, i32* @DISPC_CONFIG, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @FLD_MASK(i32 %33, i32 2)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %35, %36
  %38 = call i32 @MOD_REG_FLD(i32 %32, i32 %34, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %3, align 8
  %44 = getelementptr inbounds %struct.omapfb_color_key, %struct.omapfb_color_key* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dispc_write_reg(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %30
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %3, align 8
  %50 = getelementptr inbounds %struct.omapfb_color_key, %struct.omapfb_color_key* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dispc_write_reg(i32 %48, i32 %51)
  %53 = call i32 @enable_lcd_clocks(i32 0)
  %54 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %3, align 8
  %55 = bitcast %struct.omapfb_color_key* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_2__* @dispc to i8*), i8* align 4 %55, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %47, %27, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @enable_lcd_clocks(i32) #1

declare dso_local i32 @MOD_REG_FLD(i32, i32, i32) #1

declare dso_local i32 @FLD_MASK(i32, i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
