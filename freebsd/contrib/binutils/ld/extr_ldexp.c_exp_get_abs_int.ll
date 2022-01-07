; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldexp.c_exp_get_abs_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldexp.c_exp_get_abs_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@expld = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@lang_mark_phase_enum = common dso_local global i64 0, align 8
@lineno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%F%S: nonconstant expression for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exp_get_abs_int(%struct.TYPE_11__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %3
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = call i32 @exp_fold_tree_no_dot(%struct.TYPE_11__* %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @expld, i32 0, i32 1, i32 2), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @expld, i32 0, i32 1, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @expld, i32 0, i32 1, i32 0), align 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @expld, i32 0, i32 1, i32 0), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @expld, i32 0, i32 1, i32 0), align 8
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %10
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @expld, i32 0, i32 0), align 8
  %29 = load i64, i64* @lang_mark_phase_enum, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* @lineno, align 4
  %36 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @einfo(i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %31, %27, %24
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @exp_fold_tree_no_dot(%struct.TYPE_11__*) #1

declare dso_local i32 @einfo(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
