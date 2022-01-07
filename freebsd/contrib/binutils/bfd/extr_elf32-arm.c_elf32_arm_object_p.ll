; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ARM_NOTE_SECTION = common dso_local global i32 0, align 4
@bfd_mach_arm_unknown = common dso_local global i32 0, align 4
@bfd_arch_arm = common dso_local global i32 0, align 4
@EF_ARM_MAVERICK_FLOAT = common dso_local global i32 0, align 4
@bfd_mach_arm_ep9312 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @elf32_arm_object_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_object_p(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @ARM_NOTE_SECTION, align 4
  %6 = call i32 @bfd_arm_get_mach_from_notes(i32* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @bfd_mach_arm_unknown, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @bfd_arch_arm, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @bfd_default_set_arch_mach(i32* %11, i32 %12, i32 %13)
  br label %34

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call %struct.TYPE_2__* @elf_elfheader(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EF_ARM_MAVERICK_FLOAT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @bfd_arch_arm, align 4
  %26 = load i32, i32* @bfd_mach_arm_ep9312, align 4
  %27 = call i32 @bfd_default_set_arch_mach(i32* %24, i32 %25, i32 %26)
  br label %33

28:                                               ; preds = %15
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @bfd_arch_arm, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @bfd_default_set_arch_mach(i32* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %10
  %35 = load i32, i32* @TRUE, align 4
  ret i32 %35
}

declare dso_local i32 @bfd_arm_get_mach_from_notes(i32*, i32) #1

declare dso_local i32 @bfd_default_set_arch_mach(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @elf_elfheader(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
