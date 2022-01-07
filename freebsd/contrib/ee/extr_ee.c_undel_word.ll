; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_undel_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_undel_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@curr_line = common dso_local global %struct.TYPE_3__* null, align 8
@d_wrd_len = common dso_local global i32 0, align 4
@position = common dso_local global i32 0, align 4
@point = common dso_local global i8* null, align 8
@d_word = common dso_local global i8* null, align 8
@scr_vert = common dso_local global i32 0, align 4
@scr_horz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @undel_word() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_line, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_line, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @d_wrd_len, align 4
  %14 = add nsw i32 %12, %13
  %15 = sub nsw i32 %9, %14
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load i32, i32* @d_wrd_len, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_line, align 8
  %20 = load i32, i32* @position, align 4
  %21 = call i8* @resiz_line(i32 %18, %struct.TYPE_3__* %19, i32 %20)
  store i8* %21, i8** @point, align 8
  br label %22

22:                                               ; preds = %17, %0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_line, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @d_wrd_len, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i8* @malloc(i32 %27)
  store i8* %28, i8** %4, align 8
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** @d_word, align 8
  store i8* %29, i8** %6, align 8
  store i32 1, i32* %1, align 4
  br label %30

30:                                               ; preds = %34, %22
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @d_wrd_len, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %5, align 8
  store i8 %38, i8* %39, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  br label %30

44:                                               ; preds = %30
  %45 = load i8*, i8** @point, align 8
  store i8* %45, i8** %3, align 8
  %46 = load i32, i32* @position, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %53, %44
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_line, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %5, align 8
  store i8 %59, i8* %60, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %3, align 8
  br label %47

65:                                               ; preds = %47
  %66 = load i32, i32* @d_wrd_len, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_line, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i8*, i8** @point, align 8
  store i8* %71, i8** %3, align 8
  %72 = load i8*, i8** %5, align 8
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %4, align 8
  store i8* %73, i8** %5, align 8
  store i32 1, i32* %2, align 4
  br label %74

74:                                               ; preds = %78, %65
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* %1, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %2, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %3, align 8
  store i8 %82, i8* %83, align 1
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %3, align 8
  br label %74

88:                                               ; preds = %74
  %89 = load i8*, i8** %3, align 8
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i32, i32* @scr_vert, align 4
  %93 = load i32, i32* @scr_horz, align 4
  %94 = load i8*, i8** @point, align 8
  %95 = load i32, i32* @position, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_line, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @draw_line(i32 %92, i32 %93, i8* %94, i32 %95, i32 %98)
  ret void
}

declare dso_local i8* @resiz_line(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @draw_line(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
