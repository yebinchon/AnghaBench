; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c_skip_cfa_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c_skip_cfa_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32)* @skip_cfa_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_cfa_op(i32** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32**, i32*** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @read_byte(i32** %10, i32* %11, i32* %8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %4, align 4
  br label %102

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 192
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 192
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %22, %20 ], [ %24, %23 ]
  switch i32 %26, label %100 [
    i32 142, label %27
    i32 153, label %27
    i32 136, label %27
    i32 137, label %27
    i32 134, label %27
    i32 155, label %27
    i32 141, label %29
    i32 135, label %29
    i32 131, label %29
    i32 133, label %29
    i32 145, label %29
    i32 147, label %29
    i32 146, label %29
    i32 157, label %29
    i32 129, label %33
    i32 128, label %33
    i32 140, label %33
    i32 138, label %33
    i32 149, label %33
    i32 139, label %33
    i32 156, label %33
    i32 144, label %33
    i32 148, label %46
    i32 143, label %60
    i32 130, label %60
    i32 132, label %79
    i32 152, label %84
    i32 151, label %88
    i32 150, label %92
    i32 154, label %96
  ]

27:                                               ; preds = %25, %25, %25, %25, %25, %25
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %4, align 4
  br label %102

29:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @skip_leb128(i32** %30, i32* %31)
  store i32 %32, i32* %4, align 4
  br label %102

33:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @skip_leb128(i32** %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32**, i32*** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @skip_leb128(i32** %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %102

46:                                               ; preds = %25
  %47 = load i32**, i32*** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @read_uleb128(i32** %47, i32* %48, i32* %9)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32**, i32*** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @skip_bytes(i32** %52, i32* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %51, %46
  %58 = phi i1 [ false, %46 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %102

60:                                               ; preds = %25, %25
  %61 = load i32**, i32*** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @skip_leb128(i32** %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i32**, i32*** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @read_uleb128(i32** %66, i32* %67, i32* %9)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32**, i32*** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @skip_bytes(i32** %71, i32* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %70, %65, %60
  %77 = phi i1 [ false, %65 ], [ false, %60 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %4, align 4
  br label %102

79:                                               ; preds = %25
  %80 = load i32**, i32*** %5, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @skip_bytes(i32** %80, i32* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  br label %102

84:                                               ; preds = %25
  %85 = load i32**, i32*** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @skip_bytes(i32** %85, i32* %86, i32 1)
  store i32 %87, i32* %4, align 4
  br label %102

88:                                               ; preds = %25
  %89 = load i32**, i32*** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @skip_bytes(i32** %89, i32* %90, i32 2)
  store i32 %91, i32* %4, align 4
  br label %102

92:                                               ; preds = %25
  %93 = load i32**, i32*** %5, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @skip_bytes(i32** %93, i32* %94, i32 4)
  store i32 %95, i32* %4, align 4
  br label %102

96:                                               ; preds = %25
  %97 = load i32**, i32*** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @skip_bytes(i32** %97, i32* %98, i32 8)
  store i32 %99, i32* %4, align 4
  br label %102

100:                                              ; preds = %25
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %96, %92, %88, %84, %79, %76, %57, %43, %29, %27, %14
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @read_byte(i32**, i32*, i32*) #1

declare dso_local i32 @skip_leb128(i32**, i32*) #1

declare dso_local i32 @read_uleb128(i32**, i32*, i32*) #1

declare dso_local i32 @skip_bytes(i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
