; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-report.c_parse_callchain_opt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-report.c_parse_callchain_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.option = type { i64 }
%struct.perf_report = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@CHAIN_GRAPH_ABS = common dso_local global i32 0, align 4
@callchain_param = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@CHAIN_FLAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"fractal\00", align 1
@CHAIN_GRAPH_REL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@CHAIN_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@ORDER_CALLER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"callee\00", align 1
@ORDER_CALLEE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't register callchain params\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_callchain_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_callchain_opt(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_report*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.option*, %struct.option** %5, align 8
  %13 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.perf_report*
  store %struct.perf_report* %15, %struct.perf_report** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.perf_report*, %struct.perf_report** %8, align 8
  %20 = getelementptr inbounds %struct.perf_report, %struct.perf_report* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %119

21:                                               ; preds = %3
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %119

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @strtok(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %119

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @CHAIN_GRAPH_ABS, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 3), align 4
  br label %66

39:                                               ; preds = %31
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @CHAIN_FLAT, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 3), align 4
  br label %65

47:                                               ; preds = %39
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @CHAIN_GRAPH_REL, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 3), align 4
  br label %64

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @CHAIN_NONE, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  store i32 0, i32* %4, align 4
  br label %119

63:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %119

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %45
  br label %66

66:                                               ; preds = %65, %37
  %67 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %112

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strtod(i8* %72, i8** %11)
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 2), align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %119

78:                                               ; preds = %71
  %79 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %112

83:                                               ; preds = %78
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 99
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @strtoul(i8* %90, i8** %11, i32 0)
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 1), align 4
  %92 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  br label %112

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %83
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @ORDER_CALLER, align 4
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 0), align 4
  br label %111

103:                                              ; preds = %97
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* @ORDER_CALLEE, align 4
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 0), align 4
  br label %110

109:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %119

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %110, %101
  br label %112

112:                                              ; preds = %111, %95, %82, %70
  %113 = call i64 @callchain_register_param(%struct.TYPE_5__* @callchain_param)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 @fprintf(i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

118:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %115, %109, %77, %63, %61, %30, %24, %18
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strtod(i8*, i8**) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @callchain_register_param(%struct.TYPE_5__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
