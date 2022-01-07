; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_section_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_section_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@SHF_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@SHF_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"execinstr\00", align 1
@SHF_EXECINSTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@SHF_TLS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"unrecognized section attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @obj_elf_section_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obj_elf_section_word(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 5
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strncmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @SHF_WRITE, align 4
  store i32 %13, i32* %3, align 4
  br label %44

14:                                               ; preds = %8, %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 5
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SHF_ALLOC, align 4
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %17, %14
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 9
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @SHF_EXECINSTR, align 4
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %26, %23
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @SHF_TLS, align 4
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %35, %32
  %42 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @as_warn(i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %39, %30, %21, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
