; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_lookup_Gwin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_lookup_Gwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@Gwin = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @lookup_Gwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_Gwin(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %10 = call i32 @memset(i32* %9, i32 0, i32 80)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %42, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 15
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @EQ(i32 %15, i32 %17)
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %38, %14
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %21, 20
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32**, i32*** @Gwin, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %24, %32
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %20

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %11

45:                                               ; preds = %11
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %96, %45
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %47, 10
  br i1 %48, label %49, label %99

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 65535
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = shl i64 %57, 1
  %59 = add i64 %58, 0
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %53, i32* %60, align 4
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 16
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = shl i64 %68, 1
  %70 = add i64 %69, 1
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %64, i32* %71, align 4
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 10
  %74 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 65535
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = shl i64 %80, 1
  %82 = add i64 %81, 0
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %76, i32* %83, align 4
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 10
  %86 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 16
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = shl i64 %92, 1
  %94 = add i64 %93, 1
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %88, i32* %95, align 4
  br label %96

96:                                               ; preds = %49
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %7, align 8
  br label %46

99:                                               ; preds = %46
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @memset(i32* %102, i32 0, i32 8)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 1, i32* %107, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
