; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_write_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_write_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [55 x i8] c"could not create temporary file whilst writing archive\00", align 1
@output_filename = common dso_local global i8* null, align 8
@output_bfd = common dso_local global %struct.TYPE_11__* null, align 8
@bfd_archive = common dso_local global i32 0, align 4
@write_armap = common dso_local global i64 0, align 8
@ar_truncate = common dso_local global i64 0, align 8
@BFD_TRADITIONAL_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @write_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_archive(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = call i32 @bfd_get_filename(%struct.TYPE_11__* %10)
  %12 = call i64 @strlen(i32 %11)
  %13 = add nsw i64 %12, 1
  %14 = call i8* @xmalloc(i64 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = call i32 @bfd_get_filename(%struct.TYPE_11__* %16)
  %18 = call i32 @strcpy(i8* %15, i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @make_tempname(i8* %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @bfd_fatal(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** @output_filename, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = call i32 @bfd_get_target(%struct.TYPE_11__* %28)
  %30 = call %struct.TYPE_11__* @bfd_openw(i8* %27, i32 %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %3, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = icmp eq %struct.TYPE_11__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @bfd_fatal(i8* %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** @output_bfd, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = load i32, i32* @bfd_archive, align 4
  %40 = call i32 @bfd_set_format(%struct.TYPE_11__* %38, i32 %39)
  %41 = load i64, i64* @write_armap, align 8
  %42 = icmp sge i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* @ar_truncate, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load i32, i32* @BFD_TRADITIONAL_FORMAT, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %36
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = call i32 @bfd_set_archive_head(%struct.TYPE_11__* %55, %struct.TYPE_11__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @bfd_fatal(i8* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = call i32 @bfd_close(%struct.TYPE_11__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @bfd_fatal(i8* %67)
  br label %69

69:                                               ; preds = %66, %62
  store %struct.TYPE_11__* null, %struct.TYPE_11__** @output_bfd, align 8
  store i8* null, i8** @output_filename, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = call i32 @bfd_close(%struct.TYPE_11__* %70)
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 @smart_rename(i8* %72, i8* %73, i32 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 @xexit(i32 1)
  br label %78

78:                                               ; preds = %76, %69
  ret void
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @bfd_get_filename(%struct.TYPE_11__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @make_tempname(i8*) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local %struct.TYPE_11__* @bfd_openw(i8*, i32) #1

declare dso_local i32 @bfd_get_target(%struct.TYPE_11__*) #1

declare dso_local i32 @bfd_set_format(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bfd_set_archive_head(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @bfd_close(%struct.TYPE_11__*) #1

declare dso_local i64 @smart_rename(i8*, i8*, i32) #1

declare dso_local i32 @xexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
