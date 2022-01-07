; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_start_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@_LDCNT2R = common dso_local global i32 0, align 4
@START_LCDC = common dso_local global i64 0, align 8
@LDPMR = common dso_local global i32 0, align 4
@_LDDCKSTPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_lcdc_priv*, i32)* @sh_mobile_lcdc_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_start_stop(%struct.sh_mobile_lcdc_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_priv* %0, %struct.sh_mobile_lcdc_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %8 = load i32, i32* @_LDCNT2R, align 4
  %9 = call i32 @lcdc_read(%struct.sh_mobile_lcdc_priv* %7, i32 %8)
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %15 = load i32, i32* @_LDCNT2R, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @START_LCDC, align 8
  %18 = or i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %14, i32 %15, i32 %19)
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %23 = load i32, i32* @_LDCNT2R, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @START_LCDC, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %22, i32 %23, i32 %28)
  br label %30

30:                                               ; preds = %21, %13
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %81, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %34 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %84

38:                                               ; preds = %31
  %39 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %40 = load i32, i32* @_LDCNT2R, align 4
  %41 = call i32 @lcdc_read(%struct.sh_mobile_lcdc_priv* %39, i32 %40)
  %42 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %43 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %41, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %77
  %54 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %55 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = load i32, i32* @LDPMR, align 4
  %61 = call i32 @lcdc_read_chan(%struct.TYPE_3__* %59, i32 %60)
  %62 = and i32 %61, 3
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load i64, i64* %5, align 8
  %68 = icmp eq i64 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %79

70:                                               ; preds = %66, %53
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %5, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %79

77:                                               ; preds = %73, %70
  %78 = call i32 (...) @cpu_relax()
  br label %53

79:                                               ; preds = %76, %69
  br label %80

80:                                               ; preds = %79, %38
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %31

84:                                               ; preds = %31
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %89 = load i32, i32* @_LDDCKSTPR, align 4
  %90 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %88, i32 %89, i32 1)
  br label %91

91:                                               ; preds = %87, %84
  ret void
}

declare dso_local i32 @lcdc_read(%struct.sh_mobile_lcdc_priv*, i32) #1

declare dso_local i32 @lcdc_write(%struct.sh_mobile_lcdc_priv*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @lcdc_read_chan(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
