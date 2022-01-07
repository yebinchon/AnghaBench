; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_enter_linenos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_enter_linenos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }
%struct.internal_lineno = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@linetab = common dso_local global i8* null, align 8
@linetab_offset = common dso_local global i64 0, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Line number pointer %ld lower than start of line numbers\00", align 1
@linetab_size = common dso_local global i64 0, align 8
@local_linesz = common dso_local global i32 0, align 4
@symfile_bfd = common dso_local global i32 0, align 4
@current_subfile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, %struct.objfile*)* @enter_linenos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_linenos(i64 %0, i32 %1, i32 %2, %struct.objfile* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.internal_lineno, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.objfile* %3, %struct.objfile** %8, align 8
  %11 = load i8*, i8** @linetab, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %80

14:                                               ; preds = %4
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @linetab_offset, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @linetab_size, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %80

25:                                               ; preds = %18
  %26 = load i64, i64* @linetab_offset, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %25, %14
  %30 = load i8*, i8** @linetab, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @linetab_offset, align 8
  %33 = sub nsw i64 %31, %32
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8* %34, i8** %9, align 8
  %35 = load i32, i32* @local_linesz, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %79, %29
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** @linetab, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i64, i64* @linetab_size, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = icmp ule i8* %42, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %41
  %49 = load i32, i32* @symfile_bfd, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @bfd_coff_swap_lineno_in(i32 %49, i8* %50, %struct.internal_lineno* %10)
  %52 = load i32, i32* @local_linesz, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %9, align 8
  %56 = call i32 @L_LNNO32(%struct.internal_lineno* %10)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %48
  %59 = call i32 @L_LNNO32(%struct.internal_lineno* %10)
  %60 = load i32, i32* %7, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i32, i32* @current_subfile, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @L_LNNO32(%struct.internal_lineno* %10)
  %66 = add nsw i32 %64, %65
  %67 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %10, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.objfile*, %struct.objfile** %8, align 8
  %71 = getelementptr inbounds %struct.objfile, %struct.objfile* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.objfile*, %struct.objfile** %8, align 8
  %74 = call i32 @SECT_OFF_TEXT(%struct.objfile* %73)
  %75 = call i64 @ANOFFSET(i32 %72, i32 %74)
  %76 = add nsw i64 %69, %75
  %77 = call i32 @record_line(i32 %63, i32 %66, i64 %76)
  br label %79

78:                                               ; preds = %58, %48
  br label %80

79:                                               ; preds = %62
  br label %41

80:                                               ; preds = %13, %24, %78, %41
  ret void
}

declare dso_local i32 @complaint(i32*, i8*, i64) #1

declare dso_local i32 @bfd_coff_swap_lineno_in(i32, i8*, %struct.internal_lineno*) #1

declare dso_local i32 @L_LNNO32(%struct.internal_lineno*) #1

declare dso_local i32 @record_line(i32, i32, i64) #1

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
