; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt.c_i386_pe_output_labelref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt.c_i386_pe_output_labelref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DLL_IMPORT_PREFIX = common dso_local global i32 0, align 4
@FASTCALL_PREFIX = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [9 x i8] c"__imp_%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"__imp__%s\00", align 1
@DLL_EXPORT_PREFIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@USER_LABEL_PREFIX = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i386_pe_output_labelref(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* @DLL_IMPORT_PREFIX, align 4
  %7 = load i32, i32* @DLL_IMPORT_PREFIX, align 4
  %8 = call i64 @strlen(i32 %7)
  %9 = call i64 @strncmp(i8* %5, i32 %6, i64 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @DLL_IMPORT_PREFIX, align 4
  %14 = call i64 @strlen(i32 %13)
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* @FASTCALL_PREFIX, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @i386_pe_strip_name_encoding(i8* %23)
  %25 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %31

26:                                               ; preds = %11
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @i386_pe_strip_name_encoding(i8* %28)
  %30 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %69

32:                                               ; preds = %2
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @FASTCALL_PREFIX, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %57, label %40

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @DLL_EXPORT_PREFIX, align 4
  %43 = load i32, i32* @DLL_EXPORT_PREFIX, align 4
  %44 = call i64 @strlen(i32 %43)
  %45 = call i64 @strncmp(i8* %41, i32 %42, i64 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @DLL_EXPORT_PREFIX, align 4
  %50 = call i64 @strlen(i32 %49)
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @FASTCALL_PREFIX, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %47, %32
  %58 = load i32*, i32** %3, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = call i8* @i386_pe_strip_name_encoding(i8* %59)
  %61 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %68

62:                                               ; preds = %47, %40
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** @USER_LABEL_PREFIX, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call i8* @i386_pe_strip_name_encoding(i8* %65)
  %67 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %66)
  br label %68

68:                                               ; preds = %62, %57
  br label %69

69:                                               ; preds = %68, %31
  ret void
}

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @i386_pe_strip_name_encoding(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
