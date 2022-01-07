; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_patch_subfile_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_patch_subfile_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subfile = type { i8*, i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@last_source_file = common dso_local global i8* null, align 8
@language_unknown = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @patch_subfile_names(%struct.subfile* %0, i8* %1) #0 {
  %3 = alloca %struct.subfile*, align 8
  %4 = alloca i8*, align 8
  store %struct.subfile* %0, %struct.subfile** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.subfile*, %struct.subfile** %3, align 8
  %6 = icmp ne %struct.subfile* %5, null
  br i1 %6, label %7, label %69

7:                                                ; preds = %2
  %8 = load %struct.subfile*, %struct.subfile** %3, align 8
  %9 = getelementptr inbounds %struct.subfile, %struct.subfile* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %69

12:                                               ; preds = %7
  %13 = load %struct.subfile*, %struct.subfile** %3, align 8
  %14 = getelementptr inbounds %struct.subfile, %struct.subfile* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %69

17:                                               ; preds = %12
  %18 = load %struct.subfile*, %struct.subfile** %3, align 8
  %19 = getelementptr inbounds %struct.subfile, %struct.subfile* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.subfile*, %struct.subfile** %3, align 8
  %22 = getelementptr inbounds %struct.subfile, %struct.subfile* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %20, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %69

31:                                               ; preds = %17
  %32 = load %struct.subfile*, %struct.subfile** %3, align 8
  %33 = getelementptr inbounds %struct.subfile, %struct.subfile* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.subfile*, %struct.subfile** %3, align 8
  %36 = getelementptr inbounds %struct.subfile, %struct.subfile* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call i8* @savestring(i8* %37, i32 %39)
  %41 = load %struct.subfile*, %struct.subfile** %3, align 8
  %42 = getelementptr inbounds %struct.subfile, %struct.subfile* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** @last_source_file, align 8
  %44 = load %struct.subfile*, %struct.subfile** %3, align 8
  %45 = getelementptr inbounds %struct.subfile, %struct.subfile* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @deduce_language_from_filename(i8* %46)
  %48 = load %struct.subfile*, %struct.subfile** %3, align 8
  %49 = getelementptr inbounds %struct.subfile, %struct.subfile* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.subfile*, %struct.subfile** %3, align 8
  %51 = getelementptr inbounds %struct.subfile, %struct.subfile* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @language_unknown, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %31
  %56 = load %struct.subfile*, %struct.subfile** %3, align 8
  %57 = getelementptr inbounds %struct.subfile, %struct.subfile* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = icmp ne %struct.TYPE_2__* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.subfile*, %struct.subfile** %3, align 8
  %62 = getelementptr inbounds %struct.subfile, %struct.subfile* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.subfile*, %struct.subfile** %3, align 8
  %67 = getelementptr inbounds %struct.subfile, %struct.subfile* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %60, %55, %31
  br label %69

69:                                               ; preds = %68, %17, %12, %7, %2
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i64 @deduce_language_from_filename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
