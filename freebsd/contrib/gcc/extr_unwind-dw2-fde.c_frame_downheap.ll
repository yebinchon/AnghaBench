; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_frame_downheap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_frame_downheap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, i64 (%struct.object*, i32*, i32*)*, i32**, i32, i32)* @frame_downheap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_downheap(%struct.object* %0, i64 (%struct.object*, i32*, i32*)* %1, i32** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.object*, align 8
  %7 = alloca i64 (%struct.object*, i32*, i32*)*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %6, align 8
  store i64 (%struct.object*, i32*, i32*)* %1, i64 (%struct.object*, i32*, i32*)** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = mul nsw i32 2, %14
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %12, align 4
  br label %17

17:                                               ; preds = %75, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %17
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load i64 (%struct.object*, i32*, i32*)*, i64 (%struct.object*, i32*, i32*)** %7, align 8
  %28 = load %struct.object*, %struct.object** %6, align 8
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32**, i32*** %8, align 8
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %34, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 %27(%struct.object* %28, i32* %33, i32* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %42, %26, %21
  %46 = load i64 (%struct.object*, i32*, i32*)*, i64 (%struct.object*, i32*, i32*)** %7, align 8
  %47 = load %struct.object*, %struct.object** %6, align 8
  %48 = load i32**, i32*** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32**, i32*** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 %46(%struct.object* %47, i32* %52, i32* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %45
  %61 = load i32**, i32*** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32**, i32*** %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @SWAP(i32* %65, i32* %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %11, align 4
  br label %74

73:                                               ; preds = %45
  br label %79

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %17

79:                                               ; preds = %73, %17
  ret void
}

declare dso_local i32 @SWAP(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
