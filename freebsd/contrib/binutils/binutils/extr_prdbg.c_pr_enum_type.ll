; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_enum_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_enum_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/* undefined */\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, i64*)* @pr_enum_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_enum_type(i8* %0, i8* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.pr_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [20 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.pr_handle*
  store %struct.pr_handle* %15, %struct.pr_handle** %10, align 8
  %16 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %17 = call i32 @push_type(%struct.pr_handle* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %125

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @append_type(%struct.pr_handle* %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %31 = call i32 @append_type(%struct.pr_handle* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %5, align 4
  br label %125

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %38 = call i32 @append_type(%struct.pr_handle* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %5, align 4
  br label %125

42:                                               ; preds = %36
  %43 = load i8**, i8*** %8, align 8
  %44 = icmp eq i8** %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %47 = call i32 @append_type(%struct.pr_handle* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  br label %125

51:                                               ; preds = %45
  br label %122

52:                                               ; preds = %42
  store i64 0, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %118, %52
  %54 = load i8**, i8*** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %121

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = icmp ugt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %65 = call i32 @append_type(%struct.pr_handle* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %5, align 4
  br label %125

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %60
  %71 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %72 = load i8**, i8*** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @append_type(%struct.pr_handle* %71, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %5, align 4
  br label %125

81:                                               ; preds = %70
  %82 = load i64*, i64** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %81
  %90 = load i64*, i64** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %96 = load i32, i32* @FALSE, align 4
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @print_vma(i64 %94, i8* %95, i32 %96, i32 %97)
  %99 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %100 = call i32 @append_type(%struct.pr_handle* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %89
  %103 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %104 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %105 = call i32 @append_type(%struct.pr_handle* %103, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102, %89
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %5, align 4
  br label %125

109:                                              ; preds = %102
  %110 = load i64*, i64** %9, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %12, align 8
  br label %115

115:                                              ; preds = %109, %81
  %116 = load i64, i64* %12, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %12, align 8
  br label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %53

121:                                              ; preds = %53
  br label %122

122:                                              ; preds = %121, %51
  %123 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %124 = call i32 @append_type(%struct.pr_handle* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %122, %107, %79, %67, %49, %40, %33, %19
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @push_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @append_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @print_vma(i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
