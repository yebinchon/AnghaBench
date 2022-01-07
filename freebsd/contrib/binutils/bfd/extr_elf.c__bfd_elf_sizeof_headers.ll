; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_sizeof_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_sizeof_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_backend_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.elf_segment_map = type { %struct.elf_segment_map* }
%struct.TYPE_4__ = type { i64, %struct.elf_segment_map* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_sizeof_headers(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_backend_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.elf_segment_map*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %9)
  store %struct.elf_backend_data* %10, %struct.elf_backend_data** %5, align 8
  %11 = load %struct.elf_backend_data*, %struct.elf_backend_data** %5, align 8
  %12 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %17 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = call %struct.TYPE_4__* @elf_tdata(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %55

27:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call %struct.TYPE_4__* @elf_tdata(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.elf_segment_map*, %struct.elf_segment_map** %30, align 8
  store %struct.elf_segment_map* %31, %struct.elf_segment_map** %8, align 8
  br label %32

32:                                               ; preds = %43, %27
  %33 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %34 = icmp ne %struct.elf_segment_map* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.elf_backend_data*, %struct.elf_backend_data** %5, align 8
  %37 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %35
  %44 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %45 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %44, i32 0, i32 0
  %46 = load %struct.elf_segment_map*, %struct.elf_segment_map** %45, align 8
  store %struct.elf_segment_map* %46, %struct.elf_segment_map** %8, align 8
  br label %32

47:                                               ; preds = %32
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %53 = call i64 @get_program_header_size(i32* %51, %struct.bfd_link_info* %52)
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %20
  %56 = load i64, i64* %7, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call %struct.TYPE_4__* @elf_tdata(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %55, %2
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local %struct.TYPE_4__* @elf_tdata(i32*) #1

declare dso_local i64 @get_program_header_size(i32*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
