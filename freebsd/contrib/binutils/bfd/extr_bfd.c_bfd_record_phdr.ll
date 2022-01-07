; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_record_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_record_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_segment_map = type { i64, i32, %struct.elf_segment_map*, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { %struct.elf_segment_map* }

@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bfd_record_phdr(i32* %0, i64 %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6, i8* %7, i32 %8, i32** %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  %22 = alloca %struct.elf_segment_map*, align 8
  %23 = alloca %struct.elf_segment_map**, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32** %9, i32*** %21, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i64 @bfd_get_flavour(i32* %25)
  %27 = load i64, i64* @bfd_target_elf_flavour, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %10
  %30 = load i8*, i8** @TRUE, align 8
  store i8* %30, i8** %11, align 8
  br label %101

31:                                               ; preds = %10
  store i32 72, i32* %24, align 4
  %32 = load i32, i32* %20, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = load i32, i32* %24, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %24, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %24, align 4
  %42 = call %struct.elf_segment_map* @bfd_zalloc(i32* %40, i32 %41)
  store %struct.elf_segment_map* %42, %struct.elf_segment_map** %22, align 8
  %43 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %44 = icmp eq %struct.elf_segment_map* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i8*, i8** @FALSE, align 8
  store i8* %46, i8** %11, align 8
  br label %101

47:                                               ; preds = %31
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %50 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %53 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %56 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %59 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %62 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %18, align 8
  %64 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %65 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %19, align 8
  %67 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %68 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %20, align 4
  %70 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %71 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %20, align 4
  %73 = icmp ugt i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %47
  %75 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %76 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32**, i32*** %21, align 8
  %79 = load i32, i32* %20, align 4
  %80 = zext i32 %79 to i64
  %81 = mul i64 %80, 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memcpy(i32 %77, i32** %78, i32 %82)
  br label %84

84:                                               ; preds = %74, %47
  %85 = load i32*, i32** %12, align 8
  %86 = call %struct.TYPE_2__* @elf_tdata(i32* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store %struct.elf_segment_map** %87, %struct.elf_segment_map*** %23, align 8
  br label %88

88:                                               ; preds = %93, %84
  %89 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %23, align 8
  %90 = load %struct.elf_segment_map*, %struct.elf_segment_map** %89, align 8
  %91 = icmp ne %struct.elf_segment_map* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %23, align 8
  %95 = load %struct.elf_segment_map*, %struct.elf_segment_map** %94, align 8
  %96 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %95, i32 0, i32 2
  store %struct.elf_segment_map** %96, %struct.elf_segment_map*** %23, align 8
  br label %88

97:                                               ; preds = %88
  %98 = load %struct.elf_segment_map*, %struct.elf_segment_map** %22, align 8
  %99 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %23, align 8
  store %struct.elf_segment_map* %98, %struct.elf_segment_map** %99, align 8
  %100 = load i8*, i8** @TRUE, align 8
  store i8* %100, i8** %11, align 8
  br label %101

101:                                              ; preds = %97, %45, %29
  %102 = load i8*, i8** %11, align 8
  ret i8* %102
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local %struct.elf_segment_map* @bfd_zalloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32**, i32) #1

declare dso_local %struct.TYPE_2__* @elf_tdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
