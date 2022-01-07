; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_extract_scp_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_extract_scp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @extract_scp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_scp_header(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %9
  %22 = load i32, i32* %10, align 4
  %23 = lshr i32 %22, 27
  %24 = and i32 %23, 31
  %25 = load i32*, i32** %18, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %9
  %27 = load i32*, i32** %17, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = lshr i32 %30, 26
  %32 = and i32 %31, 1
  %33 = load i32*, i32** %17, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32*, i32** %16, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = lshr i32 %38, 25
  %40 = and i32 %39, 1
  %41 = load i32*, i32** %16, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32*, i32** %15, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = lshr i32 %46, 24
  %48 = and i32 %47, 1
  %49 = load i32*, i32** %15, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i32*, i32** %14, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = lshr i32 %54, 17
  %56 = and i32 %55, 127
  %57 = load i32*, i32** %14, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32*, i32** %13, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 1
  %65 = load i32*, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32*, i32** %12, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = lshr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = load i32*, i32** %12, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32*, i32** %11, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, 255
  %80 = load i32*, i32** %11, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
