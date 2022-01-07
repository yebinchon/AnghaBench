; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_check_vma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_check_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.elf_segment_map = type { i64, i32, %struct.TYPE_4__**, %struct.elf_segment_map* }
%struct.TYPE_5__ = type { %struct.elf_segment_map* }

@PT_LOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @spu_elf_check_vma(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.elf_segment_map*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.TYPE_5__* @elf_tdata(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.elf_segment_map*, %struct.elf_segment_map** %12, align 8
  store %struct.elf_segment_map* %13, %struct.elf_segment_map** %8, align 8
  br label %14

14:                                               ; preds = %102, %3
  %15 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %16 = icmp ne %struct.elf_segment_map* %15, null
  br i1 %16, label %17, label %106

17:                                               ; preds = %14
  %18 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %19 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PT_LOAD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %101

23:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %97, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %27 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %100

30:                                               ; preds = %24
  %31 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %32 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %96

41:                                               ; preds = %30
  %42 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %43 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %88, label %53

53:                                               ; preds = %41
  %54 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %55 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %88, label %65

65:                                               ; preds = %53
  %66 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %67 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %76 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %74, %83
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %65, %53, %41
  %89 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %90 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %91, i64 %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %4, align 8
  br label %107

96:                                               ; preds = %65, %30
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %24

100:                                              ; preds = %24
  br label %101

101:                                              ; preds = %100, %17
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %104 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %103, i32 0, i32 3
  %105 = load %struct.elf_segment_map*, %struct.elf_segment_map** %104, align 8
  store %struct.elf_segment_map* %105, %struct.elf_segment_map** %8, align 8
  br label %14

106:                                              ; preds = %14
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %107

107:                                              ; preds = %106, %88
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %108
}

declare dso_local %struct.TYPE_5__* @elf_tdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
