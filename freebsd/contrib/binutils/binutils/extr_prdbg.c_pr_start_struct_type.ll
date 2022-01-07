; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_start_struct_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_start_struct_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%%anon%u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" /*\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" size %u\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" id %u\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" */\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DEBUG_VISIBILITY_PUBLIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i64, i32)* @pr_start_struct_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pr_start_struct_type(i8* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pr_handle*, align 8
  %13 = alloca [20 x i8], align 16
  %14 = alloca [30 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.pr_handle*
  store %struct.pr_handle* %16, %struct.pr_handle** %12, align 8
  %17 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %18 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 2
  store i32 %20, i32* %18, align 8
  %21 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %26 = call i32 @push_type(%struct.pr_handle* %21, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %6, align 8
  br label %119

30:                                               ; preds = %5
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @append_type(%struct.pr_handle* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %6, align 8
  br label %119

40:                                               ; preds = %33
  br label %52

41:                                               ; preds = %30
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %47 = call i32 @append_type(%struct.pr_handle* %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %6, align 8
  br label %119

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %40
  %53 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %54 = call i32 @append_type(%struct.pr_handle* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %6, align 8
  br label %119

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %105

64:                                               ; preds = %61, %58
  %65 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %66 = call i32 @append_type(%struct.pr_handle* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* @FALSE, align 8
  store i64 %69, i64* %6, align 8
  br label %119

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @sprintf(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %78 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %79 = call i32 @append_type(%struct.pr_handle* %77, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = load i64, i64* @FALSE, align 8
  store i64 %82, i64* %6, align 8
  br label %119

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %70
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @sprintf(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %92 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %93 = call i32 @append_type(%struct.pr_handle* %91, i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %87
  %96 = load i64, i64* @FALSE, align 8
  store i64 %96, i64* %6, align 8
  br label %119

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %84
  %99 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %100 = call i32 @append_type(%struct.pr_handle* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* @FALSE, align 8
  store i64 %103, i64* %6, align 8
  br label %119

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %61
  %106 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %107 = call i32 @append_type(%struct.pr_handle* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* @FALSE, align 8
  store i64 %110, i64* %6, align 8
  br label %119

111:                                              ; preds = %105
  %112 = load i32, i32* @DEBUG_VISIBILITY_PUBLIC, align 4
  %113 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %114 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 4
  %117 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %118 = call i64 @indent_type(%struct.pr_handle* %117)
  store i64 %118, i64* %6, align 8
  br label %119

119:                                              ; preds = %111, %109, %102, %95, %81, %68, %56, %49, %38, %28
  %120 = load i64, i64* %6, align 8
  ret i64 %120
}

declare dso_local i32 @push_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @append_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @indent_type(%struct.pr_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
