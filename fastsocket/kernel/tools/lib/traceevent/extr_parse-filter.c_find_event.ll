; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_find_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_find_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32, %struct.event_format** }
%struct.event_format = type { i32 }
%struct.event_list = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"^%s$\00", align 1
@REG_ICASE = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevent*, %struct.event_list**, i8*, i8*)* @find_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_event(%struct.pevent* %0, %struct.event_list** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pevent*, align 8
  %7 = alloca %struct.event_list**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.event_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pevent* %0, %struct.pevent** %6, align 8
  store %struct.event_list** %1, %struct.event_list*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %9, align 8
  store i8* null, i8** %8, align 8
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = add nsw i64 %23, 3
  %25 = call i8* @malloc_or_die(i64 %24)
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %14, align 8
  %30 = load i32, i32* @REG_ICASE, align 4
  %31 = load i32, i32* @REG_NOSUB, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @regcomp(i32* %11, i8* %29, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %105

39:                                               ; preds = %21
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = add nsw i64 %44, 3
  %46 = call i8* @malloc_or_die(i64 %45)
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %14, align 8
  %51 = load i32, i32* @REG_ICASE, align 4
  %52 = load i32, i32* @REG_NOSUB, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @regcomp(i32* %12, i8* %50, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i8*, i8** %14, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = call i32 @regfree(i32* %11)
  store i32 -1, i32* %5, align 4
  br label %105

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %39
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %91, %62
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.pevent*, %struct.pevent** %6, align 8
  %66 = getelementptr inbounds %struct.pevent, %struct.pevent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %63
  %70 = load %struct.pevent*, %struct.pevent** %6, align 8
  %71 = getelementptr inbounds %struct.pevent, %struct.pevent* %70, i32 0, i32 1
  %72 = load %struct.event_format**, %struct.event_format*** %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.event_format*, %struct.event_format** %72, i64 %74
  %76 = load %struct.event_format*, %struct.event_format** %75, align 8
  store %struct.event_format* %76, %struct.event_format** %10, align 8
  %77 = load %struct.event_format*, %struct.event_format** %10, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %82

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %80
  %83 = phi i32* [ %12, %80 ], [ null, %81 ]
  %84 = call i64 @event_match(%struct.event_format* %77, i32* %83, i32* %11)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  store i32 1, i32* %13, align 4
  %87 = load %struct.event_list**, %struct.event_list*** %7, align 8
  %88 = load %struct.event_format*, %struct.event_format** %10, align 8
  %89 = call i32 @add_event(%struct.event_list** %87, %struct.event_format* %88)
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  br label %63

94:                                               ; preds = %63
  %95 = call i32 @regfree(i32* %11)
  %96 = load i8*, i8** %8, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 @regfree(i32* %12)
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store i32 -1, i32* %5, align 4
  br label %105

104:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %103, %59, %38
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i8* @malloc_or_die(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i64 @event_match(%struct.event_format*, i32*, i32*) #1

declare dso_local i32 @add_event(%struct.event_list**, %struct.event_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
