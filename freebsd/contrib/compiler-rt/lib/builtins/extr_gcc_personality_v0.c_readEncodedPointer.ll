; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_gcc_personality_v0.c_readEncodedPointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_gcc_personality_v0.c_readEncodedPointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_EH_PE_omit = common dso_local global i32 0, align 4
@DW_EH_PE_indirect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**, i32)* @readEncodedPointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @readEncodedPointer(i32** %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32**, i32*** %4, align 8
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @DW_EH_PE_omit, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %90

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 15
  switch i32 %16, label %62 [
    i32 141, label %17
    i32 128, label %23
    i32 131, label %25
    i32 130, label %31
    i32 129, label %37
    i32 136, label %43
    i32 135, label %49
    i32 134, label %55
    i32 133, label %61
  ]

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  store i32* %22, i32** %6, align 8
  br label %64

23:                                               ; preds = %14
  %24 = call i64 @readULEB128(i32** %6)
  store i64 %24, i64* %7, align 8
  br label %64

25:                                               ; preds = %14
  %26 = load i32*, i32** %6, align 8
  %27 = bitcast i32* %26 to i64*
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  store i32* %30, i32** %6, align 8
  br label %64

31:                                               ; preds = %14
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast i32* %32 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  store i32* %36, i32** %6, align 8
  br label %64

37:                                               ; preds = %14
  %38 = load i32*, i32** %6, align 8
  %39 = bitcast i32* %38 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  store i32* %42, i32** %6, align 8
  br label %64

43:                                               ; preds = %14
  %44 = load i32*, i32** %6, align 8
  %45 = bitcast i32* %44 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  store i32* %48, i32** %6, align 8
  br label %64

49:                                               ; preds = %14
  %50 = load i32*, i32** %6, align 8
  %51 = bitcast i32* %50 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  store i32* %54, i32** %6, align 8
  br label %64

55:                                               ; preds = %14
  %56 = load i32*, i32** %6, align 8
  %57 = bitcast i32* %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %7, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  store i32* %60, i32** %6, align 8
  br label %64

61:                                               ; preds = %14
  br label %62

62:                                               ; preds = %14, %61
  %63 = call i32 (...) @compilerrt_abort()
  br label %64

64:                                               ; preds = %62, %55, %49, %43, %37, %31, %25, %23, %17
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 112
  switch i32 %66, label %75 [
    i32 141, label %67
    i32 137, label %68
    i32 132, label %74
    i32 139, label %74
    i32 138, label %74
    i32 140, label %74
  ]

67:                                               ; preds = %64
  br label %77

68:                                               ; preds = %64
  %69 = load i32**, i32*** %4, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = ptrtoint i32* %70 to i64
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %7, align 8
  br label %77

74:                                               ; preds = %64, %64, %64, %64
  br label %75

75:                                               ; preds = %64, %74
  %76 = call i32 (...) @compilerrt_abort()
  br label %77

77:                                               ; preds = %75, %68, %67
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @DW_EH_PE_indirect, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i64, i64* %7, align 8
  %84 = inttoptr i64 %83 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32*, i32** %6, align 8
  %88 = load i32**, i32*** %4, align 8
  store i32* %87, i32** %88, align 8
  %89 = load i64, i64* %7, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %86, %13
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i64 @readULEB128(i32**) #1

declare dso_local i32 @compilerrt_abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
