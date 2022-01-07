; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_string_to_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_string_to_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@br_md5_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@br_sha1_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@br_sha224_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@br_sha256_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@br_sha384_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@br_sha512_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @string_to_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_to_hash(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %48, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 48
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 57
  br i1 %24, label %37, label %25

25:                                               ; preds = %22, %14
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 65
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 90
  br i1 %30, label %37, label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 97
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 122
  br i1 %36, label %37, label %47

37:                                               ; preds = %34, %28, %22
  %38 = load i32, i32* %7, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %40
  store i8 %39, i8* %42, align 1
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 20
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %90

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %34, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %8

51:                                               ; preds = %8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %55 = call i64 @eqstring(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @br_md5_ID, align 4
  store i32 %58, i32* %2, align 4
  br label %90

59:                                               ; preds = %51
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %61 = call i64 @eqstring(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @br_sha1_ID, align 4
  store i32 %64, i32* %2, align 4
  br label %90

65:                                               ; preds = %59
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %67 = call i64 @eqstring(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @br_sha224_ID, align 4
  store i32 %70, i32* %2, align 4
  br label %90

71:                                               ; preds = %65
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %73 = call i64 @eqstring(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @br_sha256_ID, align 4
  store i32 %76, i32* %2, align 4
  br label %90

77:                                               ; preds = %71
  %78 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %79 = call i64 @eqstring(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @br_sha384_ID, align 4
  store i32 %82, i32* %2, align 4
  br label %90

83:                                               ; preds = %77
  %84 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %85 = call i64 @eqstring(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @br_sha512_ID, align 4
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %83
  store i32 -1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %87, %81, %75, %69, %63, %57, %45
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @eqstring(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
