; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-arm.c_bfd_arm_get_mach_from_notes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-arm.c_bfd_arm_get_mach_from_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@bfd_mach_arm_unknown = common dso_local global i32 0, align 4
@NOTE_ARCH_STRING = common dso_local global i32 0, align 4
@architectures = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_arm_get_mach_from_notes(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.TYPE_6__* @bfd_get_section_by_name(i32* %11, i8* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @bfd_mach_arm_unknown, align 4
  store i32 %17, i32* %3, align 4
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @bfd_mach_arm_unknown, align 4
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %18
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = call i32 @bfd_malloc_and_get_section(i32* %27, %struct.TYPE_6__* %28, i32** %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %68

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @NOTE_ARCH_STRING, align 4
  %37 = call i32 @arm_check_note(i32* %33, i32* %34, i64 %35, i32 %36, i8** %9)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %68

40:                                               ; preds = %32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @architectures, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %66, %40
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @architectures, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @strcmp(i8* %48, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @free(i32* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @architectures, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %3, align 4
  br label %76

66:                                               ; preds = %47
  br label %43

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %67, %39, %31
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @free(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @bfd_mach_arm_unknown, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %57, %24, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_6__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @bfd_malloc_and_get_section(i32*, %struct.TYPE_6__*, i32**) #1

declare dso_local i32 @arm_check_note(i32*, i32*, i64, i32, i8**) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
