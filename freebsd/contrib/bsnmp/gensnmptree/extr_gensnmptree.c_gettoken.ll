; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_gettoken.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_gettoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EOF \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"NUM(%lu) \00", align 1
@val = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"STR(%s) \00", align 1
@str = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"ACCESS(%lu) \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"TYPE(%lu) \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ENUM \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"BITS \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"TYPEDEF \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"DEFTYPE(%s,%lu) \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"INCLUDE \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"FILENAME \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"'%c' \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gettoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gettoken() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @gettoken_internal()
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @debug, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %73

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  switch i32 %6, label %46 [
    i32 134, label %7
    i32 131, label %10
    i32 130, label %14
    i32 138, label %18
    i32 129, label %22
    i32 135, label %26
    i32 137, label %29
    i32 128, label %32
    i32 136, label %35
    i32 132, label %40
    i32 133, label %43
  ]

7:                                                ; preds = %5
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %72

10:                                               ; preds = %5
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* @val, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %72

14:                                               ; preds = %5
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @str, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  br label %72

18:                                               ; preds = %5
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* @val, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  br label %72

22:                                               ; preds = %5
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* @val, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  br label %72

26:                                               ; preds = %5
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %72

29:                                               ; preds = %5
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %72

32:                                               ; preds = %5
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %72

35:                                               ; preds = %5
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** @str, align 8
  %38 = load i32, i32* @val, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %37, i32 %38)
  br label %72

40:                                               ; preds = %5
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %72

43:                                               ; preds = %5
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %72

46:                                               ; preds = %5
  %47 = load i32, i32* %1, align 4
  %48 = icmp slt i32 %47, 134
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @isprint(i32 %50) #4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %55)
  br label %68

57:                                               ; preds = %49
  %58 = load i32, i32* %1, align 4
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @stderr, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %60
  br label %68

68:                                               ; preds = %67, %53
  br label %71

69:                                               ; preds = %46
  %70 = call i32 (...) @abort() #5
  unreachable

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71, %43, %40, %35, %32, %29, %26, %22, %18, %14, %10, %7
  br label %73

73:                                               ; preds = %72, %0
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

declare dso_local i32 @gettoken_internal(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
