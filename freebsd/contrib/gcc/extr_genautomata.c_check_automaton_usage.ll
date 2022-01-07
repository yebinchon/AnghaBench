; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_check_automaton_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_check_automaton_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@description = common dso_local global %struct.TYPE_6__* null, align 8
@dm_automaton = common dso_local global i64 0, align 8
@w_flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"automaton `%s' is not used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_automaton_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_automaton_usage() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %45, %0
  %4 = load i32, i32* %2, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %48

9:                                                ; preds = %3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %12, i64 %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %1, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @dm_automaton, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %9
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = call %struct.TYPE_7__* @DECL_AUTOMATON(%struct.TYPE_5__* %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @w_flag, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %33 = call %struct.TYPE_7__* @DECL_AUTOMATON(%struct.TYPE_5__* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %43

37:                                               ; preds = %28
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %39 = call %struct.TYPE_7__* @DECL_AUTOMATON(%struct.TYPE_5__* %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @warning(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %43, %22, %9
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %3

48:                                               ; preds = %3
  ret void
}

declare dso_local %struct.TYPE_7__* @DECL_AUTOMATON(%struct.TYPE_5__*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
