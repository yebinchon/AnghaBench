; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-aux-info.c_affix_data_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-aux-info.c_affix_data_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@data_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @affix_data_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @affix_data_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @ASTRDUP(i8* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %22, %15, %1
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 9
  store i8* %17, i8** %5, align 8
  br label %11

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 6
  store i8* %24, i8** %5, align 8
  br label %11

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* @data_type, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* null)
  store i8* %35, i8** %2, align 8
  br label %51

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %7, align 1
  %39 = load i8*, i8** %5, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @data_type, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %40, i8* %43, i8* null)
  store i8* %44, i8** %6, align 8
  %45 = load i8, i8* %7, align 1
  %46 = load i8*, i8** %5, align 8
  store i8 %45, i8* %46, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @reconcat(i8* %47, i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %49, i32* null)
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %36, %30
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i8* @ASTRDUP(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @concat(i8*, i8*, i8*, ...) #1

declare dso_local i8* @reconcat(i8*, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
