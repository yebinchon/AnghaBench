; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pragma.c_push_visibility.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pragma.c_push_visibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@visibility = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@visstack = common dso_local global i32 0, align 4
@default_visibility = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@VISIBILITY_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@VISIBILITY_INTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@VISIBILITY_HIDDEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@VISIBILITY_PROTECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [82 x i8] c"#pragma GCC visibility push() must specify default, internal, hidden or protected\00", align 1
@visibility_options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_visibility(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @visibility, align 4
  %4 = load i32, i32* @heap, align 4
  %5 = load i32, i32* @visstack, align 4
  %6 = load i32, i32* @default_visibility, align 4
  %7 = call i32 @VEC_safe_push(i32 %3, i32 %4, i32 %5, i32 %6)
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @VISIBILITY_DEFAULT, align 4
  store i32 %12, i32* @default_visibility, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @VISIBILITY_INTERNAL, align 4
  store i32 %18, i32* @default_visibility, align 4
  br label %35

19:                                               ; preds = %13
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @VISIBILITY_HIDDEN, align 4
  store i32 %24, i32* @default_visibility, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @VISIBILITY_PROTECTED, align 4
  store i32 %30, i32* @default_visibility, align 4
  br label %33

31:                                               ; preds = %25
  %32 = call i32 @GCC_BAD(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34, %17
  br label %36

36:                                               ; preds = %35, %11
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @visibility_options, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @VEC_safe_push(i32, i32, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @GCC_BAD(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
