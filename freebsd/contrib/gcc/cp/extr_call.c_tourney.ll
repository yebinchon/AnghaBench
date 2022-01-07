; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_tourney.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_tourney.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { %struct.z_candidate* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z_candidate* (%struct.z_candidate*)* @tourney to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z_candidate* @tourney(%struct.z_candidate* %0) #0 {
  %2 = alloca %struct.z_candidate*, align 8
  %3 = alloca %struct.z_candidate*, align 8
  %4 = alloca %struct.z_candidate*, align 8
  %5 = alloca %struct.z_candidate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.z_candidate* %0, %struct.z_candidate** %3, align 8
  %8 = load %struct.z_candidate*, %struct.z_candidate** %3, align 8
  store %struct.z_candidate* %8, %struct.z_candidate** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %10 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %9, i32 0, i32 0
  %11 = load %struct.z_candidate*, %struct.z_candidate** %10, align 8
  store %struct.z_candidate* %11, %struct.z_candidate** %5, align 8
  br label %12

12:                                               ; preds = %42, %1
  %13 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %14 = icmp ne %struct.z_candidate* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %17 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %18 = call i32 @joust(%struct.z_candidate* %16, %struct.z_candidate* %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %23 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %22, i32 0, i32 0
  %24 = load %struct.z_candidate*, %struct.z_candidate** %23, align 8
  store %struct.z_candidate* %24, %struct.z_candidate** %5, align 8
  br label %42

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %30 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %29, i32 0, i32 0
  %31 = load %struct.z_candidate*, %struct.z_candidate** %30, align 8
  store %struct.z_candidate* %31, %struct.z_candidate** %4, align 8
  %32 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %33 = icmp eq %struct.z_candidate* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store %struct.z_candidate* null, %struct.z_candidate** %2, align 8
  br label %77

35:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %38

36:                                               ; preds = %25
  %37 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  store %struct.z_candidate* %37, %struct.z_candidate** %4, align 8
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %40 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %39, i32 0, i32 0
  %41 = load %struct.z_candidate*, %struct.z_candidate** %40, align 8
  store %struct.z_candidate* %41, %struct.z_candidate** %5, align 8
  br label %42

42:                                               ; preds = %38, %21
  br label %12

43:                                               ; preds = %12
  %44 = load %struct.z_candidate*, %struct.z_candidate** %3, align 8
  store %struct.z_candidate* %44, %struct.z_candidate** %5, align 8
  br label %45

45:                                               ; preds = %71, %43
  %46 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %47 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %48 = icmp ne %struct.z_candidate* %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %54 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %53, i32 0, i32 0
  %55 = load %struct.z_candidate*, %struct.z_candidate** %54, align 8
  %56 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %57 = icmp eq %struct.z_candidate* %55, %56
  br label %58

58:                                               ; preds = %52, %49
  %59 = phi i1 [ false, %49 ], [ %57, %52 ]
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %58, %45
  %62 = phi i1 [ false, %45 ], [ %60, %58 ]
  br i1 %62, label %63, label %75

63:                                               ; preds = %61
  %64 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %65 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %66 = call i32 @joust(%struct.z_candidate* %64, %struct.z_candidate* %65, i32 0)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store %struct.z_candidate* null, %struct.z_candidate** %2, align 8
  br label %77

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %73 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %72, i32 0, i32 0
  %74 = load %struct.z_candidate*, %struct.z_candidate** %73, align 8
  store %struct.z_candidate* %74, %struct.z_candidate** %5, align 8
  br label %45

75:                                               ; preds = %61
  %76 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  store %struct.z_candidate* %76, %struct.z_candidate** %2, align 8
  br label %77

77:                                               ; preds = %75, %69, %34
  %78 = load %struct.z_candidate*, %struct.z_candidate** %2, align 8
  ret %struct.z_candidate* %78
}

declare dso_local i32 @joust(%struct.z_candidate*, %struct.z_candidate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
