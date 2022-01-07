; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_hashtab.c_hashtab_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_hashtab.c_hashtab_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab = type { i32, i32 (%struct.hashtab*, i8*)*, i32 (%struct.hashtab*, i8*, i8*)*, i32**, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hashtab* @hashtab_create(i32 (%struct.hashtab*, i8*)* %0, i32 (%struct.hashtab*, i8*, i8*)* %1, i32 %2) #0 {
  %4 = alloca %struct.hashtab*, align 8
  %5 = alloca i32 (%struct.hashtab*, i8*)*, align 8
  %6 = alloca i32 (%struct.hashtab*, i8*, i8*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hashtab*, align 8
  %9 = alloca i32, align 4
  store i32 (%struct.hashtab*, i8*)* %0, i32 (%struct.hashtab*, i8*)** %5, align 8
  store i32 (%struct.hashtab*, i8*, i8*)* %1, i32 (%struct.hashtab*, i8*, i8*)** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hashtab* @kzalloc(i32 40, i32 %10)
  store %struct.hashtab* %11, %struct.hashtab** %8, align 8
  %12 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  %13 = icmp eq %struct.hashtab* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  store %struct.hashtab* %15, %struct.hashtab** %4, align 8
  br label %60

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  %19 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  %21 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load i32 (%struct.hashtab*, i8*)*, i32 (%struct.hashtab*, i8*)** %5, align 8
  %23 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  %24 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %23, i32 0, i32 1
  store i32 (%struct.hashtab*, i8*)* %22, i32 (%struct.hashtab*, i8*)** %24, align 8
  %25 = load i32 (%struct.hashtab*, i8*, i8*)*, i32 (%struct.hashtab*, i8*, i8*)** %6, align 8
  %26 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  %27 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %26, i32 0, i32 2
  store i32 (%struct.hashtab*, i8*, i8*)* %25, i32 (%struct.hashtab*, i8*, i8*)** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 8, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32** @kmalloc(i32 %31, i32 %32)
  %34 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  %35 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %34, i32 0, i32 3
  store i32** %33, i32*** %35, align 8
  %36 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  %37 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %36, i32 0, i32 3
  %38 = load i32**, i32*** %37, align 8
  %39 = icmp eq i32** %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %16
  %41 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  %42 = call i32 @kfree(%struct.hashtab* %41)
  store %struct.hashtab* null, %struct.hashtab** %4, align 8
  br label %60

43:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  %50 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load %struct.hashtab*, %struct.hashtab** %8, align 8
  store %struct.hashtab* %59, %struct.hashtab** %4, align 8
  br label %60

60:                                               ; preds = %58, %40, %14
  %61 = load %struct.hashtab*, %struct.hashtab** %4, align 8
  ret %struct.hashtab* %61
}

declare dso_local %struct.hashtab* @kzalloc(i32, i32) #1

declare dso_local i32** @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.hashtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
