; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_cs_to_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_cs_to_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_symbol = type { i32 }
%struct.objfile = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.find_targ_sec_arg = type { %struct.TYPE_3__**, i32 }

@find_targ_sec = common dso_local global i32 0, align 4
@abfd = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coff_symbol*, %struct.objfile*)* @cs_to_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_to_section(%struct.coff_symbol* %0, %struct.objfile* %1) #0 {
  %3 = alloca %struct.coff_symbol*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.find_targ_sec_arg, align 8
  %7 = alloca i32, align 4
  store %struct.coff_symbol* %0, %struct.coff_symbol** %3, align 8
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.objfile*, %struct.objfile** %4, align 8
  %9 = call i32 @SECT_OFF_TEXT(%struct.objfile* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.coff_symbol*, %struct.coff_symbol** %3, align 8
  %11 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.find_targ_sec_arg, %struct.find_targ_sec_arg* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.find_targ_sec_arg, %struct.find_targ_sec_arg* %6, i32 0, i32 0
  store %struct.TYPE_3__** %5, %struct.TYPE_3__*** %14, align 8
  %15 = load %struct.objfile*, %struct.objfile** %4, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @find_targ_sec, align 4
  %19 = call i32 @bfd_map_over_sections(i32 %17, i32 %18, %struct.find_targ_sec_arg* %6)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %2
  %23 = load i32, i32* @abfd, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = call i32 @bfd_get_section_flags(i32 %23, %struct.TYPE_3__* %24)
  %26 = load i32, i32* @SEC_CODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.objfile*, %struct.objfile** %4, align 8
  %31 = call i32 @SECT_OFF_TEXT(%struct.objfile* %30)
  store i32 %31, i32* %7, align 4
  br label %47

32:                                               ; preds = %22
  %33 = load i32, i32* @abfd, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = call i32 @bfd_get_section_flags(i32 %33, %struct.TYPE_3__* %34)
  %36 = load i32, i32* @SEC_LOAD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.objfile*, %struct.objfile** %4, align 8
  %41 = call i32 @SECT_OFF_DATA(%struct.objfile* %40)
  store i32 %41, i32* %7, align 4
  br label %46

42:                                               ; preds = %32
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %29
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i32 @bfd_map_over_sections(i32, i32, %struct.find_targ_sec_arg*) #1

declare dso_local i32 @bfd_get_section_flags(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @SECT_OFF_DATA(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
