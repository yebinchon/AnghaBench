; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_build_filler_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_build_filler_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"dll stuff\00", align 1
@lang_input_file_is_fake_enum = common dso_local global i32 0, align 4
@output_bfd = common dso_local global i32 0, align 4
@filler_bfd = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%X%P: can not create BFD: %E\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c".edata\00", align 1
@edata_s = common dso_local global i32* null, align 8
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_KEEP = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"%X%P: can not create .edata section: %E\0A\00", align 1
@edata_sz = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c".reloc\00", align 1
@reloc_s = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"%X%P: can not create .reloc section: %E\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @build_filler_bfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_filler_bfd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @lang_input_file_is_fake_enum, align 4
  %5 = call %struct.TYPE_4__* @lang_add_input_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4, i32* null)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  %6 = load i32, i32* @output_bfd, align 4
  %7 = call i32* @bfd_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32* %7, i32** @filler_bfd, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32* %7, i32** %9, align 8
  %10 = load i32*, i32** @filler_bfd, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** @filler_bfd, align 8
  %14 = load i32, i32* @output_bfd, align 4
  %15 = call i32 @bfd_get_arch(i32 %14)
  %16 = load i32, i32* @output_bfd, align 4
  %17 = call i32 @bfd_get_mach(i32 %16)
  %18 = call i32 @bfd_set_arch_mach(i32* %13, i32 %15, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12, %1
  %21 = call i32 @einfo(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %78

22:                                               ; preds = %12
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i32*, i32** @filler_bfd, align 8
  %27 = call i32* @bfd_make_section_old_way(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32* %27, i32** @edata_s, align 8
  %28 = load i32*, i32** @edata_s, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** @filler_bfd, align 8
  %32 = load i32*, i32** @edata_s, align 8
  %33 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %34 = load i32, i32* @SEC_ALLOC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SEC_LOAD, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SEC_KEEP, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SEC_IN_MEMORY, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @bfd_set_section_flags(i32* %31, i32* %32, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %30, %25
  %45 = call i32 @einfo(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %78

46:                                               ; preds = %30
  %47 = load i32*, i32** @filler_bfd, align 8
  %48 = load i32*, i32** @edata_s, align 8
  %49 = load i32, i32* @edata_sz, align 4
  %50 = call i32 @bfd_set_section_size(i32* %47, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %22
  %52 = load i32*, i32** @filler_bfd, align 8
  %53 = call i32* @bfd_make_section_old_way(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32* %53, i32** @reloc_s, align 8
  %54 = load i32*, i32** @reloc_s, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %51
  %57 = load i32*, i32** @filler_bfd, align 8
  %58 = load i32*, i32** @reloc_s, align 8
  %59 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %60 = load i32, i32* @SEC_ALLOC, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SEC_LOAD, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SEC_KEEP, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SEC_IN_MEMORY, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @bfd_set_section_flags(i32* %57, i32* %58, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %56, %51
  %71 = call i32 @einfo(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %78

72:                                               ; preds = %56
  %73 = load i32*, i32** @filler_bfd, align 8
  %74 = load i32*, i32** @reloc_s, align 8
  %75 = call i32 @bfd_set_section_size(i32* %73, i32* %74, i32 0)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = call i32 @ldlang_add_file(%struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %72, %70, %44, %20
  ret void
}

declare dso_local %struct.TYPE_4__* @lang_add_input_file(i8*, i32, i32*) #1

declare dso_local i32* @bfd_create(i8*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #1

declare dso_local i32 @bfd_get_arch(i32) #1

declare dso_local i32 @bfd_get_mach(i32) #1

declare dso_local i32 @einfo(i8*) #1

declare dso_local i32* @bfd_make_section_old_way(i32*, i8*) #1

declare dso_local i32 @bfd_set_section_flags(i32*, i32*, i32) #1

declare dso_local i32 @bfd_set_section_size(i32*, i32*, i32) #1

declare dso_local i32 @ldlang_add_file(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
