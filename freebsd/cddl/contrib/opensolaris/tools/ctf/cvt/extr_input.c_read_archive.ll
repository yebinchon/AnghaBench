; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_read_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_read_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@ELF_C_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Can't get archive header for member %d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: Unknown elf kind %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i8*, i32*, i8*, i32)* @read_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_archive(i32 %0, i32* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i32, i32* @ELF_C_READ, align 4
  store i32 %24, i32* %17, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %25

25:                                               ; preds = %109, %7
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = call i32* @elf_begin(i32 %26, i32 %27, i32* %28)
  store i32* %29, i32** %16, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %110

31:                                               ; preds = %25
  store i32 0, i32* %21, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = call %struct.TYPE_3__* @elf_getarhdr(i32* %32)
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %18, align 8
  %34 = icmp eq %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %19, align 4
  %38 = call i32 @elfterminate(i8* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 47
  br i1 %45, label %46, label %94

46:                                               ; preds = %39
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %48, 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = add nsw i32 %49, %53
  %55 = add nsw i32 %54, 1
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %22, align 8
  %58 = load i64, i64* %22, align 8
  %59 = call i8* @xmalloc(i64 %58)
  store i8* %59, i8** %23, align 8
  %60 = load i8*, i8** %23, align 8
  %61 = load i64, i64* %22, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @snprintf(i8* %60, i64 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %65)
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @elf_kind(i32* %67)
  switch i32 %68, label %86 [
    i32 129, label %69
    i32 128, label %78
  ]

69:                                               ; preds = %46
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %16, align 8
  %72 = load i8*, i8** %23, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @read_archive(i32 %70, i32* %71, i8* %72, i8* %73, i32* %74, i8* %75, i32 %76)
  store i32 %77, i32* %21, align 4
  br label %91

78:                                               ; preds = %46
  %79 = load i32*, i32** %16, align 8
  %80 = load i8*, i8** %23, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @read_file(i32* %79, i8* %80, i8* %81, i32* %82, i8* %83, i32 %84)
  store i32 %85, i32* %21, align 4
  br label %91

86:                                               ; preds = %46
  %87 = load i8*, i8** %23, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @elf_kind(i32* %88)
  %90 = call i32 @terminate(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %87, i32 %89)
  br label %91

91:                                               ; preds = %86, %78, %69
  %92 = load i8*, i8** %23, align 8
  %93 = call i32 @free(i8* %92)
  br label %94

94:                                               ; preds = %91, %39
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @elf_next(i32* %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32*, i32** %16, align 8
  %98 = call i32 @elf_end(i32* %97)
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %21, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %21, align 4
  store i32 %104, i32* %8, align 4
  br label %112

105:                                              ; preds = %94
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %20, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %20, align 4
  br label %109

109:                                              ; preds = %105
  br label %25

110:                                              ; preds = %25
  %111 = load i32, i32* %20, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %110, %103
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @elf_getarhdr(i32*) #1

declare dso_local i32 @elfterminate(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @elf_kind(i32*) #1

declare dso_local i32 @read_file(i32*, i8*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @terminate(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @elf_next(i32*) #1

declare dso_local i32 @elf_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
