; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_init_capture_apu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_init_capture_apu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.esschan = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, %struct.esschan*, i32, i32, i32, i32, i32)* @init_capture_apu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_capture_apu(%struct.es1968* %0, %struct.esschan* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.es1968*, align 8
  %9 = alloca %struct.esschan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %8, align 8
  store %struct.esschan* %1, %struct.esschan** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.esschan*, %struct.esschan** %9, align 8
  %18 = getelementptr inbounds %struct.esschan, %struct.esschan* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.esschan*, %struct.esschan** %9, align 8
  %26 = getelementptr inbounds %struct.esschan, %struct.esschan* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  %31 = load %struct.es1968*, %struct.es1968** %8, align 8
  %32 = load %struct.esschan*, %struct.esschan** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @snd_es1968_program_wavecache(%struct.es1968* %31, %struct.esschan* %32, i32 %33, i32 %34, i32 1)
  %36 = load %struct.es1968*, %struct.es1968** %8, align 8
  %37 = getelementptr inbounds %struct.es1968, %struct.es1968* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = sub nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = lshr i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 65535
  %48 = load %struct.esschan*, %struct.esschan** %9, align 8
  %49 = getelementptr inbounds %struct.esschan, %struct.esschan* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, 4194304
  store i32 %55, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %64, %7
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 16
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.es1968*, %struct.es1968** %8, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @apu_set_register(%struct.es1968* %60, i32 %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %56

67:                                               ; preds = %56
  %68 = load %struct.es1968*, %struct.es1968** %8, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @apu_set_register(%struct.es1968* %68, i32 %69, i32 2, i32 8)
  %71 = load %struct.es1968*, %struct.es1968** %8, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %11, align 4
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = shl i32 %75, 8
  %77 = call i32 @apu_set_register(%struct.es1968* %71, i32 %72, i32 4, i32 %76)
  %78 = load %struct.es1968*, %struct.es1968** %8, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 65535
  %82 = call i32 @apu_set_register(%struct.es1968* %78, i32 %79, i32 5, i32 %81)
  %83 = load %struct.es1968*, %struct.es1968** %8, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %85, %86
  %88 = and i32 %87, 65535
  %89 = call i32 @apu_set_register(%struct.es1968* %83, i32 %84, i32 6, i32 %88)
  %90 = load %struct.es1968*, %struct.es1968** %8, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @apu_set_register(%struct.es1968* %90, i32 %91, i32 7, i32 %92)
  %94 = load %struct.es1968*, %struct.es1968** %8, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @apu_set_register(%struct.es1968* %94, i32 %95, i32 8, i32 240)
  %97 = load %struct.es1968*, %struct.es1968** %8, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @apu_set_register(%struct.es1968* %97, i32 %98, i32 9, i32 0)
  %100 = load %struct.es1968*, %struct.es1968** %8, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @apu_set_register(%struct.es1968* %100, i32 %101, i32 10, i32 36616)
  %103 = load %struct.es1968*, %struct.es1968** %8, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @apu_set_register(%struct.es1968* %103, i32 %104, i32 11, i32 %105)
  %107 = load %struct.es1968*, %struct.es1968** %8, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @apu_set_register(%struct.es1968* %107, i32 %108, i32 0, i32 16399)
  ret void
}

declare dso_local i32 @snd_es1968_program_wavecache(%struct.es1968*, %struct.esschan*, i32, i32, i32) #1

declare dso_local i32 @apu_set_register(%struct.es1968*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
