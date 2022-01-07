; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_snd_single_bit_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_snd_single_bit_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.onyx = type { i32, i64 }

@FLAG_POLARITY_INVERT = common dso_local global i64 0, align 8
@FLAG_SPDIFLOCK = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @onyx_snd_single_bit_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_snd_single_bit_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.onyx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.onyx* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.onyx* %15, %struct.onyx** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = ashr i64 %19, 16
  %21 = load i64, i64* @FLAG_POLARITY_INVERT, align 8
  %22 = and i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* %9, align 8
  %25 = ashr i64 %24, 16
  %26 = load i64, i64* @FLAG_SPDIFLOCK, align 8
  %27 = and i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i64, i64* %9, align 8
  %30 = ashr i64 %29, 8
  %31 = and i64 %30, 255
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* %9, align 8
  %34 = and i64 %33, 255
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load %struct.onyx*, %struct.onyx** %5, align 8
  %37 = getelementptr inbounds %struct.onyx, %struct.onyx* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %2
  %42 = load %struct.onyx*, %struct.onyx** %5, align 8
  %43 = getelementptr inbounds %struct.onyx, %struct.onyx* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %81

49:                                               ; preds = %41, %2
  %50 = load %struct.onyx*, %struct.onyx** %5, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @onyx_read_register(%struct.onyx* %50, i32 %51, i32* %6)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %13, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %10, align 4
  %70 = xor i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %49
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %49
  %77 = load %struct.onyx*, %struct.onyx** %5, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @onyx_write_register(%struct.onyx* %77, i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %76, %46
  %82 = load %struct.onyx*, %struct.onyx** %5, align 8
  %83 = getelementptr inbounds %struct.onyx, %struct.onyx* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %88, %89
  %91 = zext i1 %90 to i32
  br label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi i32 [ %91, %87 ], [ %93, %92 ]
  ret i32 %95
}

declare dso_local %struct.onyx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @onyx_read_register(%struct.onyx*, i32, i32*) #1

declare dso_local i32 @onyx_write_register(%struct.onyx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
