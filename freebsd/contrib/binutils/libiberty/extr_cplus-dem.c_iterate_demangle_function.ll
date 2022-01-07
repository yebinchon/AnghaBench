; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_iterate_demangle_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_iterate_demangle_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32 }

@ARM_DEMANGLING = common dso_local global i64 0, align 8
@LUCID_DEMANGLING = common dso_local global i64 0, align 8
@HP_DEMANGLING = common dso_local global i64 0, align 8
@EDG_DEMANGLING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, i32*, i8*)* @iterate_demangle_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate_demangle_function(%struct.work_stuff* %0, i8** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.work_stuff*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.work_stuff, align 4
  store %struct.work_stuff* %0, %struct.work_stuff** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %128

22:                                               ; preds = %4
  %23 = load i64, i64* @ARM_DEMANGLING, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @LUCID_DEMANGLING, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @HP_DEMANGLING, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @EDG_DEMANGLING, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = call i32* @strstr(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %31, %28, %25, %22
  %40 = load %struct.work_stuff*, %struct.work_stuff** %6, align 8
  %41 = load i8**, i8*** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @demangle_function_name(%struct.work_stuff* %40, i8** %41, i32* %42, i8* %43)
  store i32 1, i32* %5, align 4
  br label %128

45:                                               ; preds = %34
  %46 = call i32 @string_init(i32* %12)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @string_appends(i32* %12, i32* %47)
  %49 = call i32 @memset(%struct.work_stuff* %13, i32 0, i32 4)
  %50 = load %struct.work_stuff*, %struct.work_stuff** %6, align 8
  %51 = call i32 @work_stuff_copy_to_from(%struct.work_stuff* %13, %struct.work_stuff* %50)
  br label %52

52:                                               ; preds = %121, %45
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %124

57:                                               ; preds = %52
  %58 = load %struct.work_stuff*, %struct.work_stuff** %6, align 8
  %59 = load i8**, i8*** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @demangle_function_name(%struct.work_stuff* %58, i8** %59, i32* %60, i8* %61)
  %63 = load %struct.work_stuff*, %struct.work_stuff** %6, align 8
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @demangle_signature(%struct.work_stuff* %63, i8** %64, i32* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %124

70:                                               ; preds = %57
  %71 = load i8*, i8** %10, align 8
  %72 = load i8**, i8*** %7, align 8
  store i8* %71, i8** %72, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @string_clear(i32* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @string_appends(i32* %75, i32* %12)
  %77 = load %struct.work_stuff*, %struct.work_stuff** %6, align 8
  %78 = call i32 @work_stuff_copy_to_from(%struct.work_stuff* %77, %struct.work_stuff* %13)
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %102, %70
  %82 = load i8*, i8** %9, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 95
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 95
  br label %98

98:                                               ; preds = %92, %86
  %99 = phi i1 [ true, %86 ], [ %97, %92 ]
  br label %100

100:                                              ; preds = %98, %81
  %101 = phi i1 [ false, %81 ], [ %99, %98 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  br label %81

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %118, %105
  %107 = load i8*, i8** %9, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i8*, i8** %9, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 95
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i1 [ false, %106 ], [ %115, %111 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %9, align 8
  br label %106

121:                                              ; preds = %116
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 -2
  store i8* %123, i8** %9, align 8
  br label %52

124:                                              ; preds = %69, %52
  %125 = call i32 @delete_work_stuff(%struct.work_stuff* %13)
  %126 = call i32 @string_delete(i32* %12)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %39, %21
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @demangle_function_name(%struct.work_stuff*, i8**, i32*, i8*) #1

declare dso_local i32 @string_init(i32*) #1

declare dso_local i32 @string_appends(i32*, i32*) #1

declare dso_local i32 @memset(%struct.work_stuff*, i32, i32) #1

declare dso_local i32 @work_stuff_copy_to_from(%struct.work_stuff*, %struct.work_stuff*) #1

declare dso_local i32 @demangle_signature(%struct.work_stuff*, i8**, i32*) #1

declare dso_local i32 @string_clear(i32*) #1

declare dso_local i32 @delete_work_stuff(%struct.work_stuff*) #1

declare dso_local i32 @string_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
