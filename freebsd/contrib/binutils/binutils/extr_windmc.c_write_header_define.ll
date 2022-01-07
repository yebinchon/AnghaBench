; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_write_header_define.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_write_header_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcset_out_values_are_decimal = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"//\0A// MessageId: 0x%lu\0A//\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"//\0A// MessageId: 0x%lx\0A//\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"//\0A// MessageId: %s\0A//\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"#define %s %s%s%s 0x%lx\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"#define %s %s%s%s 0x%lu\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64, i64*, i32*)* @write_header_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_header_define(i32* %0, i64* %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %12, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load i64*, i64** %7, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15, %5
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i64, i64* @mcset_out_values_are_decimal, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %34

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %20
  br label %95

36:                                               ; preds = %15
  %37 = load i64*, i64** %7, align 8
  %38 = call i8* @convert_unicode_to_ACP(i64* %37)
  store i8* %38, i8** %11, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i64*, i64** %9, align 8
  %48 = call i8* @convert_unicode_to_ACP(i64* %47)
  store i8* %48, i8** %12, align 8
  br label %49

49:                                               ; preds = %46, %41, %36
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i64, i64* @mcset_out_values_are_decimal, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %49
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i8*, i8** %12, align 8
  br label %67

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i8* [ %65, %64 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %66 ]
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %73 = load i64, i64* %8, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %57, i8* %61, i8* %68, i8* %72, i64 %73)
  br label %95

75:                                               ; preds = %49
  %76 = load i32*, i32** %6, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = icmp ne i8* %78, null
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i8*, i8** %12, align 8
  br label %87

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i8* [ %85, %84 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %86 ]
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ne i8* %89, null
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %93 = load i64, i64* %8, align 8
  %94 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %77, i8* %81, i8* %88, i8* %92, i64 %93)
  br label %95

95:                                               ; preds = %35, %87, %67
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @convert_unicode_to_ACP(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
