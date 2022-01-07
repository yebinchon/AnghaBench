; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_filter_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_filter_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i32)* @filter_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @filter_symbols(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_5__* @bfd_make_empty_symbol(i32* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %12, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @bfd_get_filename(i32* %20)
  %22 = call i32 @bfd_fatal(i32 %21)
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = mul nsw i64 %27, %29
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  store i32* %31, i32** %10, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %11, align 8
  br label %34

34:                                               ; preds = %105, %23
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ult i32* %35, %36
  br i1 %37, label %38, label %110

38:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %44 = call %struct.TYPE_5__* @bfd_minisymbol_to_symbol(i32* %39, i32 %40, i8* %42, %struct.TYPE_5__* %43)
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %14, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %46 = icmp eq %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @bfd_get_filename(i32* %48)
  %50 = call i32 @bfd_fatal(i32 %49)
  br label %51

51:                                               ; preds = %47, %38
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BSF_GLOBAL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BSF_WEAK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @bfd_is_com_section(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65, %58, %51
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bfd_is_und_section(i32 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %71, %65
  %79 = phi i1 [ false, %65 ], [ %77, %71 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @match_exclude(i32 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %83, %78
  %91 = phi i1 [ false, %78 ], [ %89, %83 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32*, i32** %11, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @memcpy(i32* %96, i32* %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %11, align 8
  br label %104

104:                                              ; preds = %95, %90
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = zext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %9, align 8
  br label %34

110:                                              ; preds = %34
  %111 = load i32*, i32** %11, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = ptrtoint i32* %111 to i64
  %115 = ptrtoint i32* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = sdiv i64 %117, %119
  ret i64 %120
}

declare dso_local %struct.TYPE_5__* @bfd_make_empty_symbol(i32*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local %struct.TYPE_5__* @bfd_minisymbol_to_symbol(i32*, i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i64 @bfd_is_com_section(i32) #1

declare dso_local i32 @bfd_is_und_section(i32) #1

declare dso_local i32 @match_exclude(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
