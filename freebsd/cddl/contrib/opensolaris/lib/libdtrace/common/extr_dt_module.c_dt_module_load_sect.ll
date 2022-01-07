; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_load_sect.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_load_sect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i32, i32* }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i32* }

@EDT_NOTLOADED = common dso_local global i32 0, align 4
@SHT_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"loaded %s [%s] (%lu bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_10__*)* @dt_module_load_sect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_module_load_sect(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @elf_getshdrstrndx(i32 %15, i64* %9)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @EDT_NOTLOADED, align 4
  %21 = call i32 @dt_set_errno(i32* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %116

22:                                               ; preds = %3
  store i32* null, i32** %12, align 8
  br label %23

23:                                               ; preds = %71, %48, %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = call i32* @elf_nextscn(i32 %26, i32* %27)
  store i32* %28, i32** %12, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %72

30:                                               ; preds = %23
  %31 = load i32*, i32** %12, align 8
  %32 = call i32* @gelf_getshdr(i32* %31, %struct.TYPE_11__* %10)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SHT_NULL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @elf_strptr(i32 %42, i64 %43, i32 %45)
  store i8* %46, i8** %8, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39, %34, %30
  br label %23

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @strcmp(i8* %64, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %72

71:                                               ; preds = %63, %56, %49
  br label %23

72:                                               ; preds = %70, %23
  %73 = load i32*, i32** %12, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %12, align 8
  %77 = call %struct.TYPE_12__* @elf_getdata(i32* %76, i32* null)
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %11, align 8
  %78 = icmp eq %struct.TYPE_12__* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %72
  store i32 0, i32* %4, align 4
  br label %116

80:                                               ; preds = %75
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32* @malloc(i64 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  store i32* %84, i32** %86, align 8
  %87 = icmp eq i32* %84, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %116

89:                                               ; preds = %80
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @memcpy(i32* %92, i32* %95, i64 %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @dt_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %110, i32 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %89, %88, %79, %18
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @elf_getshdrstrndx(i32, i64*) #1

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local i32* @elf_nextscn(i32, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_11__*) #1

declare dso_local i8* @elf_strptr(i32, i64, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_12__* @elf_getdata(i32*, i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @dt_dprintf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
