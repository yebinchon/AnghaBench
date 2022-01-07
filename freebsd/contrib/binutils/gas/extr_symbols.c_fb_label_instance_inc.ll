; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_fb_label_instance_inc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_fb_label_instance_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FB_LABEL_SPECIAL = common dso_local global i64 0, align 8
@fb_low_counter = common dso_local global i32* null, align 8
@fb_labels = common dso_local global i64* null, align 8
@fb_label_count = common dso_local global i64 0, align 8
@fb_label_instances = common dso_local global i32* null, align 8
@FB_LABEL_BUMP_BY = common dso_local global i32 0, align 4
@fb_label_max = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fb_label_instance_inc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @FB_LABEL_SPECIAL, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32*, i32** @fb_low_counter, align 8
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  br label %100

13:                                               ; preds = %1
  %14 = load i64*, i64** @fb_labels, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load i64*, i64** @fb_labels, align 8
  %18 = load i64, i64* @FB_LABEL_SPECIAL, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64* %19, i64** %3, align 8
  br label %20

20:                                               ; preds = %43, %16
  %21 = load i64*, i64** %3, align 8
  %22 = load i64*, i64** @fb_labels, align 8
  %23 = load i64, i64* @fb_label_count, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = icmp ult i64* %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load i64*, i64** %3, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %2, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32*, i32** @fb_label_instances, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = load i64*, i64** @fb_labels, align 8
  %35 = ptrtoint i64* %33 to i64
  %36 = ptrtoint i64* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = getelementptr inbounds i32, i32* %32, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %100

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load i64*, i64** %3, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %3, align 8
  br label %20

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %46, %13
  %48 = load i64*, i64** @fb_labels, align 8
  %49 = icmp eq i64* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i32, i32* @FB_LABEL_BUMP_BY, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 8
  %54 = trunc i64 %53 to i32
  %55 = call i64 @xmalloc(i32 %54)
  %56 = inttoptr i64 %55 to i64*
  store i64* %56, i64** @fb_labels, align 8
  %57 = load i32, i32* @FB_LABEL_BUMP_BY, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @xmalloc(i32 %60)
  %62 = inttoptr i64 %61 to i64*
  %63 = bitcast i64* %62 to i32*
  store i32* %63, i32** @fb_label_instances, align 8
  %64 = load i32, i32* @FB_LABEL_BUMP_BY, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* @fb_label_max, align 8
  %66 = load i64, i64* @FB_LABEL_SPECIAL, align 8
  store i64 %66, i64* @fb_label_count, align 8
  br label %90

67:                                               ; preds = %47
  %68 = load i64, i64* @fb_label_count, align 8
  %69 = load i64, i64* @fb_label_max, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i32, i32* @FB_LABEL_BUMP_BY, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @fb_label_max, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* @fb_label_max, align 8
  %76 = load i64*, i64** @fb_labels, align 8
  %77 = bitcast i64* %76 to i8*
  %78 = load i64, i64* @fb_label_max, align 8
  %79 = mul i64 %78, 8
  %80 = call i64 @xrealloc(i8* %77, i64 %79)
  %81 = inttoptr i64 %80 to i64*
  store i64* %81, i64** @fb_labels, align 8
  %82 = load i32*, i32** @fb_label_instances, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = load i64, i64* @fb_label_max, align 8
  %85 = mul i64 %84, 8
  %86 = call i64 @xrealloc(i8* %83, i64 %85)
  %87 = inttoptr i64 %86 to i64*
  %88 = bitcast i64* %87 to i32*
  store i32* %88, i32** @fb_label_instances, align 8
  br label %89

89:                                               ; preds = %71, %67
  br label %90

90:                                               ; preds = %89, %50
  %91 = load i64, i64* %2, align 8
  %92 = load i64*, i64** @fb_labels, align 8
  %93 = load i64, i64* @fb_label_count, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64 %91, i64* %94, align 8
  %95 = load i32*, i32** @fb_label_instances, align 8
  %96 = load i64, i64* @fb_label_count, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 1, i32* %97, align 4
  %98 = load i64, i64* @fb_label_count, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* @fb_label_count, align 8
  br label %100

100:                                              ; preds = %90, %31, %7
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @xrealloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
