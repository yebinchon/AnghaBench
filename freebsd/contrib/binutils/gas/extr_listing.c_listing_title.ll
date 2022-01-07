; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_title.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@is_end_of_line = common dso_local global i32* null, align 8
@listing = common dso_local global i64 0, align 8
@EDICT_SBTTL = common dso_local global i32 0, align 4
@EDICT_TITLE = common dso_local global i32 0, align 4
@listing_tail = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"new line in title\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listing_title(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @SKIP_WHITESPACE()
  %8 = load i8*, i8** @input_line_pointer, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 34
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

13:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %14 = load i8*, i8** @input_line_pointer, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** @input_line_pointer, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = load i8*, i8** @input_line_pointer, align 8
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %93, %16
  %19 = load i8*, i8** @input_line_pointer, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8*, i8** @input_line_pointer, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 34
  br i1 %29, label %38, label %80

30:                                               ; preds = %22
  %31 = load i32*, i32** @is_end_of_line, align 8
  %32 = load i8*, i8** @input_line_pointer, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %30, %25
  %39 = load i64, i64* @listing, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %38
  %42 = load i8*, i8** @input_line_pointer, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  %50 = call i8* @xmalloc(i32 %49)
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @memcpy(i8* %51, i8* %52, i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i32, i32* %2, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %41
  %62 = load i32, i32* @EDICT_SBTTL, align 4
  br label %65

63:                                               ; preds = %41
  %64 = load i32, i32* @EDICT_TITLE, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @listing_tail, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @listing_tail, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %65, %38
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** @input_line_pointer, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** @input_line_pointer, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = call i32 (...) @demand_empty_rest_of_line()
  br label %94

80:                                               ; preds = %30, %25
  %81 = load i8*, i8** @input_line_pointer, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %87 = call i32 @as_bad(i32 %86)
  %88 = call i32 (...) @demand_empty_rest_of_line()
  br label %94

89:                                               ; preds = %80
  %90 = load i8*, i8** @input_line_pointer, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** @input_line_pointer, align 8
  br label %92

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92
  br label %18

94:                                               ; preds = %78, %85, %18
  ret void
}

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
