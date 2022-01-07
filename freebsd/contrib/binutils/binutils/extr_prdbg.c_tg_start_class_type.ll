; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_start_class_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_start_class_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i64, i32* }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%%anon%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"union class\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" vtable \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"self \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@DEBUG_VISIBILITY_PRIVATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i64, i32, i64, i64)* @tg_start_class_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tg_start_class_type(i8* %0, i8* %1, i32 %2, i64 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.pr_handle*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [20 x i8], align 16
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.pr_handle*
  store %struct.pr_handle* %21, %struct.pr_handle** %16, align 8
  store i8* null, i8** %17, align 8
  %22 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %23 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* %23, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %7
  %29 = load i64, i64* %15, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %33 = call i8* @pop_type(%struct.pr_handle* %32)
  store i8* %33, i8** %17, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @FALSE, align 8
  store i64 %37, i64* %8, align 8
  br label %124

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %28, %7
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  store i8* %43, i8** %18, align 8
  br label %49

44:                                               ; preds = %39
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  store i8* %48, i8** %18, align 8
  br label %49

49:                                               ; preds = %44, %42
  %50 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = call i32 @push_type(%struct.pr_handle* %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %8, align 8
  br label %124

56:                                               ; preds = %49
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %61 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %62 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %60, i8** %64, align 8
  %65 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %66 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32* null, i32** %68, align 8
  %69 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %70 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %56
  %76 = load i64, i64* %14, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %15, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %117

84:                                               ; preds = %81, %78, %75, %56
  %85 = load i64, i64* %14, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %116

87:                                               ; preds = %84
  %88 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %89 = call i32 @append_type(%struct.pr_handle* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* @FALSE, align 8
  store i64 %92, i64* %8, align 8
  br label %124

93:                                               ; preds = %87
  %94 = load i64, i64* %15, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %98 = call i32 @append_type(%struct.pr_handle* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* @FALSE, align 8
  store i64 %101, i64* %8, align 8
  br label %124

102:                                              ; preds = %96
  br label %115

103:                                              ; preds = %93
  %104 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = call i32 @append_type(%struct.pr_handle* %104, i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %110 = call i32 @append_type(%struct.pr_handle* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108, %103
  %113 = load i64, i64* @FALSE, align 8
  store i64 %113, i64* %8, align 8
  br label %124

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %102
  br label %116

116:                                              ; preds = %115, %84
  br label %117

117:                                              ; preds = %116, %81
  %118 = load i32, i32* @DEBUG_VISIBILITY_PRIVATE, align 4
  %119 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %120 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 8
  %123 = load i64, i64* @TRUE, align 8
  store i64 %123, i64* %8, align 8
  br label %124

124:                                              ; preds = %117, %112, %100, %91, %54, %36
  %125 = load i64, i64* %8, align 8
  ret i64 %125
}

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @push_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @append_type(%struct.pr_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
