; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_print_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_print_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i64, i32, i32* }
%struct.TYPE_6__ = type { i64, i32* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"elf_getdata() failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.section*)* @print_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_section(%struct.section* %0) #0 {
  %2 = alloca %struct.section*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.section* %0, %struct.section** %2, align 8
  %5 = load %struct.section*, %struct.section** %2, align 8
  %6 = getelementptr inbounds %struct.section, %struct.section* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.section*, %struct.section** %2, align 8
  %11 = getelementptr inbounds %struct.section, %struct.section* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.section*, %struct.section** %2, align 8
  %16 = getelementptr inbounds %struct.section, %struct.section* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.section*, %struct.section** %2, align 8
  %19 = getelementptr inbounds %struct.section, %struct.section* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @print_data(i32* %17, i64 %20)
  br label %58

22:                                               ; preds = %9, %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %23

23:                                               ; preds = %39, %22
  %24 = load %struct.section*, %struct.section** %2, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = call %struct.TYPE_6__* @elf_getdata(i32 %26, %struct.TYPE_6__* %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %3, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.section*, %struct.section** %2, align 8
  %32 = getelementptr inbounds %struct.section, %struct.section* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = call %struct.TYPE_6__* @elf_rawdata(i32 %33, %struct.TYPE_6__* %34)
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %3, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br label %37

37:                                               ; preds = %30, %23
  %38 = phi i1 [ true, %23 ], [ %36, %30 ]
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = call i32 (...) @elf_errno()
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @print_data(i32* %43, i64 %46)
  br label %23

48:                                               ; preds = %37
  %49 = call i32 (...) @elf_errno()
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @EXIT_FAILURE, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @elf_errmsg(i32 %54)
  %56 = call i32 @errx(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %57, %14
  %59 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @print_data(i32*, i64) #1

declare dso_local %struct.TYPE_6__* @elf_getdata(i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @elf_rawdata(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
