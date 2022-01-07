; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_make_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_make_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TMP_HEAD_S = common dso_local global i32 0, align 4
@FOPEN_WT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to open temporary head file: %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s IMAGE_IMPORT_DESCRIPTOR\0A\00", align 1
@ASM_C = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"\09.section\09.idata$2\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\09%s\09%s\0A\00", align 1
@ASM_GLOBAL = common dso_local global i8* null, align 8
@head_label = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"\09%shname%s\09%sPtr to image import by name list\0A\00", align 1
@ASM_RVA_BEFORE = common dso_local global i8* null, align 8
@ASM_RVA_AFTER = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"\09%sthis should be the timestamp, but NT sometimes\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\09%sdoesn't load DLLs when this is set.\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\09%s\090\09%s loaded time\0A\00", align 1
@ASM_LONG = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"\09%s\090\09%s Forwarder chain\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\09%s__%s_iname%s\09%s imported dll's name\0A\00", align 1
@imp_name_lab = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"\09%sfthunk%s\09%s pointer to firstthunk\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%sStuff for compatibility\0A\00", align 1
@no_idata5 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"\09.section\09.idata$5\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\09%s\090\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"fthunk:\0A\00", align 1
@no_idata4 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"\09.section\09.idata$4\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"hname:\0A\00", align 1
@TMP_HEAD_O = common dso_local global i32 0, align 4
@HOW_BFD_READ_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @make_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_head() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @TMP_HEAD_S, align 4
  %4 = load i32, i32* @FOPEN_WT, align 4
  %5 = call i32* @fopen(i32 %3, i32 %4)
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @TMP_HEAD_S, align 4
  %11 = call i32 @fatal(i32 %9, i32 %10)
  store i32* null, i32** %1, align 8
  br label %90

12:                                               ; preds = %0
  %13 = load i32*, i32** %2, align 8
  %14 = load i8*, i8** @ASM_C, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load i8*, i8** @ASM_GLOBAL, align 8
  %20 = load i8*, i8** @head_label, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %19, i8* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i8*, i8** @head_label, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i8*, i8** @ASM_RVA_BEFORE, align 8
  %27 = load i8*, i8** @ASM_RVA_AFTER, align 8
  %28 = load i8*, i8** @ASM_C, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %26, i8* %27, i8* %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i8*, i8** @ASM_C, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i8*, i8** @ASM_C, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load i8*, i8** @ASM_LONG, align 8
  %38 = load i8*, i8** @ASM_C, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i8*, i8** @ASM_LONG, align 8
  %42 = load i8*, i8** @ASM_C, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i8*, i8** @ASM_RVA_BEFORE, align 8
  %46 = load i8*, i8** @imp_name_lab, align 8
  %47 = load i8*, i8** @ASM_RVA_AFTER, align 8
  %48 = load i8*, i8** @ASM_C, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8* %45, i8* %46, i8* %47, i8* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = load i8*, i8** @ASM_RVA_BEFORE, align 8
  %52 = load i8*, i8** @ASM_RVA_AFTER, align 8
  %53 = load i8*, i8** @ASM_C, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* %51, i8* %52, i8* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load i8*, i8** @ASM_C, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @no_idata5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %12
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %63 = load i32*, i32** %2, align 8
  %64 = load i8*, i8** @ASM_LONG, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %68

68:                                               ; preds = %60, %12
  %69 = load i32, i32* @no_idata4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %74 = load i32*, i32** %2, align 8
  %75 = load i8*, i8** @ASM_LONG, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %81

81:                                               ; preds = %71, %68
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @fclose(i32* %82)
  %84 = load i32, i32* @TMP_HEAD_S, align 4
  %85 = load i32, i32* @TMP_HEAD_O, align 4
  %86 = call i32 @assemble_file(i32 %84, i32 %85)
  %87 = load i32, i32* @TMP_HEAD_O, align 4
  %88 = load i32, i32* @HOW_BFD_READ_TARGET, align 4
  %89 = call i32* @bfd_openr(i32 %87, i32 %88)
  store i32* %89, i32** %1, align 8
  br label %90

90:                                               ; preds = %81, %8
  %91 = load i32*, i32** %1, align 8
  ret i32* %91
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
