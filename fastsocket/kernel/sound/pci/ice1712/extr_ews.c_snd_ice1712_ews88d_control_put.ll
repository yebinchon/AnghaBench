; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews88d_control_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews88d_control_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_ice1712 = type { i32, %struct.ews_spec* }
%struct.ews_spec = type { i32* }

@EWS_I2C_88D = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ice1712_ews88d_control_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_ews88d_control_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca %struct.ews_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca [2 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_ice1712* %14, %struct.snd_ice1712** %6, align 8
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 1
  %17 = load %struct.ews_spec*, %struct.ews_spec** %16, align 8
  store %struct.ews_spec* %17, %struct.ews_spec** %7, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %8, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %28 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @snd_i2c_lock(i32 %29)
  %31 = load %struct.ews_spec*, %struct.ews_spec** %7, align 8
  %32 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @EWS_I2C_88D, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %38 = call i32 @snd_i2c_readbytes(i32 %36, i8* %37, i32 2)
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %42 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @snd_i2c_unlock(i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %150

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 7
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %53, %57
  %59 = trunc i32 %58 to i8
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 %62
  store i8 %59, i8* %63, align 1
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %47
  %67 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 7
  %78 = shl i32 1, %77
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %84, %78
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %82, align 1
  br label %87

87:                                               ; preds = %75, %66
  br label %110

88:                                               ; preds = %47
  %89 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %90 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %88
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, 7
  %100 = shl i32 1, %99
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 3
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, %100
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %104, align 1
  br label %109

109:                                              ; preds = %97, %88
  br label %110

110:                                              ; preds = %109, %87
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %111, 3
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = load i32, i32* %8, align 4
  %118 = ashr i32 %117, 3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp ne i32 %116, %122
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %110
  %128 = load %struct.ews_spec*, %struct.ews_spec** %7, align 8
  %129 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @EWS_I2C_88D, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %135 = call i32 @snd_i2c_sendbytes(i32 %133, i8* %134, i32 2)
  %136 = icmp ne i32 %135, 2
  br i1 %136, label %137, label %144

137:                                              ; preds = %127
  %138 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %139 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @snd_i2c_unlock(i32 %140)
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %150

144:                                              ; preds = %127, %110
  %145 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %146 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @snd_i2c_unlock(i32 %147)
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %144, %137, %40
  %151 = load i32, i32* %3, align 4
  ret i32 %151
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
