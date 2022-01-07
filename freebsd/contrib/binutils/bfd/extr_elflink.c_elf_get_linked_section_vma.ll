; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_get_linked_section_vma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_get_linked_section_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_order = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.elf_backend_data = type { i32 (i32, i32, %struct.TYPE_12__*)* }

@.str = private unnamed_addr constant [46 x i8] c"%B: warning: sh_link not set for section `%A'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfd_link_order*)* @elf_get_linked_section_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf_get_linked_section_vma(%struct.bfd_link_order* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bfd_link_order*, align 8
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.elf_backend_data*, align 8
  store %struct.bfd_link_order* %0, %struct.bfd_link_order** %3, align 8
  %8 = load %struct.bfd_link_order*, %struct.bfd_link_order** %3, align 8
  %9 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_13__** @elf_elfsections(i32 %15)
  store %struct.TYPE_13__** %16, %struct.TYPE_13__*** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call i32 @_bfd_elf_section_from_bfd_section(i32 %19, %struct.TYPE_12__* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %22, i64 %24
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.elf_backend_data* @get_elf_backend_data(i32 %34)
  store %struct.elf_backend_data* %35, %struct.elf_backend_data** %7, align 8
  %36 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %37 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %36, i32 0, i32 0
  %38 = load i32 (i32, i32, %struct.TYPE_12__*)*, i32 (i32, i32, %struct.TYPE_12__*)** %37, align 8
  %39 = icmp ne i32 (i32, i32, %struct.TYPE_12__*)* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %42 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %41, i32 0, i32 0
  %43 = load i32 (i32, i32, %struct.TYPE_12__*)*, i32 (i32, i32, %struct.TYPE_12__*)** %42, align 8
  %44 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = call i32 %43(i32 %44, i32 %47, %struct.TYPE_12__* %48)
  br label %50

50:                                               ; preds = %40, %31
  store i64 0, i64* %2, align 8
  br label %68

51:                                               ; preds = %1
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %52, i64 %54
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %51, %50
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local %struct.TYPE_13__** @elf_elfsections(i32) #1

declare dso_local i32 @_bfd_elf_section_from_bfd_section(i32, %struct.TYPE_12__*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
