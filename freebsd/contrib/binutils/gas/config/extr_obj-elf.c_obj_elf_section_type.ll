; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_section_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_section_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"progbits\00", align 1
@SHT_PROGBITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"nobits\00", align 1
@SHT_NOBITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"note\00", align 1
@SHT_NOTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"init_array\00", align 1
@SHT_INIT_ARRAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"fini_array\00", align 1
@SHT_FINI_ARRAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"preinit_array\00", align 1
@SHT_PREINIT_ARRAY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"unrecognized section type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @obj_elf_section_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obj_elf_section_type(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 8
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strncmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @SHT_PROGBITS, align 4
  store i32 %13, i32* %3, align 4
  br label %62

14:                                               ; preds = %8, %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 6
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SHT_NOBITS, align 4
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %17, %14
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 4
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @SHT_NOTE, align 4
  store i32 %31, i32* %3, align 4
  br label %62

32:                                               ; preds = %26, %23
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %33, 10
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @SHT_INIT_ARRAY, align 4
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %35, %32
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %42, 10
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @SHT_FINI_ARRAY, align 4
  store i32 %49, i32* %3, align 4
  br label %62

50:                                               ; preds = %44, %41
  %51 = load i64, i64* %5, align 8
  %52 = icmp eq i64 %51, 13
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 13)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @SHT_PREINIT_ARRAY, align 4
  store i32 %58, i32* %3, align 4
  br label %62

59:                                               ; preds = %53, %50
  %60 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %61 = call i32 @as_warn(i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %57, %48, %39, %30, %21, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
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
