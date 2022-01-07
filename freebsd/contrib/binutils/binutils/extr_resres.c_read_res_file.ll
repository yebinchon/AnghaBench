; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_read_res_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_read_res_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"can't open '%s' for input.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"bfd_get_section_by_name\00", align 1
@target_is_bigendian = common dso_local global i64 0, align 8
@WR_KIND_BFD_BIN_B = common dso_local global i32 0, align 4
@WR_KIND_BFD_BIN_L = common dso_local global i32 0, align 4
@resources = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @read_res_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** @filename, align 8
  %9 = load i8*, i8** @filename, align 8
  %10 = call i64 @get_file_size(i8* %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** @filename, align 8
  %15 = call i32 @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i8*, i8** @filename, align 8
  %18 = call i32* @windres_open_as_binary(i8* %17, i32 1)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @bfd_get_section_by_name(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @bfd_fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i64, i64* @target_is_bigendian, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @WR_KIND_BFD_BIN_B, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @WR_KIND_BFD_BIN_L, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 @set_windres_bfd(i32* %5, i32* %26, i32* %27, i32 %35)
  store i64 0, i64* %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @probe_binary(i32* %5, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* @target_is_bigendian, align 8
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @set_windres_bfd_endianess(i32* %5, i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @skip_null_resource(i32* %5, i64* %3, i64 %47)
  br label %49

49:                                               ; preds = %53, %46
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @read_resource_entry(i32* %5, i64* %3, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %49

54:                                               ; preds = %49
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @bfd_close(i32* %55)
  %57 = load i32*, i32** @resources, align 8
  ret i32* %57
}

declare dso_local i64 @get_file_size(i8*) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i32* @windres_open_as_binary(i8*, i32) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i32 @set_windres_bfd(i32*, i32*, i32*, i32) #1

declare dso_local i32 @probe_binary(i32*, i64) #1

declare dso_local i32 @set_windres_bfd_endianess(i32*, i32) #1

declare dso_local i32 @skip_null_resource(i32*, i64*, i64) #1

declare dso_local i64 @read_resource_entry(i32*, i64*, i64) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
