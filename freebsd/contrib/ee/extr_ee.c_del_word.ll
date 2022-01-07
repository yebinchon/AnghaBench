; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_del_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_del_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@d_word = common dso_local global i8* null, align 8
@curr_line = common dso_local global %struct.TYPE_2__* null, align 8
@d_char = common dso_local global i8* null, align 8
@point = common dso_local global i8* null, align 8
@position = common dso_local global i32 0, align 4
@d_wrd_len = common dso_local global i32 0, align 4
@scr_vert = common dso_local global i32 0, align 4
@scr_horz = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@text_changes = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@formatted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_word() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [3 x i8], align 1
  %6 = load i8*, i8** @d_word, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i8*, i8** @d_word, align 8
  %10 = call i32 @free(i8* %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** @d_word, align 8
  %16 = load i8*, i8** @d_char, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  store i8 %18, i8* %19, align 1
  %20 = load i8*, i8** @d_char, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  store i8 %22, i8* %23, align 1
  %24 = load i8*, i8** @d_char, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  store i8 %26, i8* %27, align 1
  %28 = load i8*, i8** @point, align 8
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** @d_word, align 8
  store i8* %29, i8** %3, align 8
  %30 = load i32, i32* @position, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %51, %11
  %32 = load i32, i32* %1, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 32
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 9
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br label %49

49:                                               ; preds = %47, %31
  %50 = phi i1 [ false, %31 ], [ %48, %47 ]
  br i1 %50, label %51, label %61

51:                                               ; preds = %49
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %3, align 8
  store i8 %55, i8* %56, align 1
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  br label %31

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i32, i32* %1, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %4, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 9
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ true, %68 ], [ %77, %73 ]
  br label %80

80:                                               ; preds = %78, %62
  %81 = phi i1 [ false, %62 ], [ %79, %78 ]
  br i1 %81, label %82, label %92

82:                                               ; preds = %80
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %3, align 8
  store i8 %86, i8* %87, align 1
  %88 = load i8*, i8** %3, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %3, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  br label %62

92:                                               ; preds = %80
  %93 = load i8*, i8** %3, align 8
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %3, align 8
  %95 = load i8*, i8** @d_word, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %2, align 4
  store i32 %99, i32* @d_wrd_len, align 4
  %100 = load i8*, i8** @point, align 8
  store i8* %100, i8** %3, align 8
  br label %101

101:                                              ; preds = %107, %92
  %102 = load i32, i32* %1, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %1, align 4
  %110 = load i8*, i8** %4, align 8
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %3, align 8
  store i8 %111, i8* %112, align 1
  %113 = load i8*, i8** %3, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %3, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %4, align 8
  br label %101

117:                                              ; preds = %101
  %118 = load i32, i32* %2, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load i8*, i8** %3, align 8
  store i8 0, i8* %123, align 1
  %124 = load i32, i32* @scr_vert, align 4
  %125 = load i32, i32* @scr_horz, align 4
  %126 = load i8*, i8** @point, align 8
  %127 = load i32, i32* @position, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @draw_line(i32 %124, i32 %125, i8* %126, i32 %127, i32 %130)
  %132 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = load i8*, i8** @d_char, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  store i8 %133, i8* %135, align 1
  %136 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** @d_char, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  store i8 %137, i8* %139, align 1
  %140 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** @d_char, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  store i8 %141, i8* %143, align 1
  %144 = load i32, i32* @TRUE, align 4
  store i32 %144, i32* @text_changes, align 4
  %145 = load i32, i32* @FALSE, align 4
  store i32 %145, i32* @formatted, align 4
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @draw_line(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
