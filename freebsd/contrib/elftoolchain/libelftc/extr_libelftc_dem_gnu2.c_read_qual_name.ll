; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_qual_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_qual_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i32*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"d->p (org str) is NULL\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"*d->p not in ASCII numeric range\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_qual_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_qual_name(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %6 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %7 = icmp eq %struct.demangle_data* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

9:                                                ; preds = %1
  %10 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %11 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i1 [ false, %9 ], [ true, %14 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %20 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 48
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %26 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 58
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %24, %15
  %32 = phi i1 [ false, %24 ], [ false, %15 ], [ true, %30 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %36 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 48
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %5, align 1
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %47 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %47, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %67, %31
  %51 = load i32, i32* %4, align 4
  %52 = load i8, i8* %5, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %57 = call i32 @read_class(%struct.demangle_data* %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %84

60:                                               ; preds = %55
  %61 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %62 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %61, i32 0, i32 1
  %63 = call i32 @VEC_PUSH_STR(i32* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %84

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %50

70:                                               ; preds = %50
  %71 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %72 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %78 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %82 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %70
  store i32 1, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %65, %59, %8
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_class(%struct.demangle_data*) #1

declare dso_local i32 @VEC_PUSH_STR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
