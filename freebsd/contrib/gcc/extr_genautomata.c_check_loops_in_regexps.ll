; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_check_loops_in_regexps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_check_loops_in_regexps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@description = common dso_local global %struct.TYPE_7__* null, align 8
@dm_reserv = common dso_local global i64 0, align 8
@curr_loop_pass_num = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cycle in definition of reservation `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_loops_in_regexps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_loops_in_regexps() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* %2, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @description, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @description, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %12, i64 %14
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %1, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @dm_reserv, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %9
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = call %struct.TYPE_8__* @DECL_RESERV(%struct.TYPE_6__* %23)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %9
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %3

30:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %76, %30
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @description, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @description, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %1, align 8
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* @curr_loop_pass_num, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @dm_reserv, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %37
  %52 = load i32, i32* @curr_loop_pass_num, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %54 = call %struct.TYPE_8__* @DECL_RESERV(%struct.TYPE_6__* %53)
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %57 = call %struct.TYPE_8__* @DECL_RESERV(%struct.TYPE_6__* %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %61 = call i64 @loop_in_regexp(i32 %59, %struct.TYPE_6__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %51
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %65 = call %struct.TYPE_8__* @DECL_RESERV(%struct.TYPE_6__* %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gcc_assert(i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %70 = call %struct.TYPE_8__* @DECL_RESERV(%struct.TYPE_6__* %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %63, %51
  br label %75

75:                                               ; preds = %74, %37
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %2, align 4
  br label %31

79:                                               ; preds = %31
  ret void
}

declare dso_local %struct.TYPE_8__* @DECL_RESERV(%struct.TYPE_6__*) #1

declare dso_local i64 @loop_in_regexp(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
