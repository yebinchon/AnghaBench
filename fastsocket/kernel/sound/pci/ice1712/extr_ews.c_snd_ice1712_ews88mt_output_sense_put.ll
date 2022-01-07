; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews88mt_output_sense_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews88mt_output_sense_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_ice1712 = type { i32, %struct.ews_spec* }
%struct.ews_spec = type { i32* }

@EWS_I2C_PCF2 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ICE1712_EWS88MT_OUTPUT_SENSE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ice1712_ews88mt_output_sense_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_ews88mt_output_sense_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca %struct.ews_spec*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %6, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %13 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %12, i32 0, i32 1
  %14 = load %struct.ews_spec*, %struct.ews_spec** %13, align 8
  store %struct.ews_spec* %14, %struct.ews_spec** %7, align 8
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @snd_i2c_lock(i32 %17)
  %19 = load %struct.ews_spec*, %struct.ews_spec** %7, align 8
  %20 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @EWS_I2C_PCF2, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snd_i2c_readbytes(i32 %24, i8* %8, i32 1)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_i2c_unlock(i32 %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %89

34:                                               ; preds = %2
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @ICE1712_EWS88MT_OUTPUT_SENSE, align 1
  %38 = zext i8 %37 to i32
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  %41 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i8, i8* @ICE1712_EWS88MT_OUTPUT_SENSE, align 1
  %51 = zext i8 %50 to i32
  br label %53

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ 0, %52 ]
  %55 = or i32 %40, %54
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %9, align 1
  %57 = load i8, i8* %9, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %53
  %63 = load %struct.ews_spec*, %struct.ews_spec** %7, align 8
  %64 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @EWS_I2C_PCF2, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @snd_i2c_sendbytes(i32 %68, i8* %9, i32 1)
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %73 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @snd_i2c_unlock(i32 %74)
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %89

78:                                               ; preds = %62, %53
  %79 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %80 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @snd_i2c_unlock(i32 %81)
  %83 = load i8, i8* %9, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %8, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %84, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %78, %71, %27
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i32 @snd_i2c_readbytes(i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

declare dso_local i32 @snd_i2c_sendbytes(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
