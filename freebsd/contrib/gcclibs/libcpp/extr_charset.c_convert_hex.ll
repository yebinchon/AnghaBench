; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_convert_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_convert_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cpp_strbuf = type { i32 }

@wchar_precision = common dso_local global i32 0, align 4
@char_precision = common dso_local global i32 0, align 4
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"the meaning of '\\x' is different in traditional C\00", align 1
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\\x used with no following hex digits\00", align 1
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"hex escape sequence out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct._cpp_strbuf*, i32)* @convert_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @convert_hex(i32* %0, i32* %1, i32* %2, %struct._cpp_strbuf* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct._cpp_strbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct._cpp_strbuf* %3, %struct._cpp_strbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @wchar_precision, align 4
  %23 = call i64 @CPP_OPTION(i32* %21, i32 %22)
  br label %28

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @char_precision, align 4
  %27 = call i64 @CPP_OPTION(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i64 [ %23, %20 ], [ %27, %24 ]
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %16, align 8
  %31 = call i64 @width_to_mask(i64 %30)
  store i64 %31, i64* %17, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @CPP_WTRADITIONAL(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @CPP_DL_WARNING, align 4
  %38 = call i32 @cpp_error(i32* %36, i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  br label %42

42:                                               ; preds = %53, %39
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ult i32* %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @hex_p(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %68

53:                                               ; preds = %46
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %8, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 %57, 4
  %59 = ashr i32 %58, 4
  %60 = xor i32 %56, %59
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = shl i32 %63, 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @hex_value(i32 %65)
  %67 = add nsw i32 %64, %66
  store i32 %67, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %42

68:                                               ; preds = %52, %42
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* @CPP_DL_ERROR, align 4
  %74 = call i32 @cpp_error(i32* %72, i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32*, i32** %8, align 8
  store i32* %75, i32** %6, align 8
  br label %104

76:                                               ; preds = %68
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %17, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %79, %83
  %85 = zext i1 %84 to i32
  %86 = or i32 %77, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %76
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %91 = call i32 @cpp_error(i32* %89, i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i64, i64* %17, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = and i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %88, %76
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @emit_numeric_escape(i32* %98, i32 %99, %struct._cpp_strbuf* %100, i32 %101)
  %103 = load i32*, i32** %8, align 8
  store i32* %103, i32** %6, align 8
  br label %104

104:                                              ; preds = %97, %71
  %105 = load i32*, i32** %6, align 8
  ret i32* %105
}

declare dso_local i64 @CPP_OPTION(i32*, i32) #1

declare dso_local i64 @width_to_mask(i64) #1

declare dso_local i64 @CPP_WTRADITIONAL(i32*) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*) #1

declare dso_local i32 @hex_p(i32) #1

declare dso_local i32 @hex_value(i32) #1

declare dso_local i32 @emit_numeric_escape(i32*, i32, %struct._cpp_strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
