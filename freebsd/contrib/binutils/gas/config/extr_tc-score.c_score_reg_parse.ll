; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_score_reg_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_score_reg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_control = type { i32 }
%struct.reg_entry = type { i32 }

@FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.hash_control*)* @score_reg_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_reg_parse(i8** %0, %struct.hash_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.hash_control*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.reg_entry*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.hash_control* %1, %struct.hash_control** %5, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @ISALPHA(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @is_name_beginner(i8 signext %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %2
  %23 = load i64, i64* @FAIL, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  %28 = load i8, i8* %26, align 1
  store i8 %28, i8* %7, align 1
  br label %29

29:                                               ; preds = %43, %25
  %30 = load i8, i8* %7, align 1
  %31 = call i64 @ISALPHA(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i8, i8* %7, align 1
  %35 = call i64 @ISDIGIT(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 95
  br label %41

41:                                               ; preds = %37, %33, %29
  %42 = phi i1 [ true, %33 ], [ true, %29 ], [ %40, %37 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  %46 = load i8, i8* %44, align 1
  store i8 %46, i8* %7, align 1
  br label %29

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %8, align 8
  store i8 0, i8* %49, align 1
  %50 = load %struct.hash_control*, %struct.hash_control** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @hash_find(%struct.hash_control* %50, i8* %51)
  %53 = inttoptr i64 %52 to %struct.reg_entry*
  store %struct.reg_entry* %53, %struct.reg_entry** %9, align 8
  %54 = load i8, i8* %7, align 1
  %55 = load i8*, i8** %8, align 8
  store i8 %54, i8* %55, align 1
  %56 = load %struct.reg_entry*, %struct.reg_entry** %9, align 8
  %57 = icmp ne %struct.reg_entry* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load i8*, i8** %8, align 8
  %60 = load i8**, i8*** %4, align 8
  store i8* %59, i8** %60, align 8
  %61 = load %struct.reg_entry*, %struct.reg_entry** %9, align 8
  %62 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %47
  %65 = load i64, i64* @FAIL, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %58, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @ISALPHA(i8 signext) #1

declare dso_local i32 @is_name_beginner(i8 signext) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i64 @hash_find(%struct.hash_control*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
