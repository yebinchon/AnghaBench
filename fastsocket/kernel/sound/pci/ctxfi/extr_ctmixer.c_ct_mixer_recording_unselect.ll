; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_recording_unselect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_recording_unselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { %struct.amixer** }
%struct.amixer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.amixer*)*, i32 (%struct.amixer*, i32*)* }

@CHN_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_mixer*, i32)* @ct_mixer_recording_unselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_mixer_recording_unselect(%struct.ct_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.ct_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amixer*, align 8
  %6 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %12 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %11, i32 0, i32 0
  %13 = load %struct.amixer**, %struct.amixer*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CHN_NUM, align 4
  %16 = mul i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.amixer*, %struct.amixer** %13, i64 %19
  %21 = load %struct.amixer*, %struct.amixer** %20, align 8
  store %struct.amixer* %21, %struct.amixer** %5, align 8
  %22 = load %struct.amixer*, %struct.amixer** %5, align 8
  %23 = getelementptr inbounds %struct.amixer, %struct.amixer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (%struct.amixer*, i32*)*, i32 (%struct.amixer*, i32*)** %25, align 8
  %27 = load %struct.amixer*, %struct.amixer** %5, align 8
  %28 = call i32 %26(%struct.amixer* %27, i32* null)
  %29 = load %struct.amixer*, %struct.amixer** %5, align 8
  %30 = getelementptr inbounds %struct.amixer, %struct.amixer* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.amixer*)*, i32 (%struct.amixer*)** %32, align 8
  %34 = load %struct.amixer*, %struct.amixer** %5, align 8
  %35 = call i32 %33(%struct.amixer* %34)
  br label %36

36:                                               ; preds = %10
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %7

39:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
