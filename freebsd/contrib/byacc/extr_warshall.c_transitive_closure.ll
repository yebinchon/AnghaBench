; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_warshall.c_transitive_closure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_warshall.c_transitive_closure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @transitive_closure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transitive_closure(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @WORDSIZE(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %3, align 8
  store i32* %22, i32** %12, align 8
  store i32 0, i32* %6, align 4
  %23 = load i32*, i32** %3, align 8
  store i32* %23, i32** %13, align 8
  br label %24

24:                                               ; preds = %79, %2
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %84

28:                                               ; preds = %24
  %29 = load i32*, i32** %12, align 8
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %3, align 8
  store i32* %30, i32** %7, align 8
  br label %31

31:                                               ; preds = %66, %28
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %31
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = load i32*, i32** %13, align 8
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %9, align 8
  br label %48

48:                                               ; preds = %52, %42
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ult i32* %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %8, align 8
  %55 = load i32, i32* %53, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %7, align 8
  %58 = load i32, i32* %56, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %56, align 4
  br label %48

60:                                               ; preds = %48
  br label %66

61:                                               ; preds = %35
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %7, align 8
  br label %66

66:                                               ; preds = %61, %60
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %10, align 8
  br label %31

71:                                               ; preds = %31
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @BITS_PER_WORD, align 4
  %75 = icmp uge i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %12, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %5, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %13, align 8
  br label %24

84:                                               ; preds = %24
  ret void
}

declare dso_local i32 @WORDSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
