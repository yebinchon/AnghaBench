; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_N_constraint_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_N_constraint_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QImode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_N_constraint_str(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 120
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %10, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = sub nsw i32 %21, 48
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %17, %16
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %34 [
    i32 81, label %28
    i32 72, label %30
    i32 83, label %32
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* @QImode, align 4
  store i32 %29, i32* %7, align 4
  br label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @HImode, align 4
  store i32 %31, i32* %7, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @SImode, align 4
  store i32 %33, i32* %7, align 4
  br label %35

34:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %81

35:                                               ; preds = %32, %30, %28
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %46 [
    i32 72, label %40
    i32 83, label %42
    i32 68, label %44
  ]

40:                                               ; preds = %35
  %41 = load i32, i32* @HImode, align 4
  store i32 %41, i32* %6, align 4
  br label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @SImode, align 4
  store i32 %43, i32* %6, align 4
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @DImode, align 4
  store i32 %45, i32* %6, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %81

47:                                               ; preds = %44, %42, %40
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %54 [
    i32 48, label %52
    i32 70, label %53
  ]

52:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %55

53:                                               ; preds = %47
  store i32 -1, i32* %8, align 4
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %81

55:                                               ; preds = %53, %52
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @GET_MODE_SIZE(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @GET_MODE_SIZE(i32 %58)
  %60 = icmp sle i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %81

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @GEN_INT(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @s390_single_part(i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %81

72:                                               ; preds = %62
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %81

80:                                               ; preds = %75, %72
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %79, %71, %61, %54, %46, %34
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @s390_single_part(i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
