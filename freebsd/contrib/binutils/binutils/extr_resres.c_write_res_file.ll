; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_write_res_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_write_res_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@write_res_file.sign = internal constant <{ [14 x i32], [18 x i32] }> <{ [14 x i32] [i32 0, i32 0, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255], [18 x i32] zeroinitializer }>, align 16
@filename = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bfd_make_section\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"bfd_set_section_flags\00", align 1
@target_is_bigendian = common dso_local global i64 0, align 8
@WR_KIND_BFD_BIN_B = common dso_local global i32 0, align 4
@WR_KIND_BFD_BIN_L = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"bfd_set_section_size\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"res write failed with different sizes (%lu/%lu).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_res_file(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %9, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** @filename, align 8
  %12 = load i8*, i8** @filename, align 8
  %13 = call i32* @windres_open_as_binary(i8* %12, i32 0)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.TYPE_6__* @bfd_make_section(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @bfd_fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %24 = load i32, i32* @SEC_ALLOC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SEC_LOAD, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SEC_DATA, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @bfd_set_section_flags(i32* %21, %struct.TYPE_6__* %22, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %20
  %33 = call i32 @bfd_fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %20
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %37, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = load i64, i64* @target_is_bigendian, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @WR_KIND_BFD_BIN_B, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @WR_KIND_BFD_BIN_L, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @set_windres_bfd(i32* %8, i32* %38, %struct.TYPE_6__* %39, i32 %47)
  store i32 -1, i32* %6, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @write_res_directory(i32* null, i32 32, i32* %49, i32* null, i32* null, i32* %6, i32 1)
  store i64 %50, i64* %9, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 3
  %55 = and i64 %54, -4
  %56 = call i32 @bfd_set_section_size(i32* %51, %struct.TYPE_6__* %52, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %46
  %59 = call i32 @bfd_fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %46
  %61 = load i64, i64* %9, align 8
  %62 = and i64 %61, 3
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = and i64 %66, 3
  %68 = sub i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @set_windres_bfd_content(i32* %8, i32* getelementptr inbounds ([32 x i32], [32 x i32]* bitcast (<{ [14 x i32], [18 x i32] }>* @write_res_file.sign to [32 x i32]*), i64 0, i64 0), i64 %65, i32 %69)
  br label %71

71:                                               ; preds = %64, %60
  %72 = call i32 @set_windres_bfd_content(i32* %8, i32* getelementptr inbounds ([32 x i32], [32 x i32]* bitcast (<{ [14 x i32], [18 x i32] }>* @write_res_file.sign to [32 x i32]*), i64 0, i64 0), i64 0, i32 128)
  store i32 -1, i32* %6, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = call i64 @write_res_directory(i32* %8, i32 32, i32* %73, i32* null, i32* null, i32* %6, i32 1)
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %79, i64 %80)
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @bfd_close(i32* %83)
  ret void
}

declare dso_local i32* @windres_open_as_binary(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @bfd_make_section(i32*, i8*) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i32 @bfd_set_section_flags(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @set_windres_bfd(i32*, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @write_res_directory(i32*, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @bfd_set_section_size(i32*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @set_windres_bfd_content(i32*, i32*, i64, i32) #1

declare dso_local i32 @fatal(i8*, i64, i64) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
