; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_get_str_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_get_str_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@bfd_error_system_call = common dso_local global i64 0, align 8
@bfd_error_file_truncated = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bfd_elf_get_str_section(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_3__** @elf_elfsections(i32* %10)
  store %struct.TYPE_3__** %11, %struct.TYPE_3__*** %6, align 8
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %13 = icmp eq %struct.TYPE_3__** %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @elf_numsections(i32* %16)
  %18 = icmp uge i32 %15, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %14, %2
  store i8* null, i8** %3, align 8
  br label %99

27:                                               ; preds = %19
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %97

37:                                               ; preds = %27
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %37
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i8* @bfd_alloc(i32* %56, i32 %58)
  store i8* %59, i8** %7, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @SEEK_SET, align 4
  %65 = call i64 @bfd_seek(i32* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %55, %37
  store i8* null, i8** %7, align 8
  br label %89

68:                                               ; preds = %61
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @bfd_bread(i8* %69, i32 %70, i32* %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = call i64 (...) @bfd_get_error()
  %77 = load i64, i64* @bfd_error_system_call, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @bfd_error_file_truncated, align 4
  %81 = call i32 @bfd_set_error(i32 %80)
  br label %82

82:                                               ; preds = %79, %75
  store i8* null, i8** %7, align 8
  br label %88

83:                                               ; preds = %68
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %83, %82
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %91, i64 %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i8* %90, i8** %96, align 8
  br label %97

97:                                               ; preds = %89, %27
  %98 = load i8*, i8** %7, align 8
  store i8* %98, i8** %3, align 8
  br label %99

99:                                               ; preds = %97, %26
  %100 = load i8*, i8** %3, align 8
  ret i8* %100
}

declare dso_local %struct.TYPE_3__** @elf_elfsections(i32*) #1

declare dso_local i32 @elf_numsections(i32*) #1

declare dso_local i8* @bfd_alloc(i32*, i32) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
