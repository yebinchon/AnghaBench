; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_osabi.c_check_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_osabi.c_check_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NOTESZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*, i64, i64)* @check_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_note(i32* %0, i32* %1, i8* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 12, i64* %14, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add i64 %17, 1
  %19 = load i64, i64* %14, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = add i64 %21, 3
  %23 = and i64 %22, -4
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @MAX_NOTESZ, align 8
  %26 = icmp ule i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @gdb_assert(i32 %27)
  %29 = load i64, i64* %14, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @bfd_section_size(i32* %30, i32* %31)
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %84

35:                                               ; preds = %6
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @bfd_h_get_32(i32* %36, i8* %37)
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add i64 %40, 1
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 12
  %46 = load i8*, i8** %11, align 8
  %47 = call i64 @strcmp(i8* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %35
  store i32 0, i32* %7, align 4
  br label %84

50:                                               ; preds = %43
  %51 = load i32*, i32** %8, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  %54 = call i64 @bfd_h_get_32(i32* %51, i8* %53)
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, -1
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %84

62:                                               ; preds = %57, %50
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, 3
  %68 = and i64 %67, -4
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @bfd_section_size(i32* %70, i32* %71)
  %73 = icmp ugt i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %84

75:                                               ; preds = %62
  %76 = load i32*, i32** %8, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 8
  %79 = call i64 @bfd_h_get_32(i32* %76, i8* %78)
  %80 = load i64, i64* %13, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %84

83:                                               ; preds = %75
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %82, %74, %61, %49, %34
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @bfd_section_size(i32*, i32*) #1

declare dso_local i64 @bfd_h_get_32(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
