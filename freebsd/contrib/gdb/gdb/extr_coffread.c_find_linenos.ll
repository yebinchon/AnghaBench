; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_find_linenos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_find_linenos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_section = type { i32, i64 }
%struct.coff_symfile_info = type { i64, i64 }

@local_linesz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.bfd_section*, i8*)* @find_linenos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_linenos(i32* %0, %struct.bfd_section* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_section*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.coff_symfile_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_section* %1, %struct.bfd_section** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %13 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %55

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @local_linesz, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.coff_symfile_info*
  store %struct.coff_symfile_info* %23, %struct.coff_symfile_info** %7, align 8
  %24 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %25 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %29 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %18
  %33 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %34 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %18
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %40 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %48 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %54 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %17, %51, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
