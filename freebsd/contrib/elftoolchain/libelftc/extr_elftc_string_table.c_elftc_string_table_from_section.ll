; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_string_table.c_elftc_string_table_from_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_string_table.c_elftc_string_table_from_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64 }

@SHT_STRTAB = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @elftc_string_table_from_section(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @gelf_getshdr(i32* %12, %struct.TYPE_5__* %7)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SHT_STRTAB, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %84

22:                                               ; preds = %15
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.TYPE_6__* @elf_getdata(i32* %23, i32* null)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %6, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %22
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %84

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  %35 = call i32* @elftc_string_table_create(i64 %34)
  store i32* %35, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32* null, i32** %3, align 8
  br label %84

38:                                               ; preds = %33
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* @errno, align 4
  br label %77

48:                                               ; preds = %38
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %8, align 8
  br label %56

56:                                               ; preds = %71, %48
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ult i8* %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i32*, i32** %10, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @elftc_string_table_insert(i32* %61, i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %77

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %11, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %8, align 8
  br label %56

75:                                               ; preds = %56
  %76 = load i32*, i32** %10, align 8
  store i32* %76, i32** %3, align 8
  br label %84

77:                                               ; preds = %65, %46
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @elftc_string_table_destroy(i32* %81)
  br label %83

83:                                               ; preds = %80, %77
  store i32* null, i32** %3, align 8
  br label %84

84:                                               ; preds = %83, %75, %37, %31, %20
  %85 = load i32*, i32** %3, align 8
  ret i32* %85
}

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_6__* @elf_getdata(i32*, i32*) #1

declare dso_local i32* @elftc_string_table_create(i64) #1

declare dso_local i64 @elftc_string_table_insert(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @elftc_string_table_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
