; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_position.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.changer_position = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s: too few arguments\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: too many arguments\00", align 1
@CP_INVERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: inappropriate modifier `%s'\00", align 1
@changer_fd = common dso_local global i32 0, align 4
@CHIOPOSITION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"%s: CHIOPOSITION\00", align 1
@changer_name = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"usage: %s %s <to ET> <to EU> [inv]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @do_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_position(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.changer_position, align 4
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
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %71

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %71

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = call i32 @memset(%struct.changer_position* %8, i32 0, i32 12)
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @parse_element_type(i8* %29)
  %31 = getelementptr inbounds %struct.changer_position, %struct.changer_position* %8, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i8**, i8*** %7, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = load i8**, i8*** %7, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @parse_element_unit(i8* %37)
  %39 = getelementptr inbounds %struct.changer_position, %struct.changer_position* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i8**, i8*** %7, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %26
  %47 = load i8**, i8*** %7, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @parse_special(i8* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %56 [
    i32 128, label %51
  ]

51:                                               ; preds = %46
  %52 = load i32, i32* @CP_INVERT, align 4
  %53 = getelementptr inbounds %struct.changer_position, %struct.changer_position* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load i8*, i8** %5, align 8
  %58 = load i8**, i8*** %7, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %59)
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i32, i32* @changer_fd, align 4
  %64 = load i32, i32* @CHIOPOSITION, align 4
  %65 = call i64 @ioctl(i32 %63, i32 %64, %struct.changer_position* %8)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @changer_name, align 4
  %69 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %62
  store i32 0, i32* %4, align 4
  br label %76

71:                                               ; preds = %22, %16
  %72 = load i32, i32* @stderr, align 4
  %73 = call i8* (...) @getprogname()
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %73, i8* %74)
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %70
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @memset(%struct.changer_position*, i32, i32) #1

declare dso_local i32 @parse_element_type(i8*) #1

declare dso_local i32 @parse_element_unit(i8*) #1

declare dso_local i32 @parse_special(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.changer_position*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
