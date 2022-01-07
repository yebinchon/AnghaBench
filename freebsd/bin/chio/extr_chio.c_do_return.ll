; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.changer_element_status = type { i32, i32, i32 }
%struct.changer_move = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"%s: too few arguments\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: too many arguments\00", align 1
@CHET_VT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: null element status pointer\00", align 1
@CES_SOURCE_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: no source information\00", align 1
@changer_fd = common dso_local global i32 0, align 4
@CHIOMOVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"%s: CHIOMOVE\00", align 1
@changer_name = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"usage: %s %s <from ET> <from EU>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @do_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_return(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.changer_element_status*, align 8
  %9 = alloca %struct.changer_move, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %13, i8*** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %100

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %100

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i8**, i8*** %7, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @parse_element_type(i8* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = load i64, i64* @CHET_VT, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i8**, i8*** %7, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @find_element(i8* %41, i64* %10, i64* %11)
  br label %47

43:                                               ; preds = %28
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @parse_element_unit(i8* %45)
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i8**, i8*** %7, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %6, align 4
  %52 = load i64, i64* %10, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %11, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* @CHET_VT, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call %struct.changer_element_status* @get_element_status(i32 %53, i32 %55, i32 %59)
  store %struct.changer_element_status* %60, %struct.changer_element_status** %8, align 8
  %61 = load %struct.changer_element_status*, %struct.changer_element_status** %8, align 8
  %62 = icmp eq %struct.changer_element_status* null, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %63, %47
  %67 = load %struct.changer_element_status*, %struct.changer_element_status** %8, align 8
  %68 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CES_SOURCE_VALID, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = call i32 @memset(%struct.changer_move* %9, i32 0, i32 24)
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %9, i32 0, i32 3
  store i64 %78, i64* %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %9, i32 0, i32 2
  store i64 %80, i64* %81, align 8
  %82 = load %struct.changer_element_status*, %struct.changer_element_status** %8, align 8
  %83 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %9, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.changer_element_status*, %struct.changer_element_status** %8, align 8
  %87 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %9, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* @changer_fd, align 4
  %91 = load i32, i32* @CHIOMOVE, align 4
  %92 = call i32 @ioctl(i32 %90, i32 %91, %struct.changer_move* %9)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %76
  %95 = load i32, i32* @changer_name, align 4
  %96 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %76
  %98 = load %struct.changer_element_status*, %struct.changer_element_status** %8, align 8
  %99 = call i32 @free(%struct.changer_element_status* %98)
  store i32 0, i32* %4, align 4
  br label %105

100:                                              ; preds = %24, %18
  %101 = load i32, i32* @stderr, align 4
  %102 = call i8* (...) @getprogname()
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %102, i8* %103)
  store i32 1, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @parse_element_type(i8*) #1

declare dso_local i32 @find_element(i8*, i64*, i64*) #1

declare dso_local i64 @parse_element_unit(i8*) #1

declare dso_local %struct.changer_element_status* @get_element_status(i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @memset(%struct.changer_move*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.changer_move*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.changer_element_status*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
