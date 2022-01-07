; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_fill_in_gnu_debuglink_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_fill_in_gnu_debuglink_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_section = type { i32 }

@bfd_fill_in_gnu_debuglink_section.buffer = internal global [8192 x i8] zeroinitializer, align 16
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FOPEN_RB = common dso_local global i32 0, align 4
@bfd_error_system_call = common dso_local global i32 0, align 4
@bfd_error_no_memory = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_fill_in_gnu_debuglink_section(i32* %0, %struct.bfd_section* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_section*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_section* %1, %struct.bfd_section** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  %18 = icmp eq %struct.bfd_section* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %16, %3
  %23 = load i32, i32* @bfd_error_invalid_operation, align 4
  %24 = call i32 @bfd_set_error(i32 %23)
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %92

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @FOPEN_RB, align 4
  %29 = call i32* @real_fopen(i8* %27, i32 %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @bfd_error_system_call, align 4
  %34 = call i32 @bfd_set_error(i32 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %92

36:                                               ; preds = %26
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32*, i32** %12, align 8
  %39 = call i64 @fread(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @bfd_fill_in_gnu_debuglink_section.buffer, i64 0, i64 0), i32 1, i32 8192, i32* %38)
  store i64 %39, i64* %13, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @bfd_calc_gnu_debuglink_crc32(i64 %42, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @bfd_fill_in_gnu_debuglink_section.buffer, i64 0, i64 0), i64 %43)
  store i64 %44, i64* %9, align 8
  br label %37

45:                                               ; preds = %37
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i8*, i8** %7, align 8
  %49 = call i8* @lbasename(i8* %48)
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 3
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, -4
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i8* @bfd_zmalloc(i32 %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %45
  %64 = load i32, i32* @bfd_error_no_memory, align 4
  %65 = call i32 @bfd_set_error(i32 %64)
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %4, align 4
  br label %92

67:                                               ; preds = %45
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @strcpy(i8* %68, i8* %69)
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %71, 4
  store i32 %72, i32* %11, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = call i32 @bfd_put_32(i32* %73, i64 %74, i8* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @bfd_set_section_contents(i32* %80, %struct.bfd_section* %81, i8* %82, i32 0, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %67
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %4, align 4
  br label %92

90:                                               ; preds = %67
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %86, %63, %32, %22
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32* @real_fopen(i8*, i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @bfd_calc_gnu_debuglink_crc32(i64, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @lbasename(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @bfd_zmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i8*) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.bfd_section*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
