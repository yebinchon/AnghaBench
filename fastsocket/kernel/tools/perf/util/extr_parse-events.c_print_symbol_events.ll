; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_print_symbol_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_print_symbol_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_symbol = type { i8*, i8* }

@MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s OR %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"  %-50s [%s]\0A\00", align 1
@event_type_descriptors = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.event_symbol*, i32, i32)* @print_symbol_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_symbol_events(i8* %0, i32 %1, %struct.event_symbol* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.event_symbol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.event_symbol* %2, %struct.event_symbol** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @MAX_NAME_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %84, %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %89

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load %struct.event_symbol*, %struct.event_symbol** %8, align 8
  %28 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strglobmatch(i8* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %26
  %34 = load %struct.event_symbol*, %struct.event_symbol** %8, align 8
  %35 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.event_symbol*, %struct.event_symbol** %8, align 8
  %40 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strglobmatch(i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38, %33
  br label %84

46:                                               ; preds = %38, %26, %23
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.event_symbol*, %struct.event_symbol** %8, align 8
  %51 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %52)
  br label %84

54:                                               ; preds = %46
  %55 = load %struct.event_symbol*, %struct.event_symbol** %8, align 8
  %56 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* @MAX_NAME_LEN, align 4
  %62 = load %struct.event_symbol*, %struct.event_symbol** %8, align 8
  %63 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.event_symbol*, %struct.event_symbol** %8, align 8
  %66 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @snprintf(i8* %18, i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %67)
  br label %75

69:                                               ; preds = %54
  %70 = load %struct.event_symbol*, %struct.event_symbol** %8, align 8
  %71 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @MAX_NAME_LEN, align 4
  %74 = call i32 @strncpy(i8* %18, i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %60
  %76 = load i8**, i8*** @event_type_descriptors, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %80)
  %82 = load i32, i32* %12, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %75, %49, %45
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load %struct.event_symbol*, %struct.event_symbol** %8, align 8
  %88 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %87, i32 1
  store %struct.event_symbol* %88, %struct.event_symbol** %8, align 8
  br label %19

89:                                               ; preds = %19
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %95)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strglobmatch(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
