; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_decl_assembler_name_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_decl_assembler_name_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@user_label_prefix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @decl_assembler_name_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decl_assembler_name_equal(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @DECL_ASSEMBLER_NAME(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = call i8* @IDENTIFIER_POINTER(i64 %16)
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 42
  br i1 %21, label %22, label %50

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @IDENTIFIER_POINTER(i64 %23)
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %7, align 8
  %26 = load i32, i32* @user_label_prefix, align 4
  %27 = call i64 @strlen(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %43

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @user_label_prefix, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @strncmp(i8* %32, i32 %33, i64 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %7, align 8
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %51

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i8* @IDENTIFIER_POINTER(i64 %45)
  %47 = call i64 @strcmp(i8* %44, i8* %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %43, %41, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @DECL_ASSEMBLER_NAME(i64) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
