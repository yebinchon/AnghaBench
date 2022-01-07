; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_abts.c_abts_add_suite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_abts.c_abts_add_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8*, %struct.TYPE_6__*, i64, i64 }

@curr_char = common dso_local global i64 0, align 8
@list_tests = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%-20s:  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @abts_add_suite(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* @curr_char, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i32 @end_suite(%struct.TYPE_7__* %24)
  br label %26

26:                                               ; preds = %23, %16, %11, %2
  %27 = call i8* @malloc(i32 40)
  %28 = bitcast i8* %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %6, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @strrchr(i8* %35, i8 signext 47)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @strrchr(i8* %40, i8 signext 92)
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %39, %26
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  br label %50

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @strrchr(i8* %51, i8 signext 46)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = add nsw i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = call i32 @calloc(i32 %62, i32 1)
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i8* @memcpy(i32 %63, i8* %64, i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %78

74:                                               ; preds = %50
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %55
  %79 = load i64, i64* @list_tests, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @stdout, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %81, %78
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = icmp eq %struct.TYPE_7__* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = call i8* @malloc(i32 16)
  %94 = bitcast i8* %93 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %4, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %100, align 8
  br label %110

101:                                              ; preds = %87
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store %struct.TYPE_6__* %107, %struct.TYPE_6__** %109, align 8
  br label %110

110:                                              ; preds = %101, %92
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @should_test_run(i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** %3, align 8
  br label %131

120:                                              ; preds = %110
  %121 = call i32 (...) @reset_status()
  %122 = load i32, i32* @stdout, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @fprintf(i32 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %125)
  %127 = call i32 (...) @update_status()
  %128 = load i32, i32* @stdout, align 4
  %129 = call i32 @fflush(i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %3, align 8
  br label %131

131:                                              ; preds = %120, %116
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %132
}

declare dso_local i32 @end_suite(%struct.TYPE_7__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @memcpy(i32, i8*, i32) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @should_test_run(i8*) #1

declare dso_local i32 @reset_status(...) #1

declare dso_local i32 @update_status(...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
