; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__create_modules.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__create_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.machine = type { i8* }
%struct.map = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s/proc/modules\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/proc/modules\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machine*)* @machine__create_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machine__create_modules(%struct.machine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.machine*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %3, align 8
  store i8* null, i8** %4, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.machine*, %struct.machine** %3, align 8
  %22 = call i64 @machine__is_default_guest(%struct.machine* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  store i8* %25, i8** %8, align 8
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.machine*, %struct.machine** %3, align 8
  %28 = getelementptr inbounds %struct.machine, %struct.machine* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i8* %20, i8** %8, align 8
  br label %31

31:                                               ; preds = %26, %24
  %32 = call i64 @symbol__restricted_filename(i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %115

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = call i32* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %115

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %103, %100, %41
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @feof(i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %104

47:                                               ; preds = %42
  %48 = load i32, i32* @PATH_MAX, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %12, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %13, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @getline(i8** %4, i64* %5, i32* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 3, i32* %11, align 4
  br label %100

57:                                               ; preds = %47
  %58 = load i8*, i8** %4, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 4, i32* %11, align 4
  br label %100

61:                                               ; preds = %57
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %4, align 8
  %68 = call i8* @strrchr(i8* %67, i8 signext 120)
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 2, i32* %11, align 4
  br label %100

72:                                               ; preds = %61
  %73 = load i8*, i8** %15, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = call i32 @hex2u64(i8* %74, i32* %14)
  %76 = load i8*, i8** %4, align 8
  %77 = call i8* @strchr(i8* %76, i8 signext 32)
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 2, i32* %11, align 4
  br label %100

81:                                               ; preds = %72
  %82 = load i8*, i8** %15, align 8
  store i8 0, i8* %82, align 1
  %83 = trunc i64 %49 to i32
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @snprintf(i8* %51, i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = load %struct.machine*, %struct.machine** %3, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call %struct.map* @machine__new_module(%struct.machine* %86, i32 %87, i8* %51)
  store %struct.map* %88, %struct.map** %7, align 8
  %89 = load %struct.map*, %struct.map** %7, align 8
  %90 = icmp eq %struct.map* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 5, i32* %11, align 4
  br label %100

92:                                               ; preds = %81
  %93 = load %struct.map*, %struct.map** %7, align 8
  %94 = getelementptr inbounds %struct.map, %struct.map* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.machine*, %struct.machine** %3, align 8
  %97 = getelementptr inbounds %struct.machine, %struct.machine* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @dso__kernel_module_get_build_id(i32 %95, i8* %98)
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %91, %60, %92, %80, %71, %56
  %101 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %11, align 4
  switch i32 %102, label %115 [
    i32 0, label %103
    i32 3, label %104
    i32 2, label %42
    i32 5, label %111
    i32 4, label %114
  ]

103:                                              ; preds = %100
  br label %42

104:                                              ; preds = %100, %42
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @fclose(i32* %107)
  %109 = load %struct.machine*, %struct.machine** %3, align 8
  %110 = call i32 @machine__set_modules_path(%struct.machine* %109)
  store i32 %110, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %115

111:                                              ; preds = %100
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @free(i8* %112)
  br label %114

114:                                              ; preds = %111, %100
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %115

115:                                              ; preds = %114, %104, %100, %40, %34
  %116 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @machine__is_default_guest(%struct.machine*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i64 @symbol__restricted_filename(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32 @getline(i8**, i64*, i32*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @hex2u64(i8*, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local %struct.map* @machine__new_module(%struct.machine*, i32, i8*) #2

declare dso_local i32 @dso__kernel_module_get_build_id(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @machine__set_modules_path(%struct.machine*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
