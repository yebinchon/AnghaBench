; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_tram_poke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_tram_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64 }
%struct.snd_emu10k1_fx8010_code = type { i32*, i32*, i32 }

@EFAULT = common dso_local global i32 0, align 4
@TANKMEMDATAREGBASE = common dso_local global i64 0, align 8
@TANKMEMADDRREGBASE = common dso_local global i64 0, align 8
@A_TANKMEMCTLREGBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*)* @snd_emu10k1_tram_poke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_tram_poke(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_code* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_fx8010_code*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_fx8010_code* %1, %struct.snd_emu10k1_fx8010_code** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %87, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %12 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 256, i32 160
  %17 = icmp slt i32 %10, %16
  br i1 %17, label %18, label %90

18:                                               ; preds = %9
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @test_bit(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %87

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i64 @get_user(i32 %27, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i64 @get_user(i32 %37, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36, %26
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %91

49:                                               ; preds = %36
  %50 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %51 = load i64, i64* @TANKMEMDATAREGBASE, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %50, i64 %54, i32 0, i32 %55)
  %57 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %58 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %49
  %62 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %63 = load i64, i64* @TANKMEMADDRREGBASE, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %62, i64 %66, i32 0, i32 %67)
  br label %86

69:                                               ; preds = %49
  %70 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %71 = load i64, i64* @TANKMEMADDRREGBASE, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 12
  %77 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %70, i64 %74, i32 0, i32 %76)
  %78 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %79 = load i64, i64* @A_TANKMEMCTLREGBASE, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load i32, i32* %7, align 4
  %84 = ashr i32 %83, 20
  %85 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %78, i64 %82, i32 0, i32 %84)
  br label %86

86:                                               ; preds = %69, %61
  br label %87

87:                                               ; preds = %86, %25
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %9

90:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %46
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @get_user(i32, i32*) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
