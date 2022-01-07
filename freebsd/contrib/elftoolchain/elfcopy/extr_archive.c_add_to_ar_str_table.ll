; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_add_to_ar_str_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_add_to_ar_str_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i8*, i32, i64 }

@_INIT_AS_CAP = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i8*)* @add_to_ar_str_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_ar_str_table(%struct.elfcopy* %0, i8* %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca i8*, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %6 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load i32, i32* @_INIT_AS_CAP, align 4
  %11 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %12 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %14 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %16 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @malloc(i32 %17)
  %19 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %20 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = icmp eq i8* %18, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  %24 = call i32 @err(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %9
  br label %26

26:                                               ; preds = %25, %2
  br label %27

27:                                               ; preds = %62, %26
  %28 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %29 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = add i64 %30, %33
  %35 = add i64 %34, 3
  %36 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %37 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %35, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %27
  %42 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %43 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %43, align 8
  %46 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %47 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %50 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @realloc(i8* %48, i32 %51)
  %53 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %54 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %56 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %41
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @err(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %41
  br label %27

63:                                               ; preds = %27
  %64 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %65 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %68 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8*, i8** %4, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = call i32 @strncpy(i8* %70, i8* %71, i32 %73)
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %79 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %83 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %86 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 47, i8* %89, align 1
  %90 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %91 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %94 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 10, i8* %97, align 1
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
