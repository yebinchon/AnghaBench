; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_get_sign_extend_vma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_get_sign_extend_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"coff-go32\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pe-i386\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pei-i386\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"pe-arm-wince-little\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"pei-arm-wince-little\00", align 1
@bfd_error_wrong_format = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_get_sign_extend_vma(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @bfd_get_flavour(i32* %5)
  %7 = load i64, i64* @bfd_target_elf_flavour, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_2__* @get_elf_backend_data(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @bfd_get_target(i32* %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @CONST_STRNEQ(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28, %24, %20, %14
  store i32 1, i32* %2, align 4
  br label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @bfd_error_wrong_format, align 4
  %39 = call i32 @bfd_set_error(i32 %38)
  store i32 -1, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %36, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local %struct.TYPE_2__* @get_elf_backend_data(i32*) #1

declare dso_local i8* @bfd_get_target(i32*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
