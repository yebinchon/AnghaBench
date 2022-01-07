; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_apprentice.c_file_magicfind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_apprentice.c_file_magicfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { %struct.mlist** }
%struct.mlist = type { i64, %struct.magic*, %struct.mlist* }
%struct.magic = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FILE_NAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_magicfind(%struct.magic_set* %0, i8* %1, %struct.mlist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.magic_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlist*, align 8
  %11 = alloca %struct.mlist*, align 8
  %12 = alloca %struct.magic*, align 8
  %13 = alloca i64, align 8
  store %struct.magic_set* %0, %struct.magic_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mlist* %2, %struct.mlist** %7, align 8
  %14 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %15 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %14, i32 0, i32 0
  %16 = load %struct.mlist**, %struct.mlist*** %15, align 8
  %17 = getelementptr inbounds %struct.mlist*, %struct.mlist** %16, i64 1
  %18 = load %struct.mlist*, %struct.mlist** %17, align 8
  store %struct.mlist* %18, %struct.mlist** %10, align 8
  %19 = load %struct.mlist*, %struct.mlist** %10, align 8
  %20 = getelementptr inbounds %struct.mlist, %struct.mlist* %19, i32 0, i32 2
  %21 = load %struct.mlist*, %struct.mlist** %20, align 8
  store %struct.mlist* %21, %struct.mlist** %11, align 8
  br label %22

22:                                               ; preds = %91, %3
  %23 = load %struct.mlist*, %struct.mlist** %11, align 8
  %24 = load %struct.mlist*, %struct.mlist** %10, align 8
  %25 = icmp ne %struct.mlist* %23, %24
  br i1 %25, label %26, label %95

26:                                               ; preds = %22
  %27 = load %struct.mlist*, %struct.mlist** %11, align 8
  %28 = getelementptr inbounds %struct.mlist, %struct.mlist* %27, i32 0, i32 1
  %29 = load %struct.magic*, %struct.magic** %28, align 8
  store %struct.magic* %29, %struct.magic** %12, align 8
  %30 = load %struct.mlist*, %struct.mlist** %11, align 8
  %31 = getelementptr inbounds %struct.mlist, %struct.mlist* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %87, %26
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %90

37:                                               ; preds = %33
  %38 = load %struct.magic*, %struct.magic** %12, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.magic, %struct.magic* %38, i64 %39
  %41 = getelementptr inbounds %struct.magic, %struct.magic* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FILE_NAME, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %87

46:                                               ; preds = %37
  %47 = load %struct.magic*, %struct.magic** %12, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.magic, %struct.magic* %47, i64 %48
  %50 = getelementptr inbounds %struct.magic, %struct.magic* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strcmp(i32 %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %46
  %57 = load %struct.magic*, %struct.magic** %12, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.magic, %struct.magic* %57, i64 %58
  %60 = load %struct.mlist*, %struct.mlist** %7, align 8
  %61 = getelementptr inbounds %struct.mlist, %struct.mlist* %60, i32 0, i32 1
  store %struct.magic* %59, %struct.magic** %61, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %77, %56
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.magic*, %struct.magic** %12, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.magic, %struct.magic* %69, i64 %70
  %72 = getelementptr inbounds %struct.magic, %struct.magic* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %80

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %64

80:                                               ; preds = %75, %64
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %81, %82
  %84 = load %struct.mlist*, %struct.mlist** %7, align 8
  %85 = getelementptr inbounds %struct.mlist, %struct.mlist* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %4, align 4
  br label %96

86:                                               ; preds = %46
  br label %87

87:                                               ; preds = %86, %45
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %8, align 8
  br label %33

90:                                               ; preds = %33
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.mlist*, %struct.mlist** %11, align 8
  %93 = getelementptr inbounds %struct.mlist, %struct.mlist* %92, i32 0, i32 2
  %94 = load %struct.mlist*, %struct.mlist** %93, align 8
  store %struct.mlist* %94, %struct.mlist** %11, align 8
  br label %22

95:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %80
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
