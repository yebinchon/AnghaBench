; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_get_section_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_get_section_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }

@.str = private unnamed_addr constant [9 x i8] c" fsec%4d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, %struct.TYPE_8__*, i32)* @get_section_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @get_section_entry(i32* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp uge i32 %14, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 20, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %19
  br label %27

27:                                               ; preds = %31, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ule i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = mul i32 %32, 2
  store i32 %33, i32* %8, align 4
  br label %27

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.TYPE_9__** @bfd_realloc(%struct.TYPE_9__** %42, i32 %43)
  store %struct.TYPE_9__** %44, %struct.TYPE_9__*** %10, align 8
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %46 = icmp eq %struct.TYPE_9__** %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %118

48:                                               ; preds = %34
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %61, %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %57, i64 %59
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %60, align 8
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %52

64:                                               ; preds = %52
  %65 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store %struct.TYPE_9__** %65, %struct.TYPE_9__*** %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %64, %3
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %74, i64 %76
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = icmp eq %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %110

80:                                               ; preds = %71
  %81 = load i32*, i32** %5, align 8
  %82 = call i8* @bfd_alloc(i32* %81, i32 11)
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %118

86:                                               ; preds = %80
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call %struct.TYPE_9__* @bfd_make_section(i32* %90, i8* %91)
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %13, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %96, i64 %98
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %99, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %106, i64 %108
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %109, align 8
  br label %110

110:                                              ; preds = %86, %71
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %113, i64 %115
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %4, align 8
  br label %118

118:                                              ; preds = %110, %85, %47
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %119
}

declare dso_local %struct.TYPE_9__** @bfd_realloc(%struct.TYPE_9__**, i32) #1

declare dso_local i8* @bfd_alloc(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @bfd_make_section(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
