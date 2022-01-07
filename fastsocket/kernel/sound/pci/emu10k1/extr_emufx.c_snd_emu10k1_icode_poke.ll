; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_icode_poke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_icode_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_emu10k1_fx8010_code = type { i32 }

@A_DBG = common dso_local global i32 0, align 4
@A_DBG_SINGLE_STEP = common dso_local global i32 0, align 4
@DBG = common dso_local global i32 0, align 4
@EMU10K1_DBG_SINGLE_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*)* @snd_emu10k1_icode_poke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_icode_poke(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_code* %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emu10k1_fx8010_code*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store %struct.snd_emu10k1_fx8010_code* %1, %struct.snd_emu10k1_fx8010_code** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %7 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %11 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %12 = call i32 @snd_emu10k1_verify_controls(%struct.snd_emu10k1* %10, %struct.snd_emu10k1_fx8010_code* %11)
  store i32 %12, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %96

15:                                               ; preds = %2
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlcpy(i32 %19, i32 %22, i32 4)
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %15
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %30 = load i32, i32* @A_DBG, align 4
  %31 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @A_DBG_SINGLE_STEP, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %29, i32 %30, i32 0, i32 %36)
  br label %48

38:                                               ; preds = %15
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %40 = load i32, i32* @DBG, align 4
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EMU10K1_DBG_SINGLE_STEP, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %39, i32 %40, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %38, %28
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %50 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %51 = call i32 @snd_emu10k1_del_controls(%struct.snd_emu10k1* %49, %struct.snd_emu10k1_fx8010_code* %50)
  store i32 %51, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %55 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %56 = call i32 @snd_emu10k1_gpr_poke(%struct.snd_emu10k1* %54, %struct.snd_emu10k1_fx8010_code* %55)
  store i32 %56, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %53
  %59 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %60 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %61 = call i32 @snd_emu10k1_tram_poke(%struct.snd_emu10k1* %59, %struct.snd_emu10k1_fx8010_code* %60)
  store i32 %61, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %65 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %66 = call i32 @snd_emu10k1_code_poke(%struct.snd_emu10k1* %64, %struct.snd_emu10k1_fx8010_code* %65)
  store i32 %66, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %70 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %4, align 8
  %71 = call i32 @snd_emu10k1_add_controls(%struct.snd_emu10k1* %69, %struct.snd_emu10k1_fx8010_code* %70)
  store i32 %71, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %63, %58, %53, %48
  br label %96

74:                                               ; preds = %68
  %75 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %76 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %81 = load i32, i32* @A_DBG, align 4
  %82 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %83 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %80, i32 %81, i32 0, i32 %85)
  br label %95

87:                                               ; preds = %74
  %88 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %89 = load i32, i32* @DBG, align 4
  %90 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %91 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %88, i32 %89, i32 0, i32 %93)
  br label %95

95:                                               ; preds = %87, %79
  br label %96

96:                                               ; preds = %95, %73, %14
  %97 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %98 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_emu10k1_verify_controls(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_del_controls(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*) #1

declare dso_local i32 @snd_emu10k1_gpr_poke(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*) #1

declare dso_local i32 @snd_emu10k1_tram_poke(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*) #1

declare dso_local i32 @snd_emu10k1_code_poke(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*) #1

declare dso_local i32 @snd_emu10k1_add_controls(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
