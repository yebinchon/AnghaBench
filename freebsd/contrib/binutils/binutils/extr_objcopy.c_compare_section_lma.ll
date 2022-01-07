; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_compare_section_lma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_compare_section_lma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_section_lma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_section_lma(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__**, align 8
  %7 = alloca %struct.TYPE_3__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__**
  store %struct.TYPE_3__** %11, %struct.TYPE_3__*** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__**
  store %struct.TYPE_3__** %13, %struct.TYPE_3__*** %7, align 8
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SEC_LOAD, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26, %2
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @SEC_LOAD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %98

42:                                               ; preds = %36, %31
  br label %55

43:                                               ; preds = %26
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SEC_LOAD, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %43
  store i32 1, i32* %3, align 4
  br label %98

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %98

66:                                               ; preds = %55
  %67 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %70, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %98

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = call i64 @bfd_get_section_size(%struct.TYPE_3__* %80)
  %82 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = call i64 @bfd_get_section_size(%struct.TYPE_3__* %83)
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %98

87:                                               ; preds = %78
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = call i64 @bfd_get_section_size(%struct.TYPE_3__* %89)
  %91 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = call i64 @bfd_get_section_size(%struct.TYPE_3__* %92)
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 -1, i32* %3, align 4
  br label %98

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %95, %86, %76, %65, %53, %41
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @bfd_get_section_size(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
