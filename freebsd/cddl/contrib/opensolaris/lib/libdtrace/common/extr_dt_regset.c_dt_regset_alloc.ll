; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_regset.c_dt_regset_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_regset.c_dt_regset_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }

@BT_ULSHIFT = common dso_local global i64 0, align 8
@BT_ULMASK = common dso_local global i64 0, align 8
@BT_NBIPUL = common dso_local global i32 0, align 4
@D_NOREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Insufficient registers to generate code\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_regset_alloc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %14, 1
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @BT_ULSHIFT, align 8
  %18 = lshr i64 %16, %17
  store i64 %18, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %33, %1
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %19

36:                                               ; preds = %31, %19
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @BT_ULMASK, align 8
  %47 = and i64 %45, %46
  br label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @BT_NBIPUL, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i64 [ %47, %44 ], [ %51, %48 ]
  store i64 %53, i64* %7, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %8, align 8
  store i64 1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %60

60:                                               ; preds = %83, %52
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = and i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @BT_ULSHIFT, align 8
  %72 = shl i64 %70, %71
  %73 = load i64, i64* %10, align 8
  %74 = or i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @BT_SET(i64* %78, i32 %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %2, align 4
  br label %92

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %9, align 8
  %87 = shl i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %60

88:                                               ; preds = %60
  br label %89

89:                                               ; preds = %88, %36
  %90 = load i32, i32* @D_NOREG, align 4
  %91 = call i32 @xyerror(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %69
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @BT_SET(i64*, i32) #1

declare dso_local i32 @xyerror(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
