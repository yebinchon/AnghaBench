; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_scan_filtered_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_scan_filtered_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@BSF_FUNCTION = common dso_local global i32 0, align 4
@add_stdcall_alias = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i32)* @scan_filtered_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_filtered_symbols(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.TYPE_6__* @bfd_make_empty_symbol(i32* %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @bfd_get_filename(i32* %22)
  %24 = call i32 @bfd_fatal(i32 %23)
  br label %25

25:                                               ; preds = %21, %4
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = mul nsw i64 %29, %31
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32* %33, i32** %11, align 8
  br label %34

34:                                               ; preds = %101, %25
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ult i32* %35, %36
  br i1 %37, label %38, label %106

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = call %struct.TYPE_6__* @bfd_minisymbol_to_symbol(i32* %39, i32 %40, i32* %41, %struct.TYPE_6__* %42)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %12, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = icmp eq %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @bfd_get_filename(i32* %47)
  %49 = call i32 @bfd_fatal(i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = call i8* @bfd_asymbol_name(%struct.TYPE_6__* %51)
  store i8* %52, i8** %13, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call signext i8 @bfd_get_symbol_leading_char(i32* %53)
  %55 = sext i8 %54 to i32
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %13, align 8
  br label %64

64:                                               ; preds = %61, %50
  %65 = load i8*, i8** %13, align 8
  %66 = call i8* @xstrdup(i8* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BSF_FUNCTION, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @def_exports(i8* %66, i8* null, i32 -1, i32 0, i32 0, i32 %74, i32 0)
  %76 = load i64, i64* @add_stdcall_alias, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %64
  %79 = load i8*, i8** %13, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 64)
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i8*, i8** %13, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 64
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %14, align 4
  %88 = load i8*, i8** %13, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = call i8* @xstrdup(i8* %91)
  store i8* %92, i8** %15, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = call i8* @strchr(i8* %93, i8 signext 64)
  store i8* %94, i8** %16, align 8
  %95 = load i8*, i8** %16, align 8
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %15, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i8* @xstrdup(i8* %97)
  %99 = call i32 @def_exports(i8* %96, i8* %98, i32 -1, i32 0, i32 0, i32 0, i32 0)
  br label %100

100:                                              ; preds = %82, %78, %64
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %10, align 8
  br label %34

106:                                              ; preds = %34
  ret void
}

declare dso_local %struct.TYPE_6__* @bfd_make_empty_symbol(i32*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local %struct.TYPE_6__* @bfd_minisymbol_to_symbol(i32*, i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i8* @bfd_asymbol_name(%struct.TYPE_6__*) #1

declare dso_local signext i8 @bfd_get_symbol_leading_char(i32*) #1

declare dso_local i32 @def_exports(i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
