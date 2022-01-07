; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_section.c_bfd_get_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_section.c_bfd_get_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@SEC_CONSTRUCTOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_error_bad_value = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@_bfd_get_section_contents = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_get_section_contents(i32* %0, %struct.TYPE_3__* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SEC_CONSTRUCTOR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @memset(i8* %20, i32 0, i64 %21)
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %6, align 4
  br label %104

24:                                               ; preds = %5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  br label %37

33:                                               ; preds = %24
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* %12, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %46, %42, %37
  %57 = load i32, i32* @bfd_error_bad_value, align 4
  %58 = call i32 @bfd_set_error(i32 %57)
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %6, align 4
  br label %104

60:                                               ; preds = %52
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %6, align 4
  br label %104

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i8*, i8** %9, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @memset(i8* %73, i32 0, i64 %74)
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %6, align 4
  br label %104

77:                                               ; preds = %65
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SEC_IN_MEMORY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @memcpy(i8* %85, i64 %90, i64 %91)
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %6, align 4
  br label %104

94:                                               ; preds = %77
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @_bfd_get_section_contents, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = call i32 @BFD_SEND(i32* %95, i32 %96, i32* %102)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %94, %84, %72, %63, %56, %19
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @BFD_SEND(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
