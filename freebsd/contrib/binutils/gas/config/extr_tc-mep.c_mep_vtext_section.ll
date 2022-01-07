; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_vtext_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_vtext_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mep_vtext_section.vtext_section = internal global i64 0, align 8
@stdoutput = common dso_local global i32 0, align 4
@VTEXT_SECTION_NAME = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_MEP_VLIW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @mep_vtext_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mep_vtext_section() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @mep_vtext_section.vtext_section, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @stdoutput, align 4
  %6 = call i32 @bfd_applicable_section_flags(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @VTEXT_SECTION_NAME, align 4
  %8 = call i64 @subseg_new(i32 %7, i32 0)
  store i64 %8, i64* @mep_vtext_section.vtext_section, align 8
  %9 = load i32, i32* @stdoutput, align 4
  %10 = load i64, i64* @mep_vtext_section.vtext_section, align 8
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @SEC_ALLOC, align 4
  %13 = load i32, i32* @SEC_LOAD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SEC_RELOC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SEC_CODE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SEC_READONLY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SEC_MEP_VLIW, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %11, %22
  %24 = call i32 @bfd_set_section_flags(i32 %9, i64 %10, i32 %23)
  br label %25

25:                                               ; preds = %4, %0
  %26 = load i64, i64* @mep_vtext_section.vtext_section, align 8
  ret i64 %26
}

declare dso_local i32 @bfd_applicable_section_flags(i32) #1

declare dso_local i64 @subseg_new(i32, i32) #1

declare dso_local i32 @bfd_set_section_flags(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
