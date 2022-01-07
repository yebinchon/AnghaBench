; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_mixer.c_ca0106_spdif_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_mixer.c_ca0106_spdif_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca0106 = type { i64, i64 }

@SPDIF_SELECT1 = common dso_local global i32 0, align 4
@SPDIF_SELECT2 = common dso_local global i32 0, align 4
@CAPTURE_CONTROL = common dso_local global i32 0, align 4
@GPIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ca0106*)* @ca0106_spdif_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0106_spdif_enable(%struct.snd_ca0106* %0) #0 {
  %2 = alloca %struct.snd_ca0106*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %2, align 8
  %4 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %10 = load i32, i32* @SPDIF_SELECT1, align 4
  %11 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %9, i32 %10, i32 0, i32 15)
  %12 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %13 = load i32, i32* @SPDIF_SELECT2, align 4
  %14 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %12, i32 %13, i32 0, i32 184549376)
  %15 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %16 = load i32, i32* @CAPTURE_CONTROL, align 4
  %17 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %15, i32 %16, i32 0)
  %18 = and i32 %17, -4097
  store i32 %18, i32* %3, align 4
  %19 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %20 = load i32, i32* @CAPTURE_CONTROL, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %19, i32 %20, i32 0, i32 %21)
  %23 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %24 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GPIO, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inl(i64 %27)
  %29 = and i32 %28, -258
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %32 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GPIO, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outl(i32 %30, i64 %35)
  br label %66

37:                                               ; preds = %1
  %38 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %39 = load i32, i32* @SPDIF_SELECT1, align 4
  %40 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %38, i32 %39, i32 0, i32 15)
  %41 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %42 = load i32, i32* @SPDIF_SELECT2, align 4
  %43 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %41, i32 %42, i32 0, i32 983040)
  %44 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %45 = load i32, i32* @CAPTURE_CONTROL, align 4
  %46 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %44, i32 %45, i32 0)
  %47 = or i32 %46, 4096
  store i32 %47, i32* %3, align 4
  %48 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %49 = load i32, i32* @CAPTURE_CONTROL, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %48, i32 %49, i32 0, i32 %50)
  %52 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %53 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @GPIO, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @inl(i64 %56)
  %58 = or i32 %57, 257
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %61 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GPIO, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outl(i32 %59, i64 %64)
  br label %66

66:                                               ; preds = %37, %8
  ret void
}

declare dso_local i32 @snd_ca0106_ptr_write(%struct.snd_ca0106*, i32, i32, i32) #1

declare dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
