; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.changer_move = type { i64, i64, i32, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"%s: too few arguments\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: too many arguments\00", align 1
@CHET_VT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: voltag only makes sense as an element source\00", align 1
@CM_INVERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: inappropriate modifier `%s'\00", align 1
@changer_fd = common dso_local global i32 0, align 4
@CHIOMOVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"%s: CHIOMOVE\00", align 1
@changer_name = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"usage: %s %s <from ET> <from EU> <to ET> <to EU> [inv]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @do_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_move(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.changer_move, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %11, i8*** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %109

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 5
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %109

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = call i32 @memset(%struct.changer_move* %8, i32 0, i32 40)
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @parse_element_type(i8* %29)
  %31 = ptrtoint i8* %30 to i64
  %32 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %8, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = load i64, i64* @CHET_VT, align 8
  %38 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %26
  %42 = load i8**, i8*** %7, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %8, i32 0, i32 0
  %45 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %8, i32 0, i32 4
  %46 = call i32 @find_element(i8* %43, i64* %44, i8** %45)
  br label %52

47:                                               ; preds = %26
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @parse_element_unit(i8* %49)
  %51 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %8, i32 0, i32 4
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i8**, i8*** %7, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @parse_element_type(i8* %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %8, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = load i8**, i8*** %7, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %6, align 4
  %66 = load i64, i64* @CHET_VT, align 8
  %67 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %8, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %52
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %52
  %74 = load i8**, i8*** %7, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @parse_element_unit(i8* %75)
  %77 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %8, i32 0, i32 3
  store i8* %76, i8** %77, align 8
  %78 = load i8**, i8*** %7, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %73
  %85 = load i8**, i8*** %7, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @parse_special(i8* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  switch i32 %88, label %94 [
    i32 128, label %89
  ]

89:                                               ; preds = %84
  %90 = load i32, i32* @CM_INVERT, align 4
  %91 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %8, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 8
  br label %99

94:                                               ; preds = %84
  %95 = load i8*, i8** %5, align 8
  %96 = load i8**, i8*** %7, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %95, i8* %97)
  br label %99

99:                                               ; preds = %94, %89
  br label %100

100:                                              ; preds = %99, %73
  %101 = load i32, i32* @changer_fd, align 4
  %102 = load i32, i32* @CHIOMOVE, align 4
  %103 = call i64 @ioctl(i32 %101, i32 %102, %struct.changer_move* %8)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @changer_name, align 4
  %107 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %105, %100
  store i32 0, i32* %4, align 4
  br label %114

109:                                              ; preds = %22, %16
  %110 = load i32, i32* @stderr, align 4
  %111 = call i8* (...) @getprogname()
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* %111, i8* %112)
  store i32 1, i32* %4, align 4
  br label %114

114:                                              ; preds = %109, %108
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @memset(%struct.changer_move*, i32, i32) #1

declare dso_local i8* @parse_element_type(i8*) #1

declare dso_local i32 @find_element(i8*, i64*, i8**) #1

declare dso_local i8* @parse_element_unit(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32 @parse_special(i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.changer_move*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
