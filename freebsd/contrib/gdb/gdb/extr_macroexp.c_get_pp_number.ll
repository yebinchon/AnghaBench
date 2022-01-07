; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_get_pp_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_get_pp_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_buffer = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"eEpP.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macro_buffer*, i8*, i8*)* @get_pp_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pp_number(%struct.macro_buffer* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.macro_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.macro_buffer* %0, %struct.macro_buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %12, label %79

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @is_digit(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 46
  br i1 %21, label %22, label %79

22:                                               ; preds = %17, %12
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %73, %22
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @is_digit(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @is_identifier_nondigit(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33, %28
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  br label %73

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ule i8* %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 43
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 45
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %56
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %70, i8** %6, align 8
  br label %72

71:                                               ; preds = %62, %51, %46
  br label %74

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %43
  br label %24

74:                                               ; preds = %71, %24
  %75 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @set_token(%struct.macro_buffer* %75, i8* %76, i8* %77)
  store i32 1, i32* %4, align 4
  br label %80

79:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @is_digit(i8 signext) #1

declare dso_local i64 @is_identifier_nondigit(i8 signext) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @set_token(%struct.macro_buffer*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
