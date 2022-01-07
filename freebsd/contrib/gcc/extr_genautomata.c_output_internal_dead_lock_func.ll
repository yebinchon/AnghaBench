; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_internal_dead_lock_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_internal_dead_lock_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"static int\0A%s (struct %s *ARG_UNUSED (%s))\0A\00", align 1
@INTERNAL_DEAD_LOCK_FUNC_NAME = common dso_local global i8* null, align 8
@CHIP_NAME = common dso_local global i8* null, align 8
@CHIP_PARAMETER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@description = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"  if (\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" [%s->\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"])\0A    return 1/* TRUE */;\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"  return 0/* FALSE */;\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_internal_dead_lock_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_internal_dead_lock_func() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i32, i32* @output_file, align 4
  %3 = load i8*, i8** @INTERNAL_DEAD_LOCK_FUNC_NAME, align 8
  %4 = load i8*, i8** @CHIP_NAME, align 8
  %5 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %3, i8* %4, i8* %5)
  %7 = load i32, i32* @output_file, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %1, align 8
  br label %12

12:                                               ; preds = %35, %0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i32, i32* @output_file, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @output_file, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = call i32 @output_dead_lock_vect_name(i32 %23, %struct.TYPE_5__* %24)
  %26 = load i32, i32* @output_file, align 4
  %27 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @output_file, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = call i32 @output_chip_member_name(i32 %29, %struct.TYPE_5__* %30)
  %32 = load i32, i32* @output_file, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %20, %15
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %1, align 8
  br label %12

39:                                               ; preds = %12
  %40 = load i32, i32* @output_file, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @output_dead_lock_vect_name(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @output_chip_member_name(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
