; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_pxdb_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_pxdb_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"$HEADER$\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"$DEBUG$\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"$PINFO$\00", align 1
@objfile = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"bfd_get_section_contents\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"file debug header info invalid\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"invalid $HEADER$ size in executable \0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"file debug header invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hpread_pxdb_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpread_pxdb_needed(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @bfd_get_section_by_name(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @bfd_get_section_by_name(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @bfd_get_section_by_name(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %65

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %65, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @objfile, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @bfd_section_size(i32 %30, i32* %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %35, label %62

35:                                               ; preds = %27
  %36 = call i8* @alloca(i32 4)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @memset(i8* %37, i32 0, i32 4)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @bfd_get_section_contents(i32* %39, i32* %40, i8* %41, i32 0, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %35
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 16
  %51 = bitcast i8* %50 to i32*
  %52 = call i64 @bfd_get_32(i32* %48, i32* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = lshr i64 %53, 31
  %55 = and i64 %54, 1
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %47
  %60 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %47
  store i32 0, i32* %7, align 4
  br label %64

62:                                               ; preds = %27
  %63 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %61
  br label %103

65:                                               ; preds = %24, %17
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @objfile, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i64 @bfd_section_size(i32 %68, i32* %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %73, label %101

73:                                               ; preds = %65
  %74 = call i8* @alloca(i32 4)
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @memset(i8* %75, i32 0, i32 4)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @bfd_get_section_contents(i32* %77, i32* %78, i8* %79, i32 0, i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %73
  %84 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %73
  %86 = load i32*, i32** %3, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 12
  %89 = bitcast i8* %88 to i32*
  %90 = call i64 @bfd_get_32(i32* %86, i32* %89)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = lshr i64 %91, 31
  %93 = and i64 %92, 1
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %100

98:                                               ; preds = %85
  %99 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %97
  br label %102

101:                                              ; preds = %65
  store i32 1, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %100
  br label %103

103:                                              ; preds = %102, %64
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 1, i32* %2, align 4
  br label %108

107:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %106, %16
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i64 @bfd_section_size(i32, i32*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bfd_get_section_contents(i32*, i32*, i8*, i32, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
