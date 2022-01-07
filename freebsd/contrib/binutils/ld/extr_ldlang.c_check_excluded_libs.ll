; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_check_excluded_libs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_check_excluded_libs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.excluded_lib = type { %struct.excluded_lib*, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@excluded_libs = common dso_local global %struct.excluded_lib* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @check_excluded_libs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_excluded_libs(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.excluded_lib*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.excluded_lib*, %struct.excluded_lib** @excluded_libs, align 8
  store %struct.excluded_lib* %6, %struct.excluded_lib** %3, align 8
  br label %7

7:                                                ; preds = %74, %1
  %8 = load %struct.excluded_lib*, %struct.excluded_lib** %3, align 8
  %9 = icmp ne %struct.excluded_lib* %8, null
  br i1 %9, label %10, label %78

10:                                               ; preds = %7
  %11 = load %struct.excluded_lib*, %struct.excluded_lib** %3, align 8
  %12 = getelementptr inbounds %struct.excluded_lib, %struct.excluded_lib* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strlen(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @lbasename(i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load %struct.excluded_lib*, %struct.excluded_lib** %3, align 8
  %20 = getelementptr inbounds %struct.excluded_lib, %struct.excluded_lib* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %10
  %25 = load i8*, i8** @TRUE, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %78

28:                                               ; preds = %10
  %29 = load %struct.excluded_lib*, %struct.excluded_lib** %3, align 8
  %30 = getelementptr inbounds %struct.excluded_lib, %struct.excluded_lib* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @strncmp(i32 %31, i8* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %36
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %74

52:                                               ; preds = %44
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 97
  br i1 %60, label %61, label %74

61:                                               ; preds = %52
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61, %36
  %71 = load i8*, i8** @TRUE, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %78

74:                                               ; preds = %61, %52, %44, %28
  %75 = load %struct.excluded_lib*, %struct.excluded_lib** %3, align 8
  %76 = getelementptr inbounds %struct.excluded_lib, %struct.excluded_lib* %75, i32 0, i32 0
  %77 = load %struct.excluded_lib*, %struct.excluded_lib** %76, align 8
  store %struct.excluded_lib* %77, %struct.excluded_lib** %3, align 8
  br label %7

78:                                               ; preds = %24, %70, %7
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @lbasename(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
