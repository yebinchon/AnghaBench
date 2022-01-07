; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_strings_a_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_strings_a_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.stat = type { i64 }

@DATA_FLAGS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@got_a_section = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i8*)* @strings_a_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strings_a_section(i32* %0, %struct.TYPE_7__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DATA_FLAGS, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @DATA_FLAGS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = call i64 @bfd_get_section_size(%struct.TYPE_7__* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %72

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %7, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i64* %30, i64** %8, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @bfd_stat(i32* %35, %struct.stat* %11)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %72

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %8, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %26
  %44 = load i64, i64* %9, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %72

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = call i8* @xmalloc(i64 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @bfd_get_section_contents(i32* %52, %struct.TYPE_7__* %53, i8* %54, i32 0, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %49
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* @got_a_section, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @print_strings(i32 %62, i32* null, i32 %65, i32 0, i64 %66, i8* %67)
  br label %69

69:                                               ; preds = %58, %49
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %69, %48, %38, %25, %19
  ret void
}

declare dso_local i64 @bfd_get_section_size(%struct.TYPE_7__*) #1

declare dso_local i64 @bfd_stat(i32*, %struct.stat*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @bfd_get_section_contents(i32*, %struct.TYPE_7__*, i8*, i32, i64) #1

declare dso_local i32 @print_strings(i32, i32*, i32, i32, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
