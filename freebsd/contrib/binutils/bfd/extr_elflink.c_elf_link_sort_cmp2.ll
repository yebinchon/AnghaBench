; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_sort_cmp2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_sort_cmp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_sort_rela = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@reloc_class_copy = common dso_local global i64 0, align 8
@reloc_class_plt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @elf_link_sort_cmp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_link_sort_cmp2(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_link_sort_rela*, align 8
  %7 = alloca %struct.elf_link_sort_rela*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.elf_link_sort_rela*
  store %struct.elf_link_sort_rela* %11, %struct.elf_link_sort_rela** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.elf_link_sort_rela*
  store %struct.elf_link_sort_rela* %13, %struct.elf_link_sort_rela** %7, align 8
  %14 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %15 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %19 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %100

24:                                               ; preds = %2
  %25 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %26 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %30 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %100

35:                                               ; preds = %24
  %36 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %37 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @reloc_class_copy, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = mul nsw i32 %41, 2
  %43 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %44 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @reloc_class_plt, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = add nsw i32 %42, %48
  store i32 %49, i32* %8, align 4
  %50 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %51 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @reloc_class_copy, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = mul nsw i32 %55, 2
  %57 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %58 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @reloc_class_plt, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = add nsw i32 %56, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %100

68:                                               ; preds = %35
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %100

73:                                               ; preds = %68
  %74 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %75 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %80 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  store i32 -1, i32* %3, align 4
  br label %100

86:                                               ; preds = %73
  %87 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %88 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %93 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %91, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  store i32 1, i32* %3, align 4
  br label %100

99:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %98, %85, %72, %67, %34, %23
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
