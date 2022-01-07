; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_declspecs_add_qual.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_declspecs_add_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_declspecs = type { i32, i32, i32, i32, i32 }

@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@flag_isoc99 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"duplicate %qE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.c_declspecs* @declspecs_add_qual(%struct.c_declspecs* %0, i32 %1) #0 {
  %3 = alloca %struct.c_declspecs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.c_declspecs* %0, %struct.c_declspecs** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %8 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %10 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @IDENTIFIER_NODE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @C_IS_RESERVED_WORD(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @C_RID_CODE(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %44 [
    i32 130, label %26
    i32 128, label %32
    i32 129, label %38
  ]

26:                                               ; preds = %19
  %27 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %28 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %31 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %30, i32 0, i32 2
  store i32 1, i32* %31, align 4
  br label %46

32:                                               ; preds = %19
  %33 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %34 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %37 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  br label %46

38:                                               ; preds = %19
  %39 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %40 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %43 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %42, i32 0, i32 4
  store i32 1, i32* %43, align 4
  br label %46

44:                                               ; preds = %19
  %45 = call i32 (...) @gcc_unreachable()
  br label %46

46:                                               ; preds = %44, %38, %32, %26
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i64, i64* @pedantic, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @flag_isoc99, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @pedwarn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %52, %49, %46
  %59 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  ret %struct.c_declspecs* %59
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @C_IS_RESERVED_WORD(i32) #1

declare dso_local i32 @C_RID_CODE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @pedwarn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
