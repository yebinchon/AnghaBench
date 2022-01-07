; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_convert_oct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_convert_oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cpp_strbuf = type { i32 }

@wchar_precision = common dso_local global i32 0, align 4
@char_precision = common dso_local global i32 0, align 4
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"octal escape sequence out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*, %struct._cpp_strbuf*, i32)* @convert_oct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_oct(i32* %0, i8* %1, i8* %2, %struct._cpp_strbuf* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._cpp_strbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct._cpp_strbuf* %3, %struct._cpp_strbuf** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i8 0, i8* %13, align 1
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @wchar_precision, align 4
  %22 = call i64 @CPP_OPTION(i32* %20, i32 %21)
  br label %27

23:                                               ; preds = %5
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @char_precision, align 4
  %26 = call i64 @CPP_OPTION(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i64 [ %22, %19 ], [ %26, %23 ]
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %14, align 8
  %30 = call i64 @width_to_mask(i64 %29)
  store i64 %30, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %52, %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %11, align 8
  %38 = icmp ult i64 %36, 3
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %72

41:                                               ; preds = %39
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %12, align 1
  %44 = load i8, i8* %12, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp slt i32 %45, 48
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i8, i8* %12, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sgt i32 %49, 55
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %41
  br label %72

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  %55 = load i8, i8* %13, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %13, align 1
  %58 = sext i8 %57 to i32
  %59 = shl i32 %58, 3
  %60 = ashr i32 %59, 3
  %61 = xor i32 %56, %60
  %62 = load i32, i32* %16, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %16, align 4
  %64 = load i8, i8* %13, align 1
  %65 = sext i8 %64 to i32
  %66 = shl i32 %65, 3
  %67 = load i8, i8* %12, align 1
  %68 = sext i8 %67 to i32
  %69 = add nsw i32 %66, %68
  %70 = sub nsw i32 %69, 48
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %13, align 1
  br label %31

72:                                               ; preds = %51, %39
  %73 = load i8, i8* %13, align 1
  %74 = sext i8 %73 to i64
  %75 = load i8, i8* %13, align 1
  %76 = sext i8 %75 to i64
  %77 = load i64, i64* %15, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %83 = call i32 @cpp_error(i32* %81, i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %84 = load i64, i64* %15, align 8
  %85 = load i8, i8* %13, align 1
  %86 = sext i8 %85 to i64
  %87 = and i64 %86, %84
  %88 = trunc i64 %87 to i8
  store i8 %88, i8* %13, align 1
  br label %89

89:                                               ; preds = %80, %72
  %90 = load i32*, i32** %6, align 8
  %91 = load i8, i8* %13, align 1
  %92 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @emit_numeric_escape(i32* %90, i8 signext %91, %struct._cpp_strbuf* %92, i32 %93)
  %95 = load i8*, i8** %7, align 8
  ret i8* %95
}

declare dso_local i64 @CPP_OPTION(i32*, i32) #1

declare dso_local i64 @width_to_mask(i64) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*) #1

declare dso_local i32 @emit_numeric_escape(i32*, i8 signext, %struct._cpp_strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
