; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_igafb.c_igafb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_igafb.c_igafb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iga_par = type { i32 }

@DAC_W_INDEX = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @igafb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igafb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.iga_par*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.iga_par*
  store %struct.iga_par* %19, %struct.iga_par** %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %99

27:                                               ; preds = %6
  %28 = load %struct.iga_par*, %struct.iga_par** %14, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DAC_W_INDEX, align 4
  %31 = call i32 @pci_outb(%struct.iga_par* %28, i32 %29, i32 %30)
  %32 = load %struct.iga_par*, %struct.iga_par** %14, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DAC_DATA, align 4
  %35 = call i32 @pci_outb(%struct.iga_par* %32, i32 %33, i32 %34)
  %36 = load %struct.iga_par*, %struct.iga_par** %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @DAC_DATA, align 4
  %39 = call i32 @pci_outb(%struct.iga_par* %36, i32 %37, i32 %38)
  %40 = load %struct.iga_par*, %struct.iga_par** %14, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @DAC_DATA, align 4
  %43 = call i32 @pci_outb(%struct.iga_par* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %44, 16
  br i1 %45, label %46, label %98

46:                                               ; preds = %27
  %47 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %97 [
    i32 16, label %51
    i32 24, label %66
    i32 32, label %81
  ]

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 10
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 %54, 5
  %56 = or i32 %53, %55
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %58, i32* %65, align 4
  br label %97

66:                                               ; preds = %46
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %8, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 %68, %70
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %73, i32* %80, align 4
  br label %97

81:                                               ; preds = %46
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 %82, 8
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = shl i32 %86, 16
  %88 = load i32, i32* %15, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %89, i32* %96, align 4
  br label %97

97:                                               ; preds = %46, %81, %66, %51
  br label %98

98:                                               ; preds = %97, %27
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %26
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @pci_outb(%struct.iga_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
