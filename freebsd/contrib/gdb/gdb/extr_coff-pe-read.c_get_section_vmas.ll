; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coff-pe-read.c_get_section_vmas.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coff-pe-read.c_get_section_vmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.read_pe_section_data = type { i64, i64 }

@PE_SECTION_INDEX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i8*)* @get_section_vmas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_section_vmas(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.read_pe_section_data*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.read_pe_section_data*
  store %struct.read_pe_section_data* %10, %struct.read_pe_section_data** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @read_pe_section_index(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PE_SECTION_INDEX_INVALID, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = call i64 @bfd_get_section_vma(i32* %19, %struct.TYPE_4__* %20)
  %22 = load %struct.read_pe_section_data*, %struct.read_pe_section_data** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.read_pe_section_data, %struct.read_pe_section_data* %22, i64 %24
  %26 = getelementptr inbounds %struct.read_pe_section_data, %struct.read_pe_section_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %21, %27
  %29 = load %struct.read_pe_section_data*, %struct.read_pe_section_data** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.read_pe_section_data, %struct.read_pe_section_data* %29, i64 %31
  %33 = getelementptr inbounds %struct.read_pe_section_data, %struct.read_pe_section_data* %32, i32 0, i32 1
  store i64 %28, i64* %33, align 8
  br label %34

34:                                               ; preds = %18, %3
  ret void
}

declare dso_local i32 @read_pe_section_index(i32) #1

declare dso_local i64 @bfd_get_section_vma(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
