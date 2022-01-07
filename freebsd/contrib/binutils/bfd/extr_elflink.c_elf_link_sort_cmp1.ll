; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_sort_cmp1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_sort_cmp1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_sort_rela = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@reloc_class_relative = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @elf_link_sort_cmp1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_link_sort_cmp1(i8* %0, i8* %1) #0 {
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
  %15 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @reloc_class_relative, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %21 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @reloc_class_relative, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %108

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %108

35:                                               ; preds = %30
  %36 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %37 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %42 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %40, %44
  %46 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %47 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %52 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %50, %54
  %56 = icmp slt i32 %45, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %108

58:                                               ; preds = %35
  %59 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %60 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %65 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %63, %67
  %69 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %70 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %75 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %73, %77
  %79 = icmp sgt i32 %68, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %108

81:                                               ; preds = %58
  %82 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %83 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %88 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  store i32 -1, i32* %3, align 4
  br label %108

94:                                               ; preds = %81
  %95 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %6, align 8
  %96 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.elf_link_sort_rela*, %struct.elf_link_sort_rela** %7, align 8
  %101 = getelementptr inbounds %struct.elf_link_sort_rela, %struct.elf_link_sort_rela* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %99, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  store i32 1, i32* %3, align 4
  br label %108

107:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %106, %93, %80, %57, %34, %29
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
