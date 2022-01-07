; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_add_to_ar_str_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_add_to_ar_str_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i8*, i32, i64 }

@_INIT_AS_CAP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, i8*)* @add_to_ar_str_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_ar_str_table(%struct.bsdar* %0, i8* %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca i8*, align 8
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %6 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load i32, i32* @_INIT_AS_CAP, align 4
  %11 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %12 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %14 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %16 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @malloc(i32 %17)
  %19 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %20 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = icmp eq i8* %18, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %9
  %23 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @bsdar_errc(%struct.bsdar* %23, i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %9
  br label %27

27:                                               ; preds = %26, %2
  br label %28

28:                                               ; preds = %64, %27
  %29 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %30 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = sext i32 %33 to i64
  %35 = add i64 %31, %34
  %36 = add i64 %35, 3
  %37 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %38 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %36, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %28
  %43 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %44 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %44, align 8
  %47 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %48 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %51 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @realloc(i8* %49, i32 %52)
  %54 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %55 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %57 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %42
  %61 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @bsdar_errc(%struct.bsdar* %61, i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %42
  br label %28

65:                                               ; preds = %28
  %66 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %67 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %70 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = call i32 @strncpy(i8* %72, i8* %73, i32 %75)
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = sext i32 %78 to i64
  %80 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %81 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %85 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %88 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 47, i8* %91, align 1
  %92 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %93 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %96 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = getelementptr inbounds i8, i8* %94, i64 %97
  store i8 10, i8* %99, align 1
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
