; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sbitmap.c_sbitmap_last_set_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sbitmap.c_sbitmap_last_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@SBITMAP_ELT_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbitmap_last_set_bit(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %49, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @SBITMAP_ELT_BITS, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @SBITMAP_ELT_BITS, align 4
  %34 = sub nsw i32 %33, 1
  %35 = shl i32 1, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %27, %43
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %53

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %7, align 4
  br label %36

48:                                               ; preds = %19
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  br label %16

52:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
