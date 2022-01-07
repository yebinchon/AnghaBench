; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_cpu_unit_reservation_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_cpu_unit_reservation_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"int\0A%s (%s %s, int %s)\0A\00", align 1
@CPU_UNIT_RESERVATION_P_FUNC_NAME = common dso_local global i8* null, align 8
@STATE_TYPE_NAME = common dso_local global i8* null, align 8
@STATE_NAME = common dso_local global i8* null, align 8
@CPU_CODE_PARAMETER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"{\0A  gcc_assert (%s >= 0 && %s < %d);\0A\00", align 1
@description = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"  if ((\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" [((struct %s *) %s)->\00", align 1
@CHIP_NAME = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c" * %d + %s / 8] >> (%s %% 8)) & 1)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"    return 1;\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"  return 0;\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_cpu_unit_reservation_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_cpu_unit_reservation_p() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i32, i32* @output_file, align 4
  %3 = load i8*, i8** @CPU_UNIT_RESERVATION_P_FUNC_NAME, align 8
  %4 = load i8*, i8** @STATE_TYPE_NAME, align 8
  %5 = load i8*, i8** @STATE_NAME, align 8
  %6 = load i8*, i8** @CPU_CODE_PARAMETER_NAME, align 8
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %3, i8* %4, i8* %5, i8* %6)
  %8 = load i32, i32* @output_file, align 4
  %9 = load i8*, i8** @CPU_CODE_PARAMETER_NAME, align 8
  %10 = load i8*, i8** @CPU_CODE_PARAMETER_NAME, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %9, i8* %10, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %1, align 8
  br label %23

23:                                               ; preds = %50, %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load i32, i32* @output_file, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @output_file, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = call i32 @output_reserved_units_table_name(i32 %29, %struct.TYPE_5__* %30)
  %32 = load i32, i32* @output_file, align 4
  %33 = load i8*, i8** @CHIP_NAME, align 8
  %34 = load i8*, i8** @STATE_NAME, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %33, i8* %34)
  %36 = load i32, i32* @output_file, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %38 = call i32 @output_chip_member_name(i32 %36, %struct.TYPE_5__* %37)
  %39 = load i32, i32* @output_file, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 7
  %44 = sdiv i32 %43, 8
  %45 = load i8*, i8** @CPU_CODE_PARAMETER_NAME, align 8
  %46 = load i8*, i8** @CPU_CODE_PARAMETER_NAME, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %44, i8* %45, i8* %46)
  %48 = load i32, i32* @output_file, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %26
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %1, align 8
  br label %23

54:                                               ; preds = %23
  br label %55

55:                                               ; preds = %54, %0
  %56 = load i32, i32* @output_file, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @output_reserved_units_table_name(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @output_chip_member_name(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
