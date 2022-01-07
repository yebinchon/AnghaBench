; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_make_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_make_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_segment_map = type { i32, i32, i32, i32**, i32, i32* }

@PT_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elf_segment_map* (i32*, i32**, i32, i32, i64)* @make_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elf_segment_map* @make_mapping(i32* %0, i32** %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.elf_segment_map*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.elf_segment_map*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 40, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sub i32 %16, %17
  %19 = sub i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = load i32, i32* %15, align 4
  %23 = zext i32 %22 to i64
  %24 = add i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call %struct.elf_segment_map* @bfd_zalloc(i32* %26, i32 %27)
  store %struct.elf_segment_map* %28, %struct.elf_segment_map** %12, align 8
  %29 = load %struct.elf_segment_map*, %struct.elf_segment_map** %12, align 8
  %30 = icmp eq %struct.elf_segment_map* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store %struct.elf_segment_map* null, %struct.elf_segment_map** %6, align 8
  br label %81

32:                                               ; preds = %5
  %33 = load %struct.elf_segment_map*, %struct.elf_segment_map** %12, align 8
  %34 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @PT_LOAD, align 4
  %36 = load %struct.elf_segment_map*, %struct.elf_segment_map** %12, align 8
  %37 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32**, i32*** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32** %42, i32*** %14, align 8
  br label %43

43:                                               ; preds = %58, %32
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i32**, i32*** %14, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.elf_segment_map*, %struct.elf_segment_map** %12, align 8
  %51 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %50, i32 0, i32 3
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %52, i64 %56
  store i32* %49, i32** %57, align 8
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %13, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %13, align 4
  %61 = load i32**, i32*** %14, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i32 1
  store i32** %62, i32*** %14, align 8
  br label %43

63:                                               ; preds = %43
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sub i32 %64, %65
  %67 = load %struct.elf_segment_map*, %struct.elf_segment_map** %12, align 8
  %68 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.elf_segment_map*, %struct.elf_segment_map** %12, align 8
  %76 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.elf_segment_map*, %struct.elf_segment_map** %12, align 8
  %78 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %74, %71, %63
  %80 = load %struct.elf_segment_map*, %struct.elf_segment_map** %12, align 8
  store %struct.elf_segment_map* %80, %struct.elf_segment_map** %6, align 8
  br label %81

81:                                               ; preds = %79, %31
  %82 = load %struct.elf_segment_map*, %struct.elf_segment_map** %6, align 8
  ret %struct.elf_segment_map* %82
}

declare dso_local %struct.elf_segment_map* @bfd_zalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
