; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-ebb.c_earliest_block_with_similiar_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-ebb.c_earliest_block_with_similiar_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@VOIDmode = common dso_local global i64 0, align 8
@PFREE_CANDIDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*, i64)* @earliest_block_with_similiar_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @earliest_block_with_similiar_load(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @LOG_LINKS(i64 %12)
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %84, %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @XEXP(i64 %18, i32 0)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @GET_MODE(i64 %20)
  %22 = load i64, i64* @VOIDmode, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %17
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @INSN_DEPEND(i64 %25)
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %79, %24
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %27
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @XEXP(i64 %31, i32 0)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call %struct.TYPE_5__* @BLOCK_FOR_INSN(i64 %33)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %11, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @GET_MODE(i64 %35)
  %37 = load i64, i64* @VOIDmode, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %30
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %79

51:                                               ; preds = %42, %39
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @haifa_classify_insn(i64 %52)
  %54 = load i64, i64* @PFREE_CANDIDATE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %79

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %6, align 8
  br label %59

59:                                               ; preds = %68, %57
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = icmp eq %struct.TYPE_5__* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %72

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %6, align 8
  br label %59

72:                                               ; preds = %66, %59
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %7, align 8
  br label %77

77:                                               ; preds = %75, %72
  br label %78

78:                                               ; preds = %77, %30
  br label %79

79:                                               ; preds = %78, %56, %50
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @XEXP(i64 %80, i32 1)
  store i64 %81, i64* %9, align 8
  br label %27

82:                                               ; preds = %27
  br label %83

83:                                               ; preds = %82, %17
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @XEXP(i64 %85, i32 1)
  store i64 %86, i64* %5, align 8
  br label %14

87:                                               ; preds = %14
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %88
}

declare dso_local i64 @LOG_LINKS(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @INSN_DEPEND(i64) #1

declare dso_local %struct.TYPE_5__* @BLOCK_FOR_INSN(i64) #1

declare dso_local i64 @haifa_classify_insn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
