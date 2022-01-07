; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_enum_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_enum_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"__\00", align 1
@ada_enum_name.result = internal global [16 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"'%c'\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"[\22%02x\22]\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"[\22%04x\22]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ada_enum_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  br label %6

6:                                                ; preds = %1, %22
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strstr(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %12, i8** %3, align 8
  br label %22

13:                                               ; preds = %6
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 46)
  store i8* %15, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %3, align 8
  br label %21

20:                                               ; preds = %13
  br label %23

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %10
  br label %6

23:                                               ; preds = %20
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 81
  br i1 %28, label %29, label %76

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 85
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 87
  br i1 %40, label %41, label %49

41:                                               ; preds = %35, %29
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = call i32 @sscanf(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i8*, i8** %3, align 8
  store i8* %47, i8** %2, align 8
  br label %78

48:                                               ; preds = %41
  br label %51

49:                                               ; preds = %35
  %50 = load i8*, i8** %3, align 8
  store i8* %50, i8** %2, align 8
  br label %78

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @isascii(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @isprint(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ada_enum_name.result, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %75

62:                                               ; preds = %55, %51
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 85
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ada_enum_name.result, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ada_enum_name.result, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %59
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ada_enum_name.result, i64 0, i64 0), i8** %2, align 8
  br label %78

76:                                               ; preds = %23
  %77 = load i8*, i8** %3, align 8
  store i8* %77, i8** %2, align 8
  br label %78

78:                                               ; preds = %76, %75, %49, %46
  %79 = load i8*, i8** %2, align 8
  ret i8* %79
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
