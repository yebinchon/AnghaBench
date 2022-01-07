; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_set_recsrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_set_recsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SOUND_MASK_IMIX = common dso_local global i32 0, align 4
@HDEXAR_SET_ANA_IN = common dso_local global i32 0, align 4
@HDEX_AUX_REQ = common dso_local global i32 0, align 4
@SOUND_MASK_SYNTH = common dso_local global i32 0, align 4
@HDEXAR_SET_SYNTH_IN = common dso_local global i32 0, align 4
@SOUND_MASK_DIGITAL1 = common dso_local global i32 0, align 4
@F_HAVEDIGITAL = common dso_local global i32 0, align 4
@HDEXAR_SET_DAT_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @set_recsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_recsrc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 0), align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 0), align 8
  store i64 %8, i64* %2, align 8
  br label %73

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 0), align 8
  %12 = xor i64 %11, %10
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 0), align 8
  br label %13

13:                                               ; preds = %9
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 0), align 8
  %15 = load i32, i32* @SOUND_MASK_IMIX, align 4
  %16 = sext i32 %15 to i64
  %17 = and i64 %14, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32, i32* @HDEXAR_SET_ANA_IN, align 4
  %21 = call i64 @msnd_send_word(%struct.TYPE_4__* @dev, i32 0, i32 0, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @HDEX_AUX_REQ, align 4
  %25 = call i32 @chk_send_dsp_cmd(%struct.TYPE_4__* @dev, i32 %24)
  br label %26

26:                                               ; preds = %23, %19
  br label %71

27:                                               ; preds = %13
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 0), align 8
  %29 = load i32, i32* @SOUND_MASK_SYNTH, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %28, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* @HDEXAR_SET_SYNTH_IN, align 4
  %35 = call i64 @msnd_send_word(%struct.TYPE_4__* @dev, i32 0, i32 0, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @HDEX_AUX_REQ, align 4
  %39 = call i32 @chk_send_dsp_cmd(%struct.TYPE_4__* @dev, i32 %38)
  br label %40

40:                                               ; preds = %37, %33
  br label %70

41:                                               ; preds = %27
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 0), align 8
  %43 = load i32, i32* @SOUND_MASK_DIGITAL1, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %42, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i32, i32* @F_HAVEDIGITAL, align 4
  %49 = call i64 @test_bit(i32 %48, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 1))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32, i32* @HDEXAR_SET_DAT_IN, align 4
  %53 = call i64 @msnd_send_word(%struct.TYPE_4__* @dev, i32 0, i32 0, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @HDEX_AUX_REQ, align 4
  %57 = call i32 @chk_send_dsp_cmd(%struct.TYPE_4__* @dev, i32 %56)
  br label %58

58:                                               ; preds = %55, %51
  br label %69

59:                                               ; preds = %47, %41
  %60 = load i32, i32* @SOUND_MASK_IMIX, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 0), align 8
  %62 = load i32, i32* @HDEXAR_SET_ANA_IN, align 4
  %63 = call i64 @msnd_send_word(%struct.TYPE_4__* @dev, i32 0, i32 0, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @HDEX_AUX_REQ, align 4
  %67 = call i32 @chk_send_dsp_cmd(%struct.TYPE_4__* @dev, i32 %66)
  br label %68

68:                                               ; preds = %65, %59
  br label %69

69:                                               ; preds = %68, %58
  br label %70

70:                                               ; preds = %69, %40
  br label %71

71:                                               ; preds = %70, %26
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 0), align 8
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %71, %7
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i64 @msnd_send_word(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @chk_send_dsp_cmd(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
