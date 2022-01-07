; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_find_rightmost_formals_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_find_rightmost_formals_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clean_read_ptr = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @find_rightmost_formals_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_rightmost_formals_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %3, align 8
  br label %7

7:                                                ; preds = %13, %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  br label %7

16:                                               ; preds = %7
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %16, %64
  br label %20

20:                                               ; preds = %51, %19
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 41
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @ISSPACE(i8 zeroext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %36, %30
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @ISSPACE(i8 zeroext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** @clean_read_ptr, align 8
  %40 = icmp ugt i8* %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @check_source(i32 %41, i8* null)
  br label %31

43:                                               ; preds = %31
  br label %51

44:                                               ; preds = %25
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %3, align 8
  %47 = load i8*, i8** @clean_read_ptr, align 8
  %48 = icmp ugt i8* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @check_source(i32 %49, i8* null)
  br label %51

51:                                               ; preds = %44, %43
  br label %20

52:                                               ; preds = %20
  %53 = load i8*, i8** %3, align 8
  %54 = call i8* @forward_to_next_token_char(i8* %53)
  store i8* %54, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %4, align 1
  %56 = load i8, i8* %4, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 123
  br i1 %58, label %63, label %59

59:                                               ; preds = %52
  %60 = load i8, i8* %4, align 1
  %61 = call i64 @ISALPHA(i8 zeroext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %52
  br label %71

64:                                               ; preds = %59
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %66, i8** %3, align 8
  %67 = load i8*, i8** @clean_read_ptr, align 8
  %68 = icmp ugt i8* %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @check_source(i32 %69, i8* null)
  br label %19

71:                                               ; preds = %63
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local i64 @ISSPACE(i8 zeroext) #1

declare dso_local i32 @check_source(i32, i8*) #1

declare dso_local i8* @forward_to_next_token_char(i8*) #1

declare dso_local i64 @ISALPHA(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
