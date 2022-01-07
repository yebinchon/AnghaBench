; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_mtpav.c_snd_mtpav_read_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_mtpav.c_snd_mtpav_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpav = type { i32 }

@SREG = common dso_local global i32 0, align 4
@SIGS_BYTE = common dso_local global i32 0, align 4
@CREG = common dso_local global i32 0, align 4
@SIGC_READ = common dso_local global i32 0, align 4
@SIGS_IN0 = common dso_local global i32 0, align 4
@SIGS_IN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtpav*)* @snd_mtpav_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mtpav_read_bytes(%struct.mtpav* %0) #0 {
  %2 = alloca %struct.mtpav*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtpav* %0, %struct.mtpav** %2, align 8
  %10 = load %struct.mtpav*, %struct.mtpav** %2, align 8
  %11 = load i32, i32* @SREG, align 4
  %12 = call i32 @snd_mtpav_getreg(%struct.mtpav* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @SIGS_BYTE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %73

18:                                               ; preds = %1
  %19 = load %struct.mtpav*, %struct.mtpav** %2, align 8
  %20 = load i32, i32* @CREG, align 4
  %21 = call i32 @snd_mtpav_getreg(%struct.mtpav* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SIGC_READ, align 4
  %24 = xor i32 %23, 255
  %25 = and i32 %22, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SIGC_READ, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %68, %18
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load %struct.mtpav*, %struct.mtpav** %2, align 8
  %35 = load i32, i32* @CREG, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @snd_mtpav_mputreg(%struct.mtpav* %34, i32 %35, i32 %36)
  %38 = load %struct.mtpav*, %struct.mtpav** %2, align 8
  %39 = load i32, i32* @SREG, align 4
  %40 = call i32 @snd_mtpav_getreg(%struct.mtpav* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.mtpav*, %struct.mtpav** %2, align 8
  %42 = load i32, i32* @CREG, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @snd_mtpav_mputreg(%struct.mtpav* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @SIGS_IN0, align 4
  %46 = load i32, i32* @SIGS_IN1, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %53, 2
  %55 = shl i32 %52, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %33
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %30

61:                                               ; preds = %30
  %62 = load %struct.mtpav*, %struct.mtpav** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @snd_mtpav_inmidi_h(%struct.mtpav* %62, i32 %63)
  %65 = load %struct.mtpav*, %struct.mtpav** %2, align 8
  %66 = load i32, i32* @SREG, align 4
  %67 = call i32 @snd_mtpav_getreg(%struct.mtpav* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SIGS_BYTE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %29, label %73

73:                                               ; preds = %17, %68
  ret void
}

declare dso_local i32 @snd_mtpav_getreg(%struct.mtpav*, i32) #1

declare dso_local i32 @snd_mtpav_mputreg(%struct.mtpav*, i32, i32) #1

declare dso_local i32 @snd_mtpav_inmidi_h(%struct.mtpav*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
