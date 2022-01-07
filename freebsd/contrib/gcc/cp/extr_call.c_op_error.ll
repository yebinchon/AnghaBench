; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_op_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_op_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@MODIFY_EXPR = common dso_local global i32 0, align 4
@assignment_operator_name_info = common dso_local global %struct.TYPE_4__* null, align 8
@operator_name_info = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"%s for ternary %<operator?:%> in %<%E ? %E : %E%>\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s for %<operator%s%> in %<%E%s%>\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s for %<operator[]%> in %<%E[%E]%>\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s for %qs in %<%s %E%>\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s for %<operator%s%> in %<%E %s %E%>\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s for %<operator%s%> in %<%s%E%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*, i8*, i8*)* @op_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_error(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MODIFY_EXPR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @assignment_operator_name_info, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  br label %31

24:                                               ; preds = %6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @operator_name_info, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %13, align 8
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %56 [
    i32 132, label %33
    i32 129, label %39
    i32 130, label %39
    i32 133, label %45
    i32 128, label %50
    i32 131, label %50
  ]

33:                                               ; preds = %31
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 (i8*, i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35, i8* %36, i8* %37)
  br label %73

39:                                               ; preds = %31, %31
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 (i8*, i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %41, i8* %42, i8* %43)
  br label %73

45:                                               ; preds = %31
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 (i8*, i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %47, i8* %48)
  br label %73

50:                                               ; preds = %31, %31
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 (i8*, i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %52, i8* %53, i8* %54)
  br label %73

56:                                               ; preds = %31
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 (i8*, i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %60, i8* %61, i8* %62, i8* %63, i8* %64)
  br label %72

66:                                               ; preds = %56
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 (i8*, i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %67, i8* %68, i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %66, %59
  br label %73

73:                                               ; preds = %72, %50, %45, %39, %33
  ret void
}

declare dso_local i32 @error(i8*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
