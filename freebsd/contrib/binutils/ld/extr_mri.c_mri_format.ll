; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_mri.c_mri_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_mri.c_mri_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"srec\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"IEEE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ieee\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"COFF\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"coff-m68k\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%P%F: unknown format type %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mri_format(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strcmp(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @lang_add_output_format(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32 1)
  br label %26

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @lang_add_output_format(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null, i32 1)
  br label %25

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @lang_add_output_format(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32 1)
  br label %24

20:                                               ; preds = %14
  %21 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @einfo(i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %18
  br label %25

25:                                               ; preds = %24, %12
  br label %26

26:                                               ; preds = %25, %6
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @lang_add_output_format(i8*, i32*, i32*, i32) #1

declare dso_local i32 @einfo(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
