; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kobject.c_kobject_set_name_vargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kobject.c_kobject_set_name_vargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kobject_set_name_vargs(%struct.kobject* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = getelementptr inbounds %struct.kobject, %struct.kobject* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.kobject*, %struct.kobject** %5, align 8
  %14 = getelementptr inbounds %struct.kobject, %struct.kobject* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %48

21:                                               ; preds = %17, %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @kvasprintf(i32 %22, i8* %23, i32 %24)
  %26 = load %struct.kobject*, %struct.kobject** %5, align 8
  %27 = getelementptr inbounds %struct.kobject, %struct.kobject* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.kobject*, %struct.kobject** %5, align 8
  %29 = getelementptr inbounds %struct.kobject, %struct.kobject* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %48

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %42, %35
  %37 = load %struct.kobject*, %struct.kobject** %5, align 8
  %38 = getelementptr inbounds %struct.kobject, %struct.kobject* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 47)
  store i8* %40, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 33, i8* %44, align 1
  br label %36

45:                                               ; preds = %36
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @kfree(i8* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %32, %20
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i8* @kvasprintf(i32, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
