; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_get_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_get_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"$HEADER$\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"$DEBUG$\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"$PINFO$\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"File \22%s\22 not processed by pxdb!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objfile*, %struct.TYPE_5__*)* @hpread_get_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpread_get_header(%struct.objfile* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.objfile*, %struct.objfile** %4, align 8
  %11 = getelementptr inbounds %struct.objfile, %struct.objfile* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32* @bfd_get_section_by_name(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %126

17:                                               ; preds = %2
  %18 = load %struct.objfile*, %struct.objfile** %4, align 8
  %19 = getelementptr inbounds %struct.objfile, %struct.objfile* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @bfd_get_section_by_name(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %7, align 8
  %22 = load %struct.objfile*, %struct.objfile** %4, align 8
  %23 = getelementptr inbounds %struct.objfile, %struct.objfile* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @bfd_get_section_by_name(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %17
  %29 = load %struct.objfile*, %struct.objfile** %4, align 8
  %30 = getelementptr inbounds %struct.objfile, %struct.objfile* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = call i32 @bfd_get_section_contents(i32 %31, i32* %32, %struct.TYPE_5__* %33, i32 0, i32 4)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 12
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %126

40:                                               ; preds = %28
  br label %125

41:                                               ; preds = %17
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %123

44:                                               ; preds = %41
  %45 = load %struct.objfile*, %struct.objfile** %4, align 8
  %46 = getelementptr inbounds %struct.objfile, %struct.objfile* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @bfd_get_section_contents(i32 %47, i32* %48, %struct.TYPE_5__* %9, i32 0, i32 72)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 12
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = load %struct.objfile*, %struct.objfile** %4, align 8
  %55 = getelementptr inbounds %struct.objfile, %struct.objfile* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  store i32 0, i32* %3, align 4
  br label %126

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 15
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 15
  store i32 %60, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 14
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 14
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 13
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 13
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 12
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 12
  store i64 %72, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %124

123:                                              ; preds = %41
  store i32 0, i32* %3, align 4
  br label %126

124:                                              ; preds = %58
  br label %125

125:                                              ; preds = %124, %40
  store i32 1, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %123, %53, %39, %16
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @bfd_get_section_contents(i32, i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
