; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_add_section_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_add_section_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, %struct.TYPE_4__* }

@section_rename_list = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Multiple renames of section %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @add_section_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_section_rename(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_rename_list, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %7, align 8
  br label %9

9:                                                ; preds = %38, %3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strcmp(i8* %15, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %57

33:                                               ; preds = %26, %19
  %34 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @fatal(i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %12
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %7, align 8
  br label %9

42:                                               ; preds = %9
  %43 = call %struct.TYPE_4__* @xmalloc(i32 32)
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %7, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_rename_list, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** @section_rename_list, align 8
  br label %57

57:                                               ; preds = %42, %32
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_4__* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
