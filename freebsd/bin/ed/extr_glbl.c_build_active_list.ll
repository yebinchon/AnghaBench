; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_glbl.c_build_active_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_glbl.c_build_active_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@ibufp = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"invalid pattern delimiter\00", align 1
@errmsg = common dso_local global i8* null, align 8
@ERR = common dso_local global i32 0, align 4
@first_addr = common dso_local global i64 0, align 8
@second_addr = common dso_local global i64 0, align 8
@isbinary = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_active_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %9 = load i8*, i8** @ibufp, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %8, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i8, i8* %8, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  %18 = load i32, i32* @ERR, align 4
  store i32 %18, i32* %2, align 4
  br label %80

19:                                               ; preds = %13
  %20 = call i32* (...) @get_compiled_pattern()
  store i32* %20, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @ERR, align 4
  store i32 %23, i32* %2, align 4
  br label %80

24:                                               ; preds = %19
  %25 = load i8*, i8** @ibufp, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* %8, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** @ibufp, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** @ibufp, align 8
  br label %34

34:                                               ; preds = %31, %24
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  %37 = call i32 (...) @clear_active_list()
  %38 = load i64, i64* @first_addr, align 8
  %39 = call %struct.TYPE_5__* @get_addressed_line_node(i64 %38)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %5, align 8
  %40 = load i64, i64* @first_addr, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %73, %36
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @second_addr, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %41
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = call i8* @get_sbuf_line(%struct.TYPE_5__* %46)
  store i8* %47, i8** %7, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @ERR, align 4
  store i32 %50, i32* %2, align 4
  br label %80

51:                                               ; preds = %45
  %52 = load i64, i64* @isbinary, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @NUL_TO_NEWLINE(i8* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @regexec(i32* %61, i8* %62, i32 0, i32* null, i32 0)
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = call i64 @set_active_node(%struct.TYPE_5__* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @ERR, align 4
  store i32 %71, i32* %2, align 4
  br label %80

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %6, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %5, align 8
  br label %41

79:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %70, %49, %22, %17
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32* @get_compiled_pattern(...) #1

declare dso_local i32 @clear_active_list(...) #1

declare dso_local %struct.TYPE_5__* @get_addressed_line_node(i64) #1

declare dso_local i8* @get_sbuf_line(%struct.TYPE_5__*) #1

declare dso_local i32 @NUL_TO_NEWLINE(i8*, i32) #1

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i64 @set_active_node(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
