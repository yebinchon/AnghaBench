; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_md_pcrel_from_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_md_pcrel_from_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @md_pcrel_from_section(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %9, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @S_GET_SEGMENT(i32* %28)
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = call i64 @arm_force_relocation(%struct.TYPE_6__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %25
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %32, %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %62 [
    i32 136, label %41
    i32 135, label %45
    i32 137, label %45
    i32 139, label %45
    i32 138, label %45
    i32 129, label %50
    i32 128, label %50
    i32 133, label %50
    i32 132, label %50
    i32 131, label %50
    i32 130, label %50
    i32 134, label %50
    i32 143, label %54
    i32 142, label %54
    i32 141, label %54
    i32 144, label %54
    i32 140, label %54
    i32 146, label %58
    i32 145, label %58
    i32 148, label %58
    i32 147, label %58
    i32 149, label %58
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, -4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %3, align 8
  br label %65

45:                                               ; preds = %37, %37, %37, %37
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 4
  %48 = and i32 %47, -4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %3, align 8
  br label %65

50:                                               ; preds = %37, %37, %37, %37, %37, %37, %37
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %3, align 8
  br label %65

54:                                               ; preds = %37, %37, %37, %37, %37
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 8
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %3, align 8
  br label %65

58:                                               ; preds = %37, %37, %37, %37, %37
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 8
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %3, align 8
  br label %65

62:                                               ; preds = %37
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %62, %58, %54, %50, %45, %41
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i64 @arm_force_relocation(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
