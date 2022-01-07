; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_s_change_sec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_s_change_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDATA_SECTION_NAME = common dso_local global i8* null, align 8
@stdoutput = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@TARGET_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"elf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s_change_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_change_sec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %50 [
    i32 114, label %5
    i32 115, label %29
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** @RDATA_SECTION_NAME, align 8
  %7 = call i32 (...) @get_absolute_expression()
  %8 = call i32 @subseg_new(i8* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @stdoutput, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SEC_ALLOC, align 4
  %12 = load i32, i32* @SEC_LOAD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SEC_READONLY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SEC_RELOC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SEC_DATA, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @bfd_set_section_flags(i32 %9, i32 %10, i32 %19)
  %21 = load i32, i32* @TARGET_OS, align 4
  %22 = call i32 @strcmp(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @record_alignment(i32 %25, i32 4)
  br label %27

27:                                               ; preds = %24, %5
  %28 = call i32 (...) @demand_empty_rest_of_line()
  br label %50

29:                                               ; preds = %1
  %30 = call i32 (...) @get_absolute_expression()
  %31 = call i32 @subseg_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @stdoutput, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SEC_ALLOC, align 4
  %35 = load i32, i32* @SEC_LOAD, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SEC_RELOC, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SEC_DATA, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @bfd_set_section_flags(i32 %32, i32 %33, i32 %40)
  %42 = load i32, i32* @TARGET_OS, align 4
  %43 = call i32 @strcmp(i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @record_alignment(i32 %46, i32 4)
  br label %48

48:                                               ; preds = %45, %29
  %49 = call i32 (...) @demand_empty_rest_of_line()
  br label %50

50:                                               ; preds = %1, %48, %27
  ret void
}

declare dso_local i32 @subseg_new(i8*, i32) #1

declare dso_local i32 @get_absolute_expression(...) #1

declare dso_local i32 @bfd_set_section_flags(i32, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @record_alignment(i32, i32) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
