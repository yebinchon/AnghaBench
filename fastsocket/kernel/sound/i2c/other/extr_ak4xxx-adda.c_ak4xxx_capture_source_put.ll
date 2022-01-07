; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4xxx-adda.c_ak4xxx_capture_source_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4xxx-adda.c_ak4xxx_capture_source_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_akm4xxx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ak4xxx_capture_source_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4xxx_capture_source_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_akm4xxx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_akm4xxx* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_akm4xxx* %15, %struct.snd_akm4xxx** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AK_GET_SHIFT(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AK_GET_CHIP(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @AK_GET_ADDR(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @AK_GET_MASK(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ak4xxx_capture_num_inputs(%struct.snd_akm4xxx* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %83

47:                                               ; preds = %2
  %48 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %48, i32 %49, i32 %50)
  store i8 %51, i8* %11, align 1
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* %10, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %12, align 1
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %64, %65
  %67 = load i8, i8* %12, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %68, %66
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %12, align 1
  %71 = load i8, i8* %12, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %11, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %47
  %77 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i8, i8* %12, align 1
  %81 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %77, i32 %78, i32 %79, i8 zeroext %80)
  store i32 1, i32* %3, align 4
  br label %83

82:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %76, %44
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.snd_akm4xxx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @AK_GET_SHIFT(i32) #1

declare dso_local i32 @AK_GET_CHIP(i32) #1

declare dso_local i32 @AK_GET_ADDR(i32) #1

declare dso_local i32 @AK_GET_MASK(i32) #1

declare dso_local i32 @ak4xxx_capture_num_inputs(%struct.snd_akm4xxx*, i32) #1

declare dso_local zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i32) #1

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
