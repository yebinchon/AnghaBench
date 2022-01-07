; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_pack_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_pack_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32)* @pack_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_bits(i32** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ubifs_assert(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 32
  %21 = zext i1 %20 to i32
  %22 = call i32 @ubifs_assert(i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ubifs_assert(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 8
  %31 = zext i1 %30 to i32
  %32 = call i32 @ubifs_assert(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 32
  br label %40

40:                                               ; preds = %37, %4
  %41 = phi i1 [ true, %4 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @ubifs_assert(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %90

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 %47, %48
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %56, 8
  br i1 %57, label %58, label %89

58:                                               ; preds = %46
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 8, %59
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %9, align 8
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 16
  br i1 %66, label %67, label %88

67:                                               ; preds = %58
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, 8
  store i32 %69, i32* %7, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %9, align 8
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %72, 24
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 8
  store i32 %76, i32* %7, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %9, align 8
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp sgt i32 %79, 32
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 8
  store i32 %83, i32* %7, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %9, align 8
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %74
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87, %58
  br label %89

89:                                               ; preds = %88, %46
  br label %117

90:                                               ; preds = %40
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %93, 8
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = ashr i32 %96, 8
  store i32 %97, i32* %7, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %9, align 8
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp sgt i32 %100, 16
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  %103 = load i32, i32* %7, align 4
  %104 = ashr i32 %103, 8
  store i32 %104, i32* %7, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %9, align 8
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %107, 24
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load i32, i32* %7, align 4
  %111 = ashr i32 %110, 8
  store i32 %111, i32* %7, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %9, align 8
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %102
  br label %115

115:                                              ; preds = %114, %95
  br label %116

116:                                              ; preds = %115, %90
  br label %117

117:                                              ; preds = %116, %89
  %118 = load i32, i32* %8, align 4
  %119 = and i32 %118, 7
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %9, align 8
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32*, i32** %9, align 8
  %127 = load i32**, i32*** %5, align 8
  store i32* %126, i32** %127, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32*, i32** %6, align 8
  store i32 %128, i32* %129, align 4
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
