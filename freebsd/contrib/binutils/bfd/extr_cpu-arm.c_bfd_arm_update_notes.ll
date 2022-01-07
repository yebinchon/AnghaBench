; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-arm.c_bfd_arm_update_notes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-arm.c_bfd_arm_update_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NOTE_ARCH_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"armv2\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"armv2a\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"armv3\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"armv3M\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"armv4\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"armv4t\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"armv5\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"armv5t\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"armv5te\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"XScale\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ep9312\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"iWMMXt\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"iWMMXt2\00", align 1
@arm_Note = common dso_local global i32 0, align 4
@name = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [55 x i8] c"warning: unable to update contents of %s section in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_arm_update_notes(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.TYPE_5__* @bfd_get_section_by_name(i32* %11, i8* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %3, align 4
  br label %103

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %103

26:                                               ; preds = %18
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = call i32 @bfd_malloc_and_get_section(i32* %27, %struct.TYPE_5__* %28, i32** %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %95

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @NOTE_ARCH_STRING, align 4
  %37 = call i32 @arm_check_note(i32* %33, i32* %34, i64 %35, i32 %36, i8** %9)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %95

40:                                               ; preds = %32
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @bfd_get_mach(i32* %41)
  switch i32 %42, label %43 [
    i32 128, label %44
    i32 141, label %45
    i32 140, label %46
    i32 139, label %47
    i32 138, label %48
    i32 137, label %49
    i32 136, label %50
    i32 135, label %51
    i32 134, label %52
    i32 133, label %53
    i32 132, label %54
    i32 131, label %55
    i32 130, label %56
    i32 129, label %57
  ]

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %40, %43
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %58

45:                                               ; preds = %40
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %58

46:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %58

47:                                               ; preds = %40
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %58

48:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %58

49:                                               ; preds = %40
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %58

50:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %58

51:                                               ; preds = %40
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %58

52:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %58

53:                                               ; preds = %40
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %58

54:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %58

55:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %58

56:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %58

57:                                               ; preds = %40
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %58

58:                                               ; preds = %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i64 @strcmp(i8* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load i32*, i32** %8, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = load i32, i32* @arm_Note, align 4
  %67 = load i32, i32* @name, align 4
  %68 = call i32 @offsetof(i32 %66, i32 %67)
  %69 = load i32, i32* @NOTE_ARCH_STRING, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = add nsw i32 %70, 3
  %72 = and i32 %71, -4
  %73 = add nsw i32 %68, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %65, i64 %74
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @strcpy(i8* %75, i8* %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @bfd_set_section_contents(i32* %78, %struct.TYPE_5__* %79, i32* %80, i32 0, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %63
  %85 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  %86 = load i8*, i8** %5, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @bfd_get_filename(i32* %87)
  %89 = call i32 @_bfd_error_handler(i32 %85, i8* %86, i32 %88)
  br label %95

90:                                               ; preds = %63
  br label %91

91:                                               ; preds = %90, %58
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @free(i32* %92)
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %3, align 4
  br label %103

95:                                               ; preds = %84, %39, %31
  %96 = load i32*, i32** %8, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @free(i32* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %91, %24, %16
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_5__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @bfd_malloc_and_get_section(i32*, %struct.TYPE_5__*, i32**) #1

declare dso_local i32 @arm_check_note(i32*, i32*, i64, i32, i8**) #1

declare dso_local i32 @bfd_get_mach(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_5__*, i32*, i32, i64) #1

declare dso_local i32 @_bfd_error_handler(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
