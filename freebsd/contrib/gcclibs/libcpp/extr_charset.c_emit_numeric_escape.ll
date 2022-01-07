; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_emit_numeric_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_emit_numeric_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cpp_strbuf = type { i64, i64, i64* }

@bytes_big_endian = common dso_local global i32 0, align 4
@wchar_precision = common dso_local global i32 0, align 4
@char_precision = common dso_local global i32 0, align 4
@OUTBUF_BLOCK_SIZE = common dso_local global i64 0, align 8
@uchar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct._cpp_strbuf*, i32)* @emit_numeric_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_numeric_escape(i32* %0, i64 %1, %struct._cpp_strbuf* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._cpp_strbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct._cpp_strbuf* %2, %struct._cpp_strbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @bytes_big_endian, align 4
  %22 = call i8* @CPP_OPTION(i32* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @wchar_precision, align 4
  %26 = call i8* @CPP_OPTION(i32* %24, i32 %25)
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %10, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @char_precision, align 4
  %30 = call i8* @CPP_OPTION(i32* %28, i32 %29)
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @width_to_mask(i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = udiv i64 %34, %35
  store i64 %36, i64* %13, align 8
  %37 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %38 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %15, align 8
  %40 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %41 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %42, %43
  %45 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %46 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %19
  %50 = load i64, i64* @OUTBUF_BLOCK_SIZE, align 8
  %51 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %52 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load i32, i32* @uchar, align 4
  %56 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %57 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %60 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @XRESIZEVEC(i32 %55, i64* %58, i64 %61)
  %63 = bitcast i8* %62 to i64*
  %64 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %65 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %64, i32 0, i32 2
  store i64* %63, i64** %65, align 8
  br label %66

66:                                               ; preds = %49, %19
  store i64 0, i64* %14, align 8
  br label %67

67:                                               ; preds = %96, %66
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %12, align 8
  %74 = and i64 %72, %73
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %6, align 8
  %77 = lshr i64 %76, %75
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %80 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %71
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = sub i64 %86, %87
  %89 = sub i64 %88, 1
  br label %92

90:                                               ; preds = %71
  %91 = load i64, i64* %14, align 8
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi i64 [ %89, %85 ], [ %91, %90 ]
  %94 = add i64 %82, %93
  %95 = getelementptr inbounds i64, i64* %81, i64 %94
  store i64 %78, i64* %95, align 8
  br label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %14, align 8
  br label %67

99:                                               ; preds = %67
  %100 = load i64, i64* %13, align 8
  %101 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %102 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %141

105:                                              ; preds = %4
  %106 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %107 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, 1
  %110 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %111 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ugt i64 %109, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %105
  %115 = load i64, i64* @OUTBUF_BLOCK_SIZE, align 8
  %116 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %117 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, %115
  store i64 %119, i64* %117, align 8
  %120 = load i32, i32* @uchar, align 4
  %121 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %122 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %125 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @XRESIZEVEC(i32 %120, i64* %123, i64 %126)
  %128 = bitcast i8* %127 to i64*
  %129 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %130 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %129, i32 0, i32 2
  store i64* %128, i64** %130, align 8
  br label %131

131:                                              ; preds = %114, %105
  %132 = load i64, i64* %6, align 8
  %133 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %134 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %133, i32 0, i32 2
  %135 = load i64*, i64** %134, align 8
  %136 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %7, align 8
  %137 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = getelementptr inbounds i64, i64* %135, i64 %138
  store i64 %132, i64* %140, align 8
  br label %141

141:                                              ; preds = %131, %99
  ret void
}

declare dso_local i8* @CPP_OPTION(i32*, i32) #1

declare dso_local i64 @width_to_mask(i64) #1

declare dso_local i8* @XRESIZEVEC(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
