; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_s_change_sec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_s_change_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bss_section = common dso_local global i32 0, align 4
@RDATA_SECTION_NAME = common dso_local global i8* null, align 8
@IS_ELF = common dso_local global i64 0, align 8
@stdoutput = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@TARGET_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"elf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@auto_align = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s_change_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_change_sec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @mips_emit_delays()
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %68 [
    i32 116, label %6
    i32 100, label %8
    i32 98, label %10
    i32 114, label %15
    i32 115, label %43
  ]

6:                                                ; preds = %1
  %7 = call i32 @s_text(i32 0)
  br label %68

8:                                                ; preds = %1
  %9 = call i32 @s_data(i32 0)
  br label %68

10:                                               ; preds = %1
  %11 = load i32, i32* @bss_section, align 4
  %12 = call i32 (...) @get_absolute_expression()
  %13 = call i32 @subseg_set(i32 %11, i32 %12)
  %14 = call i32 (...) @demand_empty_rest_of_line()
  br label %68

15:                                               ; preds = %1
  %16 = load i8*, i8** @RDATA_SECTION_NAME, align 8
  %17 = call i32 (...) @get_absolute_expression()
  %18 = call i32 @subseg_new(i8* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i64, i64* @IS_ELF, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load i32, i32* @stdoutput, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SEC_ALLOC, align 4
  %25 = load i32, i32* @SEC_LOAD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SEC_READONLY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SEC_RELOC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SEC_DATA, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @bfd_set_section_flags(i32 %22, i32 %23, i32 %32)
  %34 = load i32, i32* @TARGET_OS, align 4
  %35 = call i32 @strcmp(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @record_alignment(i32 %38, i32 4)
  br label %40

40:                                               ; preds = %37, %21
  br label %41

41:                                               ; preds = %40, %15
  %42 = call i32 (...) @demand_empty_rest_of_line()
  br label %68

43:                                               ; preds = %1
  %44 = call i32 (...) @get_absolute_expression()
  %45 = call i32 @subseg_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i64, i64* @IS_ELF, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i32, i32* @stdoutput, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SEC_ALLOC, align 4
  %52 = load i32, i32* @SEC_LOAD, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @SEC_RELOC, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SEC_DATA, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @bfd_set_section_flags(i32 %49, i32 %50, i32 %57)
  %59 = load i32, i32* @TARGET_OS, align 4
  %60 = call i32 @strcmp(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @record_alignment(i32 %63, i32 4)
  br label %65

65:                                               ; preds = %62, %48
  br label %66

66:                                               ; preds = %65, %43
  %67 = call i32 (...) @demand_empty_rest_of_line()
  br label %68

68:                                               ; preds = %1, %66, %41, %10, %8, %6
  store i32 1, i32* @auto_align, align 4
  ret void
}

declare dso_local i32 @mips_emit_delays(...) #1

declare dso_local i32 @s_text(i32) #1

declare dso_local i32 @s_data(i32) #1

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32 @get_absolute_expression(...) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local i32 @subseg_new(i8*, i32) #1

declare dso_local i32 @bfd_set_section_flags(i32, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @record_alignment(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
