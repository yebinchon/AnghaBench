; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buildlist.c_closest_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buildlist.c_closest_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"! XXX closest item choice %d, %s = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @closest_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @closest_item(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i32, i32* %10, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %7, align 4
  br label %37

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %10, align 4
  br label %15

37:                                               ; preds = %31, %15
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %61, %37
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %8, align 4
  br label %64

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %39

64:                                               ; preds = %58, %39
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %81, %73
  br label %84

84:                                               ; preds = %83, %68
  br label %92

85:                                               ; preds = %64
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %89, %85
  br label %92

92:                                               ; preds = %91, %84
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @mySide(i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @TRACE(i8* %98)
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @mySide(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
