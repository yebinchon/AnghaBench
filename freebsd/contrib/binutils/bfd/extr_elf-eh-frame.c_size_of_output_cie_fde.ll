; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c_size_of_output_cie_fde.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c_size_of_output_cie_fde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eh_cie_fde = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eh_cie_fde*, i32)* @size_of_output_cie_fde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @size_of_output_cie_fde(%struct.eh_cie_fde* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eh_cie_fde*, align 8
  %5 = alloca i32, align 4
  store %struct.eh_cie_fde* %0, %struct.eh_cie_fde** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.eh_cie_fde*, %struct.eh_cie_fde** %4, align 8
  %7 = getelementptr inbounds %struct.eh_cie_fde, %struct.eh_cie_fde* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.eh_cie_fde*, %struct.eh_cie_fde** %4, align 8
  %13 = getelementptr inbounds %struct.eh_cie_fde, %struct.eh_cie_fde* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %33

17:                                               ; preds = %11
  %18 = load %struct.eh_cie_fde*, %struct.eh_cie_fde** %4, align 8
  %19 = getelementptr inbounds %struct.eh_cie_fde, %struct.eh_cie_fde* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.eh_cie_fde*, %struct.eh_cie_fde** %4, align 8
  %22 = call i32 @extra_augmentation_string_bytes(%struct.eh_cie_fde* %21)
  %23 = add i32 %20, %22
  %24 = load %struct.eh_cie_fde*, %struct.eh_cie_fde** %4, align 8
  %25 = call i32 @extra_augmentation_data_bytes(%struct.eh_cie_fde* %24)
  %26 = add i32 %23, %25
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %26, %27
  %29 = sub i32 %28, 1
  %30 = load i32, i32* %5, align 4
  %31 = sub i32 0, %30
  %32 = and i32 %29, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %17, %16, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @extra_augmentation_string_bytes(%struct.eh_cie_fde*) #1

declare dso_local i32 @extra_augmentation_data_bytes(%struct.eh_cie_fde*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
