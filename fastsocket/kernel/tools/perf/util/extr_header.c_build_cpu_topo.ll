; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_build_cpu_topo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_build_cpu_topo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_topo = type { i64, i8**, i64, i8** }

@MAXPATHLEN = common dso_local global i32 0, align 4
@CORE_SIB_FMT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@THRD_SIB_FMT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_topo*, i32)* @build_cpu_topo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_cpu_topo(%struct.cpu_topo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_topo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cpu_topo* %0, %struct.cpu_topo** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  %19 = load i8*, i8** @CORE_SIB_FMT, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sprintf(i8* %18, i8* %19, i32 %20)
  %22 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %149

26:                                               ; preds = %2
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @getline(i8** %9, i64* %11, i32* %27)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %139

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @fclose(i32* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 10)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** %10, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %31
  store i64 0, i64* %12, align 8
  br label %41

41:                                               ; preds = %59, %40
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.cpu_topo*, %struct.cpu_topo** %4, align 8
  %44 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.cpu_topo*, %struct.cpu_topo** %4, align 8
  %50 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %48, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %62

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %41

62:                                               ; preds = %57, %41
  %63 = load i64, i64* %12, align 8
  %64 = load %struct.cpu_topo*, %struct.cpu_topo** %4, align 8
  %65 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.cpu_topo*, %struct.cpu_topo** %4, align 8
  %71 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  store i8* %69, i8** %74, align 8
  %75 = load %struct.cpu_topo*, %struct.cpu_topo** %4, align 8
  %76 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %76, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %11, align 8
  br label %79

79:                                               ; preds = %68, %62
  %80 = load i8*, i8** @THRD_SIB_FMT, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @sprintf(i8* %18, i8* %80, i32 %81)
  %83 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %139

87:                                               ; preds = %79
  %88 = load i32*, i32** %6, align 8
  %89 = call i64 @getline(i8** %9, i64* %11, i32* %88)
  %90 = icmp sle i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %139

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  %94 = call i8* @strchr(i8* %93, i8 signext 10)
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i8*, i8** %10, align 8
  store i8 0, i8* %98, align 1
  br label %99

99:                                               ; preds = %97, %92
  store i64 0, i64* %12, align 8
  br label %100

100:                                              ; preds = %118, %99
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.cpu_topo*, %struct.cpu_topo** %4, align 8
  %103 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load i8*, i8** %9, align 8
  %108 = load %struct.cpu_topo*, %struct.cpu_topo** %4, align 8
  %109 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %108, i32 0, i32 3
  %110 = load i8**, i8*** %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i8*, i8** %110, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strcmp(i8* %107, i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %106
  br label %121

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %12, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %12, align 8
  br label %100

121:                                              ; preds = %116, %100
  %122 = load i64, i64* %12, align 8
  %123 = load %struct.cpu_topo*, %struct.cpu_topo** %4, align 8
  %124 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load i8*, i8** %9, align 8
  %129 = load %struct.cpu_topo*, %struct.cpu_topo** %4, align 8
  %130 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %129, i32 0, i32 3
  %131 = load i8**, i8*** %130, align 8
  %132 = load i64, i64* %12, align 8
  %133 = getelementptr inbounds i8*, i8** %131, i64 %132
  store i8* %128, i8** %133, align 8
  %134 = load %struct.cpu_topo*, %struct.cpu_topo** %4, align 8
  %135 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  store i8* null, i8** %9, align 8
  br label %138

138:                                              ; preds = %127, %121
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %138, %91, %86, %30
  %140 = load i32*, i32** %6, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @fclose(i32* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %149

149:                                              ; preds = %145, %25
  %150 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @getline(i8**, i64*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
