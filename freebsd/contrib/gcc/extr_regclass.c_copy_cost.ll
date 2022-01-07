; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_copy_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_copy_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i32, i32, i32, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@NO_REGS = common dso_local global i32 0, align 4
@SCRATCH = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@move_cost = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.TYPE_5__*)* @copy_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_cost(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %14 = load i32, i32* @NO_REGS, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = load i64, i64* @SCRATCH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %104

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @PREFERRED_RELOAD_CLASS(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load i32 (i32, i32, i32, i32, %struct.TYPE_5__*)*, i32 (i32, i32, i32, i32, %struct.TYPE_5__*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @targetm, i32 0, i32 0), align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 %27(i32 %28, i32 %29, i32 %30, i32 %31, %struct.TYPE_5__* %13)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @NO_REGS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %20
  %37 = load i32***, i32**** @move_cost, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32**, i32*** %37, i64 %39
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @copy_cost(i32 %53, i32 %54, i32 %55, i32 %56, %struct.TYPE_5__* %13)
  %58 = add nsw i32 %52, %57
  store i32 %58, i32* %6, align 4
  br label %104

59:                                               ; preds = %20
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @MEM_P(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @NO_REGS, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63, %59
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @MEMORY_MOVE_COST(i32 %70, i32 %71, i32 %72)
  %74 = add nsw i32 %69, %73
  store i32 %74, i32* %6, align 4
  br label %104

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @REG_P(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32***, i32**** @move_cost, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32**, i32*** %82, i64 %84
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @REGNO(i32 %87)
  %89 = call i64 @REGNO_REG_CLASS(i32 %88)
  %90 = trunc i64 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %86, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %81, %97
  store i32 %98, i32* %6, align 4
  br label %104

99:                                               ; preds = %75
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @COSTS_N_INSNS(i32 1)
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %99, %79, %67, %36, %19
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PREFERRED_RELOAD_CLASS(i32, i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @MEMORY_MOVE_COST(i32, i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO_REG_CLASS(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @COSTS_N_INSNS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
