; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_get_name_of_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_get_name_of_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"<UNNAMED>\00", align 1
@TYPE_DECL = common dso_local global i64 0, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_name_of_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_name_of_type(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @TYPE_NAME(i64 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @TYPE_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @DECL_NAME(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @DECL_NAME(i64 %20)
  %22 = call i64 @IDENTIFIER_POINTER(i64 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %2, align 8
  br label %35

24:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %35

25:                                               ; preds = %10
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @TREE_CODE(i64 %26)
  %28 = load i64, i64* @IDENTIFIER_NODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @IDENTIFIER_POINTER(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %2, align 8
  br label %35

34:                                               ; preds = %25
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %35

35:                                               ; preds = %34, %30, %24, %19, %9
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @IDENTIFIER_POINTER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
