; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_add_excluded_libs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_add_excluded_libs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.excluded_lib = type { i8*, %struct.excluded_lib* }

@.str = private unnamed_addr constant [3 x i8] c",:\00", align 1
@excluded_libs = common dso_local global %struct.excluded_lib* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_excluded_libs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.excluded_lib*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %3, align 8
  br label %7

7:                                                ; preds = %65, %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strpbrk(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %17, %12
  %24 = call i8* @xmalloc(i32 16)
  %25 = bitcast i8* %24 to %struct.excluded_lib*
  store %struct.excluded_lib* %25, %struct.excluded_lib** %5, align 8
  %26 = load %struct.excluded_lib*, %struct.excluded_lib** @excluded_libs, align 8
  %27 = load %struct.excluded_lib*, %struct.excluded_lib** %5, align 8
  %28 = getelementptr inbounds %struct.excluded_lib, %struct.excluded_lib* %27, i32 0, i32 1
  store %struct.excluded_lib* %26, %struct.excluded_lib** %28, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = add nsw i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i8* @xmalloc(i32 %35)
  %37 = load %struct.excluded_lib*, %struct.excluded_lib** %5, align 8
  %38 = getelementptr inbounds %struct.excluded_lib, %struct.excluded_lib* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.excluded_lib*, %struct.excluded_lib** %5, align 8
  %40 = getelementptr inbounds %struct.excluded_lib, %struct.excluded_lib* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(i8* %41, i8* %42, i32 %48)
  %50 = load %struct.excluded_lib*, %struct.excluded_lib** %5, align 8
  %51 = getelementptr inbounds %struct.excluded_lib, %struct.excluded_lib* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load %struct.excluded_lib*, %struct.excluded_lib** %5, align 8
  store %struct.excluded_lib* %59, %struct.excluded_lib** @excluded_libs, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %23
  br label %68

65:                                               ; preds = %23
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %3, align 8
  br label %7

68:                                               ; preds = %64, %7
  ret void
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
