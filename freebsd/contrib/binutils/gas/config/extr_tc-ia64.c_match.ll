; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@ia64_templ_desc = common dso_local global %struct.TYPE_2__* null, align 8
@IA64_UNIT_I = common dso_local global i32 0, align 4
@IA64_UNIT_M = common dso_local global i32 0, align 4
@IA64_UNIT_L = common dso_local global i32 0, align 4
@IA64_UNIT_B = common dso_local global i32 0, align 4
@IA64_UNIT_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ia64_templ_desc, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %57 [
    i32 132, label %20
    i32 134, label %21
    i32 128, label %32
    i32 130, label %37
    i32 129, label %42
    i32 133, label %47
    i32 131, label %52
  ]

20:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IA64_UNIT_I, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IA64_UNIT_M, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  br label %58

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IA64_UNIT_L, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %8, align 4
  br label %58

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IA64_UNIT_I, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %8, align 4
  br label %58

42:                                               ; preds = %3
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @IA64_UNIT_M, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %8, align 4
  br label %58

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @IA64_UNIT_B, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %58

52:                                               ; preds = %3
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @IA64_UNIT_F, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %58

57:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %52, %47, %42, %37, %32, %29, %20
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
