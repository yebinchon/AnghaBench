; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_parse_section_letters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_parse_section_letters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHF_ALLOC = common dso_local global i32 0, align 4
@SHF_WRITE = common dso_local global i32 0, align 4
@SHF_EXECINSTR = common dso_local global i32 0, align 4
@SHF_MERGE = common dso_local global i32 0, align 4
@SHF_STRINGS = common dso_local global i32 0, align 4
@SHF_GROUP = common dso_local global i32 0, align 4
@SHF_TLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"unrecognized .section attribute: want a,w,x,M,S,G,T\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @obj_elf_parse_section_letters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obj_elf_parse_section_letters(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %74, %2
  %8 = load i64, i64* %4, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %79

10:                                               ; preds = %7
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %70 [
    i32 97, label %14
    i32 119, label %18
    i32 120, label %22
    i32 77, label %26
    i32 83, label %30
    i32 71, label %34
    i32 84, label %38
    i32 109, label %42
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* @SHF_ALLOC, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %74

18:                                               ; preds = %10
  %19 = load i32, i32* @SHF_WRITE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %74

22:                                               ; preds = %10
  %23 = load i32, i32* @SHF_EXECINSTR, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %74

26:                                               ; preds = %10
  %27 = load i32, i32* @SHF_MERGE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %74

30:                                               ; preds = %10
  %31 = load i32, i32* @SHF_STRINGS, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %74

34:                                               ; preds = %10
  %35 = load i32, i32* @SHF_GROUP, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %74

38:                                               ; preds = %10
  %39 = load i32, i32* @SHF_TLS, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %74

42:                                               ; preds = %10
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 -1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 97
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load i32, i32* @SHF_MERGE, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i64, i64* %4, align 8
  %53 = icmp ugt i64 %52, 1
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 115
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* @SHF_STRINGS, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  %66 = load i64, i64* %4, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %60, %54, %48
  br label %74

69:                                               ; preds = %42
  br label %70

70:                                               ; preds = %10, %69
  %71 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @as_fatal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %68, %38, %34, %30, %26, %22, %18, %14
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %3, align 8
  %77 = load i64, i64* %4, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %4, align 8
  br label %7

79:                                               ; preds = %7
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @as_fatal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
