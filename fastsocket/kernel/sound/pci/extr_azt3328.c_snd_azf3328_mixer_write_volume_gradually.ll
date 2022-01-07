; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_mixer_write_volume_gradually.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_mixer_write_volume_gradually.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_azf3328 = type { i32 }

@SET_CHAN_LEFT = common dso_local global i32 0, align 4
@AZF_MUTE_BIT = common dso_local global i8 0, align 1
@SET_CHAN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_azf3328*, i32, i8, i8, i32, i32)* @snd_azf3328_mixer_write_volume_gradually to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_azf3328_mixer_write_volume_gradually(%struct.snd_azf3328* %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.snd_azf3328*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_azf3328* %0, %struct.snd_azf3328** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.snd_azf3328*, %struct.snd_azf3328** %7, align 8
  %19 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add i32 %20, %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %13, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %24 = call i32 (...) @snd_azf3328_dbgcallenter()
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @SET_CHAN_LEFT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %6
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %30, 1
  %32 = call zeroext i8 @inb(i64 %31)
  store i8 %32, i8* %14, align 1
  %33 = load i8, i8* %14, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @AZF_MUTE_BIT, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load i8, i8* @AZF_MUTE_BIT, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %9, align 1
  br label %54

46:                                               ; preds = %29
  %47 = load i8, i8* @AZF_MUTE_BIT, align 1
  %48 = zext i8 %47 to i32
  %49 = xor i32 %48, -1
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %9, align 1
  br label %54

54:                                               ; preds = %46, %39
  %55 = load i8, i8* %14, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* %9, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sgt i32 %56, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 -1, i32 1
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %54, %6
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @SET_CHAN_RIGHT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, 0
  %70 = call zeroext i8 @inb(i64 %69)
  store i8 %70, i8* %15, align 1
  %71 = load i8, i8* %15, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %10, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sgt i32 %72, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 -1, i32 1
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %67, %62
  br label %79

79:                                               ; preds = %134, %78
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i8, i8* %14, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %9, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load i32, i32* %16, align 4
  %90 = load i8, i8* %14, align 1
  %91 = zext i8 %90 to i32
  %92 = add nsw i32 %91, %89
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %14, align 1
  %94 = load i8, i8* %14, align 1
  %95 = load i64, i64* %13, align 8
  %96 = add i64 %95, 1
  %97 = call i32 @outb(i8 zeroext %94, i64 %96)
  br label %99

98:                                               ; preds = %82
  store i32 0, i32* %16, align 4
  br label %99

99:                                               ; preds = %98, %88
  br label %100

100:                                              ; preds = %99, %79
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load i8, i8* %15, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* %10, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load i32, i32* %17, align 4
  %111 = load i8, i8* %15, align 1
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %112, %110
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %15, align 1
  %115 = load i8, i8* %15, align 1
  %116 = load i64, i64* %13, align 8
  %117 = add i64 %116, 0
  %118 = call i32 @outb(i8 zeroext %115, i64 %117)
  br label %120

119:                                              ; preds = %103
  store i32 0, i32* %17, align 4
  br label %120

120:                                              ; preds = %119, %109
  br label %121

121:                                              ; preds = %120, %100
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @mdelay(i32 %125)
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br label %134

134:                                              ; preds = %131, %128
  %135 = phi i1 [ true, %128 ], [ %133, %131 ]
  br i1 %135, label %79, label %136

136:                                              ; preds = %134
  %137 = call i32 (...) @snd_azf3328_dbgcallleave()
  ret void
}

declare dso_local i32 @snd_azf3328_dbgcallenter(...) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @snd_azf3328_dbgcallleave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
