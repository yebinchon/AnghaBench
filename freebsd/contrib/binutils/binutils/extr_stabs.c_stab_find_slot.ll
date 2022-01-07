; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_find_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_find_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32, %struct.stab_types** }
%struct.stab_types = type { i32*, %struct.stab_types* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Type file number %d out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Type index number %d out of range\0A\00", align 1
@STAB_TYPES_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.stab_handle*, i32*)* @stab_find_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stab_find_slot(%struct.stab_handle* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.stab_handle*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stab_types**, align 8
  store %struct.stab_handle* %0, %struct.stab_handle** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %20 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp uge i32 %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @stderr, align 4
  %25 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @fprintf(i32 %24, i8* %25, i32 %26)
  store i32* null, i32** %3, align 8
  br label %84

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* @stderr, align 4
  %33 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @fprintf(i32 %32, i8* %33, i32 %34)
  store i32* null, i32** %3, align 8
  br label %84

36:                                               ; preds = %28
  %37 = load %struct.stab_handle*, %struct.stab_handle** %4, align 8
  %38 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %37, i32 0, i32 1
  %39 = load %struct.stab_types**, %struct.stab_types*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.stab_types*, %struct.stab_types** %39, i64 %41
  store %struct.stab_types** %42, %struct.stab_types*** %8, align 8
  br label %43

43:                                               ; preds = %58, %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @STAB_TYPES_SLOTS, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.stab_types**, %struct.stab_types*** %8, align 8
  %49 = load %struct.stab_types*, %struct.stab_types** %48, align 8
  %50 = icmp eq %struct.stab_types* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = call i64 @xmalloc(i32 16)
  %53 = inttoptr i64 %52 to %struct.stab_types*
  %54 = load %struct.stab_types**, %struct.stab_types*** %8, align 8
  store %struct.stab_types* %53, %struct.stab_types** %54, align 8
  %55 = load %struct.stab_types**, %struct.stab_types*** %8, align 8
  %56 = load %struct.stab_types*, %struct.stab_types** %55, align 8
  %57 = call i32 @memset(%struct.stab_types* %56, i32 0, i32 16)
  br label %58

58:                                               ; preds = %51, %47
  %59 = load %struct.stab_types**, %struct.stab_types*** %8, align 8
  %60 = load %struct.stab_types*, %struct.stab_types** %59, align 8
  %61 = getelementptr inbounds %struct.stab_types, %struct.stab_types* %60, i32 0, i32 1
  store %struct.stab_types** %61, %struct.stab_types*** %8, align 8
  %62 = load i32, i32* @STAB_TYPES_SLOTS, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %43

65:                                               ; preds = %43
  %66 = load %struct.stab_types**, %struct.stab_types*** %8, align 8
  %67 = load %struct.stab_types*, %struct.stab_types** %66, align 8
  %68 = icmp eq %struct.stab_types* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = call i64 @xmalloc(i32 16)
  %71 = inttoptr i64 %70 to %struct.stab_types*
  %72 = load %struct.stab_types**, %struct.stab_types*** %8, align 8
  store %struct.stab_types* %71, %struct.stab_types** %72, align 8
  %73 = load %struct.stab_types**, %struct.stab_types*** %8, align 8
  %74 = load %struct.stab_types*, %struct.stab_types** %73, align 8
  %75 = call i32 @memset(%struct.stab_types* %74, i32 0, i32 16)
  br label %76

76:                                               ; preds = %69, %65
  %77 = load %struct.stab_types**, %struct.stab_types*** %8, align 8
  %78 = load %struct.stab_types*, %struct.stab_types** %77, align 8
  %79 = getelementptr inbounds %struct.stab_types, %struct.stab_types* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32* %83, i32** %3, align 8
  br label %84

84:                                               ; preds = %76, %31, %23
  %85 = load i32*, i32** %3, align 8
  ret i32* %85
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.stab_types*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
