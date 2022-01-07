; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy192.c_stac9460_set_rate_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy192.c_stac9460_set_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.prodigy192_spec* }
%struct.prodigy192_spec = type { i32 }

@STAC946X_MASTER_CLOCKING = common dso_local global i32 0, align 4
@STAC946X_MASTER_VOLUME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @stac9460_set_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac9460_set_rate_val(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca [7 x i8], align 1
  %9 = alloca %struct.prodigy192_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 0
  %12 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %11, align 8
  store %struct.prodigy192_spec* %12, %struct.prodigy192_spec** %9, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %87

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ule i32 %17, 48000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8 8, i8* %6, align 1
  br label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = icmp ule i32 %21, 96000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8 17, i8* %6, align 1
  br label %25

24:                                               ; preds = %20
  store i8 18, i8* %6, align 1
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %25, %19
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %29 = load i32, i32* @STAC946X_MASTER_CLOCKING, align 4
  %30 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %28, i32 %29)
  store i8 %30, i8* %5, align 1
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %87

37:                                               ; preds = %27
  %38 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %9, align 8
  %39 = getelementptr inbounds %struct.prodigy192_spec, %struct.prodigy192_spec* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %54, %37
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 7
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = load i64, i64* @STAC946X_MASTER_VOLUME, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call zeroext i8 @stac9460_dac_mute(%struct.snd_ice1712* %45, i64 %49, i32 0)
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 %52
  store i8 %50, i8* %53, align 1
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %59 = load i32, i32* @STAC946X_MASTER_CLOCKING, align 4
  %60 = load i8, i8* %6, align 1
  %61 = call i32 @stac9460_put(%struct.snd_ice1712* %58, i32 %59, i8 zeroext %60)
  %62 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %80, %57
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 7
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %74 = load i64, i64* @STAC946X_MASTER_VOLUME, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = call zeroext i8 @stac9460_dac_mute(%struct.snd_ice1712* %73, i64 %77, i32 1)
  br label %79

79:                                               ; preds = %72, %66
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %63

83:                                               ; preds = %63
  %84 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %9, align 8
  %85 = getelementptr inbounds %struct.prodigy192_spec, %struct.prodigy192_spec* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %87

87:                                               ; preds = %83, %36, %15
  ret void
}

declare dso_local zeroext i8 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i8 @stac9460_dac_mute(%struct.snd_ice1712*, i64, i32) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
