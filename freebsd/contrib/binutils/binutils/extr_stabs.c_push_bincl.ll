; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_push_bincl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_push_bincl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32, %struct.stab_types**, %struct.bincl_file*, %struct.bincl_file* }
%struct.stab_types = type { i32 }
%struct.bincl_file = type { i8*, i32, i32*, i32, %struct.bincl_file*, %struct.bincl_file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stab_handle*, i8*, i32)* @push_bincl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_bincl(%struct.stab_handle* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.stab_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bincl_file*, align 8
  store %struct.stab_handle* %0, %struct.stab_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i64 @xmalloc(i32 48)
  %9 = inttoptr i64 %8 to %struct.bincl_file*
  store %struct.bincl_file* %9, %struct.bincl_file** %7, align 8
  %10 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %11 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %10, i32 0, i32 3
  %12 = load %struct.bincl_file*, %struct.bincl_file** %11, align 8
  %13 = load %struct.bincl_file*, %struct.bincl_file** %7, align 8
  %14 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %13, i32 0, i32 5
  store %struct.bincl_file* %12, %struct.bincl_file** %14, align 8
  %15 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %16 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %15, i32 0, i32 2
  %17 = load %struct.bincl_file*, %struct.bincl_file** %16, align 8
  %18 = load %struct.bincl_file*, %struct.bincl_file** %7, align 8
  %19 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %18, i32 0, i32 4
  store %struct.bincl_file* %17, %struct.bincl_file** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.bincl_file*, %struct.bincl_file** %7, align 8
  %22 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.bincl_file*, %struct.bincl_file** %7, align 8
  %25 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %27 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bincl_file*, %struct.bincl_file** %7, align 8
  %30 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bincl_file*, %struct.bincl_file** %7, align 8
  %32 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.bincl_file*, %struct.bincl_file** %7, align 8
  %34 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %35 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %34, i32 0, i32 3
  store %struct.bincl_file* %33, %struct.bincl_file** %35, align 8
  %36 = load %struct.bincl_file*, %struct.bincl_file** %7, align 8
  %37 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %38 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %37, i32 0, i32 2
  store %struct.bincl_file* %36, %struct.bincl_file** %38, align 8
  %39 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %40 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %44 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %43, i32 0, i32 1
  %45 = load %struct.stab_types**, %struct.stab_types*** %44, align 8
  %46 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %47 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i64 @xrealloc(%struct.stab_types** %45, i32 %51)
  %53 = inttoptr i64 %52 to %struct.stab_types**
  %54 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %55 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %54, i32 0, i32 1
  store %struct.stab_types** %53, %struct.stab_types*** %55, align 8
  %56 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %57 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %56, i32 0, i32 1
  %58 = load %struct.stab_types**, %struct.stab_types*** %57, align 8
  %59 = load %struct.bincl_file*, %struct.bincl_file** %7, align 8
  %60 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.stab_types*, %struct.stab_types** %58, i64 %62
  store %struct.stab_types* null, %struct.stab_types** %63, align 8
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @xrealloc(%struct.stab_types**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
