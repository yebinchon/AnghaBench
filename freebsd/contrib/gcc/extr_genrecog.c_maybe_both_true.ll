; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_maybe_both_true.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_maybe_both_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision = type { %struct.decision*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.decision* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decision*, %struct.decision*, i32)* @maybe_both_true to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_both_true(%struct.decision* %0, %struct.decision* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.decision*, align 8
  %6 = alloca %struct.decision*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.decision*, align 8
  %9 = alloca %struct.decision*, align 8
  %10 = alloca i32, align 4
  store %struct.decision* %0, %struct.decision** %5, align 8
  store %struct.decision* %1, %struct.decision** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.decision*, %struct.decision** %5, align 8
  %12 = getelementptr inbounds %struct.decision, %struct.decision* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.decision*, %struct.decision** %6, align 8
  %15 = getelementptr inbounds %struct.decision, %struct.decision* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcmp(i32 %13, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @gcc_assert(i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.decision*, %struct.decision** %5, align 8
  store %struct.decision* %29, %struct.decision** %8, align 8
  %30 = load %struct.decision*, %struct.decision** %6, align 8
  store %struct.decision* %30, %struct.decision** %5, align 8
  %31 = load %struct.decision*, %struct.decision** %8, align 8
  store %struct.decision* %31, %struct.decision** %6, align 8
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.decision*, %struct.decision** %5, align 8
  %34 = getelementptr inbounds %struct.decision, %struct.decision* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.decision*, %struct.decision** %35, align 8
  %37 = icmp eq %struct.decision* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %120

39:                                               ; preds = %32
  %40 = load %struct.decision*, %struct.decision** %5, align 8
  %41 = getelementptr inbounds %struct.decision, %struct.decision* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.decision*, %struct.decision** %42, align 8
  store %struct.decision* %43, %struct.decision** %8, align 8
  br label %44

44:                                               ; preds = %54, %39
  %45 = load %struct.decision*, %struct.decision** %8, align 8
  %46 = icmp ne %struct.decision* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.decision*, %struct.decision** %8, align 8
  %49 = load %struct.decision*, %struct.decision** %6, align 8
  %50 = call i32 @maybe_both_true(%struct.decision* %48, %struct.decision* %49, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %120

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.decision*, %struct.decision** %8, align 8
  %56 = getelementptr inbounds %struct.decision, %struct.decision* %55, i32 0, i32 0
  %57 = load %struct.decision*, %struct.decision** %56, align 8
  store %struct.decision* %57, %struct.decision** %8, align 8
  br label %44

58:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %120

59:                                               ; preds = %3
  %60 = load %struct.decision*, %struct.decision** %5, align 8
  %61 = getelementptr inbounds %struct.decision, %struct.decision* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.decision*, %struct.decision** %6, align 8
  %64 = getelementptr inbounds %struct.decision, %struct.decision* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @maybe_both_true_1(i32 %62, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %120

71:                                               ; preds = %59
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = load %struct.decision*, %struct.decision** %5, align 8
  %76 = getelementptr inbounds %struct.decision, %struct.decision* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.decision*, %struct.decision** %77, align 8
  %79 = icmp eq %struct.decision* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.decision*, %struct.decision** %6, align 8
  %82 = getelementptr inbounds %struct.decision, %struct.decision* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.decision*, %struct.decision** %83, align 8
  %85 = icmp eq %struct.decision* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %74, %71
  store i32 1, i32* %4, align 4
  br label %120

87:                                               ; preds = %80
  %88 = load %struct.decision*, %struct.decision** %5, align 8
  %89 = getelementptr inbounds %struct.decision, %struct.decision* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct.decision*, %struct.decision** %90, align 8
  store %struct.decision* %91, %struct.decision** %8, align 8
  br label %92

92:                                               ; preds = %115, %87
  %93 = load %struct.decision*, %struct.decision** %8, align 8
  %94 = icmp ne %struct.decision* %93, null
  br i1 %94, label %95, label %119

95:                                               ; preds = %92
  %96 = load %struct.decision*, %struct.decision** %6, align 8
  %97 = getelementptr inbounds %struct.decision, %struct.decision* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load %struct.decision*, %struct.decision** %98, align 8
  store %struct.decision* %99, %struct.decision** %9, align 8
  br label %100

100:                                              ; preds = %110, %95
  %101 = load %struct.decision*, %struct.decision** %9, align 8
  %102 = icmp ne %struct.decision* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load %struct.decision*, %struct.decision** %8, align 8
  %105 = load %struct.decision*, %struct.decision** %9, align 8
  %106 = call i32 @maybe_both_true(%struct.decision* %104, %struct.decision* %105, i32 0)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 1, i32* %4, align 4
  br label %120

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.decision*, %struct.decision** %9, align 8
  %112 = getelementptr inbounds %struct.decision, %struct.decision* %111, i32 0, i32 0
  %113 = load %struct.decision*, %struct.decision** %112, align 8
  store %struct.decision* %113, %struct.decision** %9, align 8
  br label %100

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.decision*, %struct.decision** %8, align 8
  %117 = getelementptr inbounds %struct.decision, %struct.decision* %116, i32 0, i32 0
  %118 = load %struct.decision*, %struct.decision** %117, align 8
  store %struct.decision* %118, %struct.decision** %8, align 8
  br label %92

119:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %108, %86, %69, %58, %52, %38
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @maybe_both_true_1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
