; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_map.c_map__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_map.c_map__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.dso = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/tmp/perf-%d.map\00", align 1
@identity__map_ip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map* @map__new(%struct.list_head* %0, i64 %1, i64 %2, i64 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.map*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.map*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.dso*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = call %struct.map* @malloc(i32 12)
  store %struct.map* %24, %struct.map** %16, align 8
  %25 = load %struct.map*, %struct.map** %16, align 8
  %26 = icmp ne %struct.map* %25, null
  br i1 %26, label %27, label %93

27:                                               ; preds = %7
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %17, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %18, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = call i32 @is_anon_memory(i8* %32)
  store i32 %33, i32* %20, align 4
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @is_vdso_map(i8* %34)
  store i32 %35, i32* %22, align 4
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @is_no_dso_memory(i8* %36)
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = trunc i64 %29 to i32
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @snprintf(i8* %31, i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i8* %31, i8** %14, align 8
  br label %44

44:                                               ; preds = %40, %27
  %45 = load i32, i32* %22, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  store i64 0, i64* %12, align 8
  %48 = load %struct.list_head*, %struct.list_head** %9, align 8
  %49 = call %struct.dso* @vdso__dso_findnew(%struct.list_head* %48)
  store %struct.dso* %49, %struct.dso** %19, align 8
  br label %54

50:                                               ; preds = %44
  %51 = load %struct.list_head*, %struct.list_head** %9, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call %struct.dso* @__dsos__findnew(%struct.list_head* %51, i8* %52)
  store %struct.dso* %53, %struct.dso** %19, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.dso*, %struct.dso** %19, align 8
  %56 = icmp eq %struct.dso* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 2, i32* %23, align 4
  br label %89

58:                                               ; preds = %54
  %59 = load %struct.map*, %struct.map** %16, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.dso*, %struct.dso** %19, align 8
  %67 = call i32 @map__init(%struct.map* %59, i32 %60, i64 %61, i64 %64, i64 %65, %struct.dso* %66)
  %68 = load i32, i32* %20, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70, %58
  %74 = load i32, i32* @identity__map_ip, align 4
  %75 = load %struct.map*, %struct.map** %16, align 8
  %76 = getelementptr inbounds %struct.map, %struct.map* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.map*, %struct.map** %16, align 8
  %78 = getelementptr inbounds %struct.map, %struct.map* %77, i32 0, i32 2
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* %21, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.dso*, %struct.dso** %19, align 8
  %83 = load %struct.map*, %struct.map** %16, align 8
  %84 = getelementptr inbounds %struct.map, %struct.map* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dso__set_loaded(%struct.dso* %82, i32 %85)
  br label %87

87:                                               ; preds = %81, %73
  br label %88

88:                                               ; preds = %87, %70
  store i32 0, i32* %23, align 4
  br label %89

89:                                               ; preds = %57, %88
  %90 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %23, align 4
  switch i32 %91, label %100 [
    i32 0, label %92
    i32 2, label %95
  ]

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92, %7
  %94 = load %struct.map*, %struct.map** %16, align 8
  store %struct.map* %94, %struct.map** %8, align 8
  br label %98

95:                                               ; preds = %89
  %96 = load %struct.map*, %struct.map** %16, align 8
  %97 = call i32 @free(%struct.map* %96)
  store %struct.map* null, %struct.map** %8, align 8
  br label %98

98:                                               ; preds = %95, %93
  %99 = load %struct.map*, %struct.map** %8, align 8
  ret %struct.map* %99

100:                                              ; preds = %89
  unreachable
}

declare dso_local %struct.map* @malloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @is_anon_memory(i8*) #1

declare dso_local i32 @is_vdso_map(i8*) #1

declare dso_local i32 @is_no_dso_memory(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dso* @vdso__dso_findnew(%struct.list_head*) #1

declare dso_local %struct.dso* @__dsos__findnew(%struct.list_head*, i8*) #1

declare dso_local i32 @map__init(%struct.map*, i32, i64, i64, i64, %struct.dso*) #1

declare dso_local i32 @dso__set_loaded(%struct.dso*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @free(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
