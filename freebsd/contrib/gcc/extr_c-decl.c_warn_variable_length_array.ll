; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_warn_variable_length_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_warn_variable_length_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_isoc99 = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@warn_vla = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"ISO C90 forbids array %qs whose size can%'t be evaluated\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"ISO C90 forbids array whose size can%'t be evaluated\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ISO C90 forbids variable length array %qs\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ISO C90 forbids variable length array\00", align 1
@OPT_Wvla = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"the size of array %qs can%'t be evaluated\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"the size of array can %'t be evaluated\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"variable length array %qs is used\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"variable length array is used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @warn_variable_length_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_variable_length_array(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @flag_isoc99, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @pedantic, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i64, i64* @warn_vla, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %12, %9, %2
  %16 = phi i1 [ false, %9 ], [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @TREE_CONSTANT(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %33

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  br label %43

34:                                               ; preds = %22
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %42

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %33
  br label %74

44:                                               ; preds = %15
  %45 = load i64, i64* @warn_vla, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i8*, i8** %3, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @OPT_Wvla, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 (i32, i8*, ...) @warning(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @OPT_Wvla, align 4
  %59 = call i32 (i32, i8*, ...) @warning(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %53
  br label %72

61:                                               ; preds = %47
  %62 = load i8*, i8** %3, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @OPT_Wvla, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 (i32, i8*, ...) @warning(i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %66)
  br label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @OPT_Wvla, align 4
  %70 = call i32 (i32, i8*, ...) @warning(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %64
  br label %72

72:                                               ; preds = %71, %60
  br label %73

73:                                               ; preds = %72, %44
  br label %74

74:                                               ; preds = %73, %43
  ret void
}

declare dso_local i32 @TREE_CONSTANT(i32) #1

declare dso_local i32 @pedwarn(i8*, ...) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
