; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_pop_bincl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_pop_bincl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i8*, %struct.bincl_file*, i32* }
%struct.bincl_file = type { i64, i8*, i32, %struct.bincl_file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.stab_handle*)* @pop_bincl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pop_bincl(%struct.stab_handle* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stab_handle*, align 8
  %4 = alloca %struct.bincl_file*, align 8
  store %struct.stab_handle* %0, %struct.stab_handle** %3, align 8
  %5 = load %struct.stab_handle*, %struct.stab_handle** %3, align 8
  %6 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %5, i32 0, i32 1
  %7 = load %struct.bincl_file*, %struct.bincl_file** %6, align 8
  store %struct.bincl_file* %7, %struct.bincl_file** %4, align 8
  %8 = load %struct.bincl_file*, %struct.bincl_file** %4, align 8
  %9 = icmp eq %struct.bincl_file* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.stab_handle*, %struct.stab_handle** %3, align 8
  %12 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %2, align 8
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.bincl_file*, %struct.bincl_file** %4, align 8
  %16 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %15, i32 0, i32 3
  %17 = load %struct.bincl_file*, %struct.bincl_file** %16, align 8
  %18 = load %struct.stab_handle*, %struct.stab_handle** %3, align 8
  %19 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %18, i32 0, i32 1
  store %struct.bincl_file* %17, %struct.bincl_file** %19, align 8
  %20 = load %struct.stab_handle*, %struct.stab_handle** %3, align 8
  %21 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.bincl_file*, %struct.bincl_file** %4, align 8
  %24 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bincl_file*, %struct.bincl_file** %4, align 8
  %29 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.stab_handle*, %struct.stab_handle** %3, align 8
  %31 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %30, i32 0, i32 1
  %32 = load %struct.bincl_file*, %struct.bincl_file** %31, align 8
  %33 = icmp eq %struct.bincl_file* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %14
  %35 = load %struct.stab_handle*, %struct.stab_handle** %3, align 8
  %36 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %2, align 8
  br label %44

38:                                               ; preds = %14
  %39 = load %struct.stab_handle*, %struct.stab_handle** %3, align 8
  %40 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %39, i32 0, i32 1
  %41 = load %struct.bincl_file*, %struct.bincl_file** %40, align 8
  %42 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %2, align 8
  br label %44

44:                                               ; preds = %38, %34, %10
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
