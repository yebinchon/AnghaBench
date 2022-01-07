; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_arch_specific.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_arch_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@do_arch = common dso_local global i32 0, align 4
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @process_arch_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_arch_specific(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @do_arch, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %20

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  switch i32 %8, label %18 [
    i32 131, label %9
    i32 130, label %12
    i32 129, label %12
    i32 128, label %15
  ]

9:                                                ; preds = %7
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @process_arm_specific(i32* %10)
  store i32 %11, i32* %2, align 4
  br label %20

12:                                               ; preds = %7, %7
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @process_mips_specific(i32* %13)
  store i32 %14, i32* %2, align 4
  br label %20

15:                                               ; preds = %7
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @process_power_specific(i32* %16)
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %15, %12, %9, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @process_arm_specific(i32*) #1

declare dso_local i32 @process_mips_specific(i32*) #1

declare dso_local i32 @process_power_specific(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
