; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dso.c_dso__binary_type_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dso.c_dso__binary_type_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.dso = type { i8*, i32, i32, i32 }

@BUILD_ID_SIZE = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s/usr/lib/debug%s.debug\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s/usr/lib/debug%s\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s/usr/lib/debug/.build-id/%.2s/%s.debug\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__binary_type_file(%struct.dso* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.dso*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.dso* %0, %struct.dso** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32, i32* @BUILD_ID_SIZE, align 4
  %16 = mul nsw i32 %15, 2
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %141 [
    i32 139, label %22
    i32 140, label %70
    i32 138, label %84
    i32 129, label %92
    i32 141, label %100
    i32 131, label %116
    i32 136, label %124
    i32 130, label %133
    i32 133, label %142
    i32 128, label %142
    i32 137, label %142
    i32 135, label %142
    i32 134, label %142
    i32 132, label %142
  ]

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.dso*, %struct.dso** %6, align 8
  %25 = getelementptr inbounds %struct.dso, %struct.dso* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @strncpy(i8* %23, i8* %26, i64 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.dso*, %struct.dso** %6, align 8
  %31 = getelementptr inbounds %struct.dso, %struct.dso* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %14, align 8
  br label %35

35:                                               ; preds = %46, %22
  %36 = load i8*, i8** %14, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %14, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 47
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %14, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %48, i8** %14, align 8
  br label %35

49:                                               ; preds = %44
  %50 = load i8*, i8** %14, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 47
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %14, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %14, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.dso*, %struct.dso** %6, align 8
  %59 = getelementptr inbounds %struct.dso, %struct.dso* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sub i64 %62, %67
  %69 = call i32 @filename__read_debuglink(i8* %60, i8* %61, i64 %68)
  br label %143

70:                                               ; preds = %5
  %71 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.dso*, %struct.dso** %6, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32* @dso__build_id_filename(%struct.dso* %77, i8* %78, i64 %79)
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %70
  store i32 -1, i32* %13, align 4
  br label %83

83:                                               ; preds = %82, %76
  br label %143

84:                                               ; preds = %5
  %85 = load i8*, i8** %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %88 = load %struct.dso*, %struct.dso** %6, align 8
  %89 = getelementptr inbounds %struct.dso, %struct.dso* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %85, i64 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %87, i8* %90)
  br label %143

92:                                               ; preds = %5
  %93 = load i8*, i8** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %96 = load %struct.dso*, %struct.dso** %6, align 8
  %97 = getelementptr inbounds %struct.dso, %struct.dso* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %93, i64 %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %95, i8* %98)
  br label %143

100:                                              ; preds = %5
  %101 = load %struct.dso*, %struct.dso** %6, align 8
  %102 = getelementptr inbounds %struct.dso, %struct.dso* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 -1, i32* %13, align 4
  br label %143

106:                                              ; preds = %100
  %107 = load %struct.dso*, %struct.dso** %6, align 8
  %108 = getelementptr inbounds %struct.dso, %struct.dso* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @build_id__sprintf(i32 %109, i32 4, i8* %20)
  %111 = load i8*, i8** %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %114 = getelementptr inbounds i8, i8* %20, i64 2
  %115 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %111, i64 %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %113, i8* %20, i8* %114)
  br label %143

116:                                              ; preds = %5
  %117 = load i8*, i8** %9, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %120 = load %struct.dso*, %struct.dso** %6, align 8
  %121 = getelementptr inbounds %struct.dso, %struct.dso* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %117, i64 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %119, i8* %122)
  br label %143

124:                                              ; preds = %5
  %125 = load i8*, i8** %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.dso*, %struct.dso** %6, align 8
  %130 = getelementptr inbounds %struct.dso, %struct.dso* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %125, i64 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %127, i8* %128, i8* %131)
  br label %143

133:                                              ; preds = %5
  %134 = load i8*, i8** %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %137 = load %struct.dso*, %struct.dso** %6, align 8
  %138 = getelementptr inbounds %struct.dso, %struct.dso* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %134, i64 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %136, i8* %139)
  br label %143

141:                                              ; preds = %5
  br label %142

142:                                              ; preds = %5, %5, %5, %5, %5, %5, %141
  store i32 -1, i32* %13, align 4
  br label %143

143:                                              ; preds = %142, %133, %124, %116, %106, %105, %92, %84, %83, %57
  %144 = load i32, i32* %13, align 4
  %145 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %145)
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32 @filename__read_debuglink(i8*, i8*, i64) #2

declare dso_local i32* @dso__build_id_filename(%struct.dso*, i8*, i64) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, ...) #2

declare dso_local i32 @build_id__sprintf(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
