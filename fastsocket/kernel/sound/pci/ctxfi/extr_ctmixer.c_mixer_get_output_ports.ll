; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_mixer_get_output_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_mixer_get_output_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { i64* }
%struct.rsc = type { i32 }
%struct.amixer = type { %struct.rsc }

@CHN_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer*, i32, %struct.rsc**, %struct.rsc**)* @mixer_get_output_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_get_output_ports(%struct.ct_mixer* %0, i32 %1, %struct.rsc** %2, %struct.rsc** %3) #0 {
  %5 = alloca %struct.ct_mixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsc**, align 8
  %8 = alloca %struct.rsc**, align 8
  %9 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rsc** %2, %struct.rsc*** %7, align 8
  store %struct.rsc** %3, %struct.rsc*** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @port_to_amixer(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.rsc**, %struct.rsc*** %7, align 8
  %13 = icmp ne %struct.rsc** null, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %16 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @CHN_NUM, align 4
  %20 = mul i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %17, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.amixer*
  %25 = getelementptr inbounds %struct.amixer, %struct.amixer* %24, i32 0, i32 0
  %26 = load %struct.rsc**, %struct.rsc*** %7, align 8
  store %struct.rsc* %25, %struct.rsc** %26, align 8
  br label %27

27:                                               ; preds = %14, %4
  %28 = load %struct.rsc**, %struct.rsc*** %8, align 8
  %29 = icmp ne %struct.rsc** null, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %32 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @CHN_NUM, align 4
  %36 = mul i32 %34, %35
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %33, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.amixer*
  %42 = getelementptr inbounds %struct.amixer, %struct.amixer* %41, i32 0, i32 0
  %43 = load %struct.rsc**, %struct.rsc*** %8, align 8
  store %struct.rsc* %42, %struct.rsc** %43, align 8
  br label %44

44:                                               ; preds = %30, %27
  ret i32 0
}

declare dso_local i32 @port_to_amixer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
