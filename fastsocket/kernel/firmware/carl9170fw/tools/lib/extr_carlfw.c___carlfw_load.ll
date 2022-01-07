; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c___carlfw_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c___carlfw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw_file = type { i32, i32, i32* }
%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carlfw_file*, i8*, i8*)* @__carlfw_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__carlfw_load(%struct.carlfw_file* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.carlfw_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.carlfw_file* %0, %struct.carlfw_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32* @fopen(i8* %11, i8* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32, i32* @errno, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @errno, align 4
  %21 = sub nsw i32 0, %20
  br label %23

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ -1, %22 ]
  store i32 %24, i32* %4, align 4
  br label %88

25:                                               ; preds = %3
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @fileno(i32* %26)
  %28 = call i32 @fstat(i32 %27, %struct.stat* %8)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32, i32* @errno, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @errno, align 4
  %36 = sub nsw i32 0, %35
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ -1, %37 ]
  store i32 %39, i32* %4, align 4
  br label %88

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.carlfw_file*, %struct.carlfw_file** %5, align 8
  %44 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.carlfw_file*, %struct.carlfw_file** %5, align 8
  %46 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @malloc(i32 %47)
  %49 = load %struct.carlfw_file*, %struct.carlfw_file** %5, align 8
  %50 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.carlfw_file*, %struct.carlfw_file** %5, align 8
  %52 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %88

58:                                               ; preds = %40
  %59 = load %struct.carlfw_file*, %struct.carlfw_file** %5, align 8
  %60 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.carlfw_file*, %struct.carlfw_file** %5, align 8
  %63 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @fread(i32* %61, i32 %64, i32 1, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @ferror(i32* %70)
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %88

73:                                               ; preds = %58
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strdup(i8* %74)
  %76 = load %struct.carlfw_file*, %struct.carlfw_file** %5, align 8
  %77 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @fclose(i32* %78)
  %80 = load %struct.carlfw_file*, %struct.carlfw_file** %5, align 8
  %81 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %88

87:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %84, %69, %55, %38, %23
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
