; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_fb_label_instance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_fb_label_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FB_LABEL_SPECIAL = common dso_local global i64 0, align 8
@fb_low_counter = common dso_local global i64* null, align 8
@fb_labels = common dso_local global i64* null, align 8
@fb_label_count = common dso_local global i32 0, align 4
@fb_label_instances = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @fb_label_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fb_label_instance(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @FB_LABEL_SPECIAL, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i64*, i64** @fb_low_counter, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %2, align 8
  br label %48

13:                                               ; preds = %1
  %14 = load i64*, i64** @fb_labels, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load i64*, i64** @fb_labels, align 8
  %18 = load i64, i64* @FB_LABEL_SPECIAL, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64* %19, i64** %4, align 8
  br label %20

20:                                               ; preds = %43, %16
  %21 = load i64*, i64** %4, align 8
  %22 = load i64*, i64** @fb_labels, align 8
  %23 = load i32, i32* @fb_label_count, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = icmp ult i64* %21, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %20
  %28 = load i64*, i64** %4, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i64*, i64** @fb_label_instances, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load i64*, i64** @fb_labels, align 8
  %36 = ptrtoint i64* %34 to i64
  %37 = ptrtoint i64* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 8
  %40 = getelementptr inbounds i64, i64* %33, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %2, align 8
  br label %48

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64*, i64** %4, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %4, align 8
  br label %20

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %46, %13
  store i64 0, i64* %2, align 8
  br label %48

48:                                               ; preds = %47, %32, %8
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
