; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hex.c_hex_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hex.c_hex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_hex_array_size = common dso_local global i32 0, align 4
@_hex_value = common dso_local global i32* null, align 8
@_hex_bad = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hex_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %95, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @_hex_array_size, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %98

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  switch i32 %7, label %88 [
    i32 48, label %8
    i32 49, label %13
    i32 50, label %18
    i32 51, label %23
    i32 52, label %28
    i32 53, label %33
    i32 54, label %38
    i32 55, label %43
    i32 56, label %48
    i32 57, label %53
    i32 97, label %58
    i32 65, label %58
    i32 98, label %63
    i32 66, label %63
    i32 99, label %68
    i32 67, label %68
    i32 100, label %73
    i32 68, label %73
    i32 101, label %78
    i32 69, label %78
    i32 102, label %83
    i32 70, label %83
  ]

8:                                                ; preds = %6
  %9 = load i32*, i32** @_hex_value, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32 0, i32* %12, align 4
  br label %94

13:                                               ; preds = %6
  %14 = load i32*, i32** @_hex_value, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 1, i32* %17, align 4
  br label %94

18:                                               ; preds = %6
  %19 = load i32*, i32** @_hex_value, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 2, i32* %22, align 4
  br label %94

23:                                               ; preds = %6
  %24 = load i32*, i32** @_hex_value, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 3, i32* %27, align 4
  br label %94

28:                                               ; preds = %6
  %29 = load i32*, i32** @_hex_value, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 4, i32* %32, align 4
  br label %94

33:                                               ; preds = %6
  %34 = load i32*, i32** @_hex_value, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 5, i32* %37, align 4
  br label %94

38:                                               ; preds = %6
  %39 = load i32*, i32** @_hex_value, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 6, i32* %42, align 4
  br label %94

43:                                               ; preds = %6
  %44 = load i32*, i32** @_hex_value, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 7, i32* %47, align 4
  br label %94

48:                                               ; preds = %6
  %49 = load i32*, i32** @_hex_value, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 8, i32* %52, align 4
  br label %94

53:                                               ; preds = %6
  %54 = load i32*, i32** @_hex_value, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 9, i32* %57, align 4
  br label %94

58:                                               ; preds = %6, %6
  %59 = load i32*, i32** @_hex_value, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 10, i32* %62, align 4
  br label %94

63:                                               ; preds = %6, %6
  %64 = load i32*, i32** @_hex_value, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 11, i32* %67, align 4
  br label %94

68:                                               ; preds = %6, %6
  %69 = load i32*, i32** @_hex_value, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 12, i32* %72, align 4
  br label %94

73:                                               ; preds = %6, %6
  %74 = load i32*, i32** @_hex_value, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 13, i32* %77, align 4
  br label %94

78:                                               ; preds = %6, %6
  %79 = load i32*, i32** @_hex_value, align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 14, i32* %82, align 4
  br label %94

83:                                               ; preds = %6, %6
  %84 = load i32*, i32** @_hex_value, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 15, i32* %87, align 4
  br label %94

88:                                               ; preds = %6
  %89 = load i32, i32* @_hex_bad, align 4
  %90 = load i32*, i32** @_hex_value, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18, %13, %8
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %2

98:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
