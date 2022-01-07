; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_make_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_make_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TMP_TAIL_S = common dso_local global i32 0, align 4
@FOPEN_WT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to open temporary tail file: %s\00", align 1
@no_idata4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"\09.section\09.idata$4\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\09%s\090\0A\00", align 1
@ASM_LONG = common dso_local global i8* null, align 8
@no_idata5 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"\09.section\09.idata$5\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\09.section\09.idata$7\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\09%s\09__%s_iname\0A\00", align 1
@ASM_GLOBAL = common dso_local global i8* null, align 8
@imp_name_lab = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"__%s_iname:\09%s\09\22%s\22\0A\00", align 1
@ASM_TEXT = common dso_local global i8* null, align 8
@dll_name = common dso_local global i8* null, align 8
@TMP_TAIL_O = common dso_local global i32 0, align 4
@HOW_BFD_READ_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @make_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_tail() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @TMP_TAIL_S, align 4
  %4 = load i32, i32* @FOPEN_WT, align 4
  %5 = call i32* @fopen(i32 %3, i32 %4)
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @TMP_TAIL_S, align 4
  %11 = call i32 @fatal(i32 %9, i32 %10)
  store i32* null, i32** %1, align 8
  br label %50

12:                                               ; preds = %0
  %13 = load i32, i32* @no_idata4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load i8*, i8** @ASM_LONG, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* @no_idata5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = load i8*, i8** @ASM_LONG, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = load i8*, i8** @ASM_GLOBAL, align 8
  %35 = load i8*, i8** @imp_name_lab, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i8*, i8** @imp_name_lab, align 8
  %39 = load i8*, i8** @ASM_TEXT, align 8
  %40 = load i8*, i8** @dll_name, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %38, i8* %39, i8* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i32, i32* @TMP_TAIL_S, align 4
  %45 = load i32, i32* @TMP_TAIL_O, align 4
  %46 = call i32 @assemble_file(i32 %44, i32 %45)
  %47 = load i32, i32* @TMP_TAIL_O, align 4
  %48 = load i32, i32* @HOW_BFD_READ_TARGET, align 4
  %49 = call i32* @bfd_openr(i32 %47, i32 %48)
  store i32* %49, i32** %1, align 8
  br label %50

50:                                               ; preds = %30, %8
  %51 = load i32*, i32** %1, align 8
  ret i32* %51
}

declare dso_local i32* @fopen(i32, i32) #1

declare dso_local i32 @fatal(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @assemble_file(i32, i32) #1

declare dso_local i32* @bfd_openr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
