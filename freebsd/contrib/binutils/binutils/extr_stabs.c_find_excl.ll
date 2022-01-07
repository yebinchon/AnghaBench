; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_find_excl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_find_excl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32, %struct.stab_types**, %struct.bincl_file* }
%struct.stab_types = type { i32 }
%struct.bincl_file = type { i64, %struct.stab_types*, i32, %struct.bincl_file* }

@.str = private unnamed_addr constant [17 x i8] c"Undefined N_EXCL\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stab_handle*, i8*, i64)* @find_excl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_excl(%struct.stab_handle* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stab_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bincl_file*, align 8
  store %struct.stab_handle* %0, %struct.stab_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %10 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %14 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %13, i32 0, i32 1
  %15 = load %struct.stab_types**, %struct.stab_types*** %14, align 8
  %16 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %17 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @xrealloc(%struct.stab_types** %15, i32 %21)
  %23 = inttoptr i64 %22 to %struct.stab_types**
  %24 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %25 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %24, i32 0, i32 1
  store %struct.stab_types** %23, %struct.stab_types*** %25, align 8
  %26 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %27 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %26, i32 0, i32 2
  %28 = load %struct.bincl_file*, %struct.bincl_file** %27, align 8
  store %struct.bincl_file* %28, %struct.bincl_file** %8, align 8
  br label %29

29:                                               ; preds = %47, %3
  %30 = load %struct.bincl_file*, %struct.bincl_file** %8, align 8
  %31 = icmp ne %struct.bincl_file* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load %struct.bincl_file*, %struct.bincl_file** %8, align 8
  %34 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.bincl_file*, %struct.bincl_file** %8, align 8
  %40 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strcmp(i32 %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %51

46:                                               ; preds = %38, %32
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.bincl_file*, %struct.bincl_file** %8, align 8
  %49 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %48, i32 0, i32 3
  %50 = load %struct.bincl_file*, %struct.bincl_file** %49, align 8
  store %struct.bincl_file* %50, %struct.bincl_file** %8, align 8
  br label %29

51:                                               ; preds = %45, %29
  %52 = load %struct.bincl_file*, %struct.bincl_file** %8, align 8
  %53 = icmp eq %struct.bincl_file* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @warn_stab(i8* %55, i32 %56)
  %58 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %59 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %58, i32 0, i32 1
  %60 = load %struct.stab_types**, %struct.stab_types*** %59, align 8
  %61 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %62 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.stab_types*, %struct.stab_types** %60, i64 %65
  store %struct.stab_types* null, %struct.stab_types** %66, align 8
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %4, align 4
  br label %82

68:                                               ; preds = %51
  %69 = load %struct.bincl_file*, %struct.bincl_file** %8, align 8
  %70 = getelementptr inbounds %struct.bincl_file, %struct.bincl_file* %69, i32 0, i32 1
  %71 = load %struct.stab_types*, %struct.stab_types** %70, align 8
  %72 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %73 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %72, i32 0, i32 1
  %74 = load %struct.stab_types**, %struct.stab_types*** %73, align 8
  %75 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %76 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.stab_types*, %struct.stab_types** %74, i64 %79
  store %struct.stab_types* %71, %struct.stab_types** %80, align 8
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %68, %54
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @xrealloc(%struct.stab_types**, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @warn_stab(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
