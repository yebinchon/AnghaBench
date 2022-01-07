; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_get_interval_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_get_interval_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"interval cannot be zero\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i64*, i64*)* @get_interval_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_interval_count(i32* %0, i8** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %4
  %20 = load i8**, i8*** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isdigit(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  %31 = load i8**, i8*** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strtoul(i8* %36, i8** %13, i32 10)
  store i64 %37, i64* %9, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %30
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @fprintf(i32 %49, i8* %50)
  %52 = load i32, i32* @B_FALSE, align 4
  %53 = call i32 @usage(i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  br label %58

57:                                               ; preds = %42, %30
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %19, %4
  %60 = load i32, i32* %11, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load i8**, i8*** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isdigit(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  %74 = load i64, i64* %9, align 8
  store i64 %74, i64* %10, align 8
  %75 = load i8**, i8*** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strtoul(i8* %80, i8** %14, i32 10)
  store i64 %81, i64* %9, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %73
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load i64, i64* %9, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* @stderr, align 4
  %94 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %95 = call i32 @fprintf(i32 %93, i8* %94)
  %96 = load i32, i32* @B_FALSE, align 4
  %97 = call i32 @usage(i32 %96)
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %11, align 4
  br label %102

101:                                              ; preds = %86, %73
  store i64 0, i64* %9, align 8
  br label %102

102:                                              ; preds = %101, %98
  br label %103

103:                                              ; preds = %102, %62, %59
  %104 = load i64, i64* %9, align 8
  %105 = load i64*, i64** %7, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64*, i64** %8, align 8
  store i64 %106, i64* %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32*, i32** %5, align 8
  store i32 %108, i32* %109, align 4
  ret void
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
