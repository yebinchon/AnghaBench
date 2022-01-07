; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_voice_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_voice_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64 }

@DCYSUSV = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@VTFT = common dso_local global i32 0, align 4
@CVCF = common dso_local global i32 0, align 4
@PTRX = common dso_local global i32 0, align 4
@CPF = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@PSST = common dso_local global i32 0, align 4
@DSL = common dso_local global i32 0, align 4
@CCCA = common dso_local global i32 0, align 4
@Z1 = common dso_local global i32 0, align 4
@Z2 = common dso_local global i32 0, align 4
@FXRT = common dso_local global i32 0, align 4
@ATKHLDM = common dso_local global i32 0, align 4
@DCYSUSM = common dso_local global i32 0, align 4
@IFATN = common dso_local global i32 0, align 4
@PEFE = common dso_local global i32 0, align 4
@FMMOD = common dso_local global i32 0, align 4
@TREMFRQ = common dso_local global i32 0, align 4
@FM2FRQ2 = common dso_local global i32 0, align 4
@TEMPENV = common dso_local global i32 0, align 4
@LFOVAL2 = common dso_local global i32 0, align 4
@LFOVAL1 = common dso_local global i32 0, align 4
@ATKHLDV = common dso_local global i32 0, align 4
@ENVVOL = common dso_local global i32 0, align 4
@ENVVAL = common dso_local global i32 0, align 4
@A_FXRT1 = common dso_local global i32 0, align 4
@A_FXRT2 = common dso_local global i32 0, align 4
@A_SENDAMOUNTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emu10k1_voice_init(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %6 = load i32, i32* @DCYSUSV, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %5, i32 %6, i32 %7, i32 0)
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %10 = load i32, i32* @IP, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %9, i32 %10, i32 %11, i32 0)
  %13 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %14 = load i32, i32* @VTFT, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %13, i32 %14, i32 %15, i32 65535)
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %18 = load i32, i32* @CVCF, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %17, i32 %18, i32 %19, i32 65535)
  %21 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %22 = load i32, i32* @PTRX, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %26 = load i32, i32* @CPF, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %30 = load i32, i32* @CCR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %34 = load i32, i32* @PSST, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %38 = load i32, i32* @DSL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %37, i32 %38, i32 %39, i32 16)
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %42 = load i32, i32* @CCCA, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %41, i32 %42, i32 %43, i32 0)
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %46 = load i32, i32* @Z1, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %50 = load i32, i32* @Z2, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %54 = load i32, i32* @FXRT, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %53, i32 %54, i32 %55, i32 839909376)
  %57 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %58 = load i32, i32* @ATKHLDM, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %62 = load i32, i32* @DCYSUSM, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %61, i32 %62, i32 %63, i32 0)
  %65 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %66 = load i32, i32* @IFATN, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %65, i32 %66, i32 %67, i32 65535)
  %69 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %70 = load i32, i32* @PEFE, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %69, i32 %70, i32 %71, i32 0)
  %73 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %74 = load i32, i32* @FMMOD, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %78 = load i32, i32* @TREMFRQ, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %77, i32 %78, i32 %79, i32 24)
  %81 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %82 = load i32, i32* @FM2FRQ2, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %81, i32 %82, i32 %83, i32 24)
  %85 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %86 = load i32, i32* @TEMPENV, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %90 = load i32, i32* @LFOVAL2, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %94 = load i32, i32* @LFOVAL1, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %93, i32 %94, i32 %95, i32 0)
  %97 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %98 = load i32, i32* @ATKHLDV, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %97, i32 %98, i32 %99, i32 0)
  %101 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %102 = load i32, i32* @ENVVOL, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %101, i32 %102, i32 %103, i32 0)
  %105 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %106 = load i32, i32* @ENVVAL, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %105, i32 %106, i32 %107, i32 0)
  %109 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %110 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %138

113:                                              ; preds = %2
  %114 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %114, i32 76, i32 %115, i32 0)
  %117 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %117, i32 77, i32 %118, i32 0)
  %120 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %120, i32 78, i32 %121, i32 0)
  %123 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %123, i32 79, i32 %124, i32 0)
  %126 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %127 = load i32, i32* @A_FXRT1, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %126, i32 %127, i32 %128, i32 50462976)
  %130 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %131 = load i32, i32* @A_FXRT2, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %130, i32 %131, i32 %132, i32 1061109567)
  %134 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %135 = load i32, i32* @A_SENDAMOUNTS, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %134, i32 %135, i32 %136, i32 0)
  br label %138

138:                                              ; preds = %113, %2
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
