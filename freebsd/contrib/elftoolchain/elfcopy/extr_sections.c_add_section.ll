; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_add_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_add_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, i32 }
%struct.sec_add = type { i8*, i32, i32* }
%struct.stat = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"illegal format for --add-section option\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"stat failed\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"can not open %s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fread failed\00", align 1
@sadd_list = common dso_local global i32 0, align 4
@SEC_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_section(%struct.elfcopy* %0, i8* %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sec_add*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 61)
  store i8* %12, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  %16 = call i32 @errx(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %2
  %18 = call i8* @malloc(i32 24)
  %19 = bitcast i8* %18 to %struct.sec_add*
  store %struct.sec_add* %19, %struct.sec_add** %5, align 8
  %20 = icmp eq %struct.sec_add* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 (i32, i8*, ...) @err(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i8* @malloc(i32 %32)
  %34 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %35 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = icmp eq i8* %33, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 (i32, i8*, ...) @err(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %24
  %41 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %42 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @strncpy(i8* %43, i8* %44, i32 %45)
  %47 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %48 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @stat(i8* %55, %struct.stat* %6)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = call i32 (i32, i8*, ...) @err(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %40
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %65 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %67 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %110

70:                                               ; preds = %61
  %71 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %72 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @malloc(i32 %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %77 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = icmp eq i32* %75, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  %81 = call i32 (i32, i8*, ...) @err(i32 %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %70
  %83 = load i8*, i8** %8, align 8
  %84 = call i32* @fopen(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %84, i32** %9, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @EXIT_FAILURE, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 (i32, i8*, ...) @err(i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %92 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %95 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = call i64 @fread(i32* %93, i32 1, i32 %96, i32* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %90
  %101 = load i32*, i32** %9, align 8
  %102 = call i64 @ferror(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %90
  %105 = load i32, i32* @EXIT_FAILURE, align 4
  %106 = call i32 (i32, i8*, ...) @err(i32 %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @fclose(i32* %108)
  br label %113

110:                                              ; preds = %61
  %111 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %112 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %111, i32 0, i32 2
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %115 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %114, i32 0, i32 1
  %116 = load %struct.sec_add*, %struct.sec_add** %5, align 8
  %117 = load i32, i32* @sadd_list, align 4
  %118 = call i32 @STAILQ_INSERT_TAIL(i32* %115, %struct.sec_add* %116, i32 %117)
  %119 = load i32, i32* @SEC_ADD, align 4
  %120 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %121 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.sec_add*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
