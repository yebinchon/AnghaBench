; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_dump_regclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_dump_regclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@max_regno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"  Register %i costs:\00", align 1
@N_REG_CLASSES = common dso_local global i64 0, align 8
@contains_reg_of_mode = common dso_local global i64** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" %s:%i\00", align 1
@reg_class_names = common dso_local global i8** null, align 8
@costs = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c" MEM:%i\0A\00", align 1
@forbidden_inc_dec_class = common dso_local global i32* null, align 8
@in_inc_dec = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dump_regclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_regclass(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %66, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @max_regno, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %69

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @REG_N_REFS(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %53, %14
  %19 = load i32, i32* %4, align 4
  %20 = load i64, i64* @N_REG_CLASSES, align 8
  %21 = trunc i64 %20 to i32
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load i64**, i64*** @contains_reg_of_mode, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64*, i64** %24, i64 %26
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @PSEUDO_REGNO_MODE(i32 %29)
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %23
  %35 = load i32*, i32** %2, align 8
  %36 = load i8**, i8*** @reg_class_names, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @costs, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %50)
  br label %52

52:                                               ; preds = %34, %23
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load i32*, i32** %2, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @costs, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %56, %10
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %6

69:                                               ; preds = %6
  ret void
}

declare dso_local i64 @REG_N_REFS(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @PSEUDO_REGNO_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
