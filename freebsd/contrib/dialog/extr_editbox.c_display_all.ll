; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_editbox.c_display_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_editbox.c_display_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dialog_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i32, i32, i32, i32)* @display_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_all(i32* %0, i8** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @getmaxy(i32* %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @getmaxy(i32* %18)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @getmaxx(i32* %20)
  %22 = load i32, i32* @dialog_attr, align 4
  %23 = call i32 @dlg_attr_clear(i32* %17, i32 %19, i32 %21, i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32, i32* %13, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %29, %6
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %61, %33
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = load i8**, i8*** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* %12, align 4
  br label %55

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = call i32 @display_one(i32* %40, i8* %45, i32 %46, i32 %47, i32 %48, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %64

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %35

64:                                               ; preds = %59, %35
  ret void
}

declare dso_local i32 @getmaxy(i32*) #1

declare dso_local i32 @dlg_attr_clear(i32*, i32, i32, i32) #1

declare dso_local i32 @getmaxx(i32*) #1

declare dso_local i32 @display_one(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
