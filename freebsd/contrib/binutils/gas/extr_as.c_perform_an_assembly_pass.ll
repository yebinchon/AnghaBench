; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_as.c_perform_an_assembly_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_as.c_perform_an_assembly_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@need_pass_2 = common dso_local global i64 0, align 8
@TEXT_SECTION_NAME = common dso_local global i8* null, align 8
@text_section = common dso_local global i8* null, align 8
@DATA_SECTION_NAME = common dso_local global i8* null, align 8
@data_section = common dso_local global i8* null, align 8
@BSS_SECTION_NAME = common dso_local global i8* null, align 8
@bss_section = common dso_local global i8* null, align 8
@stdoutput = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@BFD_ABS_SECTION_NAME = common dso_local global i8* null, align 8
@BFD_UND_SECTION_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"*GAS `reg' section*\00", align 1
@reg_section = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"*GAS `expr' section*\00", align 1
@expr_section = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @perform_an_assembly_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_an_assembly_pass(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* @need_pass_2, align 8
  %7 = load i8*, i8** @TEXT_SECTION_NAME, align 8
  %8 = call i8* @subseg_new(i8* %7, i32 0)
  store i8* %8, i8** @text_section, align 8
  %9 = load i8*, i8** @DATA_SECTION_NAME, align 8
  %10 = call i8* @subseg_new(i8* %9, i32 0)
  store i8* %10, i8** @data_section, align 8
  %11 = load i8*, i8** @BSS_SECTION_NAME, align 8
  %12 = call i8* @subseg_new(i8* %11, i32 0)
  store i8* %12, i8** @bss_section, align 8
  %13 = load i32, i32* @stdoutput, align 4
  %14 = call i32 @bfd_applicable_section_flags(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @stdoutput, align 4
  %16 = load i8*, i8** @text_section, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SEC_ALLOC, align 4
  %19 = load i32, i32* @SEC_LOAD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SEC_RELOC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SEC_CODE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SEC_READONLY, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %17, %26
  %28 = call i32 @bfd_set_section_flags(i32 %15, i8* %16, i32 %27)
  %29 = load i32, i32* @stdoutput, align 4
  %30 = load i8*, i8** @data_section, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SEC_ALLOC, align 4
  %33 = load i32, i32* @SEC_LOAD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SEC_RELOC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SEC_DATA, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %31, %38
  %40 = call i32 @bfd_set_section_flags(i32 %29, i8* %30, i32 %39)
  %41 = load i32, i32* @stdoutput, align 4
  %42 = load i8*, i8** @bss_section, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SEC_ALLOC, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @bfd_set_section_flags(i32 %41, i8* %42, i32 %45)
  %47 = load i8*, i8** @bss_section, align 8
  %48 = call %struct.TYPE_2__* @seg_info(i8* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load i8*, i8** @BFD_ABS_SECTION_NAME, align 8
  %51 = call i8* @subseg_new(i8* %50, i32 0)
  %52 = load i8*, i8** @BFD_UND_SECTION_NAME, align 8
  %53 = call i8* @subseg_new(i8* %52, i32 0)
  %54 = call i8* @subseg_new(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8* %54, i8** @reg_section, align 8
  %55 = call i8* @subseg_new(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %55, i8** @expr_section, align 8
  %56 = load i8*, i8** @text_section, align 8
  %57 = call i32 @subseg_set(i8* %56, i32 0)
  %58 = call i32 (...) @md_begin()
  %59 = load i8**, i8*** %4, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %4, align 8
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %78, %2
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %3, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i8**, i8*** %4, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = call i32 @PROGRESS(i32 1)
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = load i8**, i8*** %4, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @read_a_source_file(i8* %76)
  br label %78

78:                                               ; preds = %71, %67
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %4, align 8
  br label %63

81:                                               ; preds = %63
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call i32 @read_a_source_file(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  ret void
}

declare dso_local i8* @subseg_new(i8*, i32) #1

declare dso_local i32 @bfd_applicable_section_flags(i32) #1

declare dso_local i32 @bfd_set_section_flags(i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @seg_info(i8*) #1

declare dso_local i32 @subseg_set(i8*, i32) #1

declare dso_local i32 @md_begin(...) #1

declare dso_local i32 @PROGRESS(i32) #1

declare dso_local i32 @read_a_source_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
