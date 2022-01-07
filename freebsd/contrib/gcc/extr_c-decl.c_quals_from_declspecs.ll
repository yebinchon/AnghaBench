; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_quals_from_declspecs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_quals_from_declspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_declspecs = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@TYPE_QUAL_CONST = common dso_local global i32 0, align 4
@TYPE_QUAL_VOLATILE = common dso_local global i32 0, align 4
@TYPE_QUAL_RESTRICT = common dso_local global i32 0, align 4
@cts_none = common dso_local global i64 0, align 8
@csc_none = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quals_from_declspecs(%struct.c_declspecs* %0) #0 {
  %2 = alloca %struct.c_declspecs*, align 8
  %3 = alloca i32, align 4
  store %struct.c_declspecs* %0, %struct.c_declspecs** %2, align 8
  %4 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %5 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %4, i32 0, i32 17
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @TYPE_QUAL_CONST, align 4
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  %13 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %14 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %13, i32 0, i32 16
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @TYPE_QUAL_VOLATILE, align 4
  br label %20

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = or i32 %12, %21
  %23 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %24 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %23, i32 0, i32 15
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @TYPE_QUAL_RESTRICT, align 4
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = or i32 %22, %31
  store i32 %32, i32* %3, align 4
  %33 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %34 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %110, label %37

37:                                               ; preds = %30
  %38 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %39 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %110, label %42

42:                                               ; preds = %37
  %43 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %44 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @cts_none, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %110

48:                                               ; preds = %42
  %49 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %50 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @csc_none, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %110

54:                                               ; preds = %48
  %55 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %56 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %110, label %59

59:                                               ; preds = %54
  %60 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %61 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %110, label %64

64:                                               ; preds = %59
  %65 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %66 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %110, label %69

69:                                               ; preds = %64
  %70 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %71 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %110, label %74

74:                                               ; preds = %69
  %75 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %76 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %110, label %79

79:                                               ; preds = %74
  %80 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %81 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %79
  %85 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %86 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %84
  %90 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %91 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %89
  %95 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %96 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %101 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  %106 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %104, %99, %94, %89, %84, %79, %74, %69, %64, %59, %54, %48, %42, %37, %30
  %111 = phi i1 [ false, %99 ], [ false, %94 ], [ false, %89 ], [ false, %84 ], [ false, %79 ], [ false, %74 ], [ false, %69 ], [ false, %64 ], [ false, %59 ], [ false, %54 ], [ false, %48 ], [ false, %42 ], [ false, %37 ], [ false, %30 ], [ %109, %104 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @gcc_assert(i32 %112)
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
