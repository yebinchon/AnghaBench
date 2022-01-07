; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_average_num_loop_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_average_num_loop_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@BB_FREQ_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @average_num_loop_insns(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca %struct.TYPE_8__**, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.loop*, %struct.loop** %2, align 8
  %11 = call %struct.TYPE_8__** @get_loop_body(%struct.loop* %10)
  store %struct.TYPE_8__** %11, %struct.TYPE_8__*** %3, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %73, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.loop*, %struct.loop** %2, align 8
  %15 = getelementptr inbounds %struct.loop, %struct.loop* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %12
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %19, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %4, align 8
  store i32 1, i32* %6, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = call i64 @BB_HEAD(%struct.TYPE_8__* %24)
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %39, %18
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = call i64 @BB_END(%struct.TYPE_8__* %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @INSN_P(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @NEXT_INSN(i64 %40)
  store i64 %41, i64* %9, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.loop*, %struct.loop** %2, align 8
  %44 = getelementptr inbounds %struct.loop, %struct.loop* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @BB_FREQ_MAX, align 4
  %51 = zext i32 %50 to i64
  br label %65

52:                                               ; preds = %42
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BB_FREQ_MAX, align 4
  %57 = mul i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = load %struct.loop*, %struct.loop** %2, align 8
  %60 = getelementptr inbounds %struct.loop, %struct.loop* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sdiv i64 %58, %63
  br label %65

65:                                               ; preds = %52, %49
  %66 = phi i64 [ %51, %49 ], [ %64, %52 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = mul i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %12

76:                                               ; preds = %12
  %77 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %78 = call i32 @free(%struct.TYPE_8__** %77)
  %79 = load i32, i32* @BB_FREQ_MAX, align 4
  %80 = load i32, i32* %7, align 4
  %81 = udiv i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  store i32 1, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %76
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_8__** @get_loop_body(%struct.loop*) #1

declare dso_local i64 @BB_HEAD(%struct.TYPE_8__*) #1

declare dso_local i64 @BB_END(%struct.TYPE_8__*) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @free(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
