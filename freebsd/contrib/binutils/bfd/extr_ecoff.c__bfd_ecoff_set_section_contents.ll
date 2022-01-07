; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_set_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_set_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@_LIB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_ecoff_set_section_contents(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = call i32 @ecoff_compute_section_file_positions(%struct.TYPE_9__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %6, align 4
  br label %88

25:                                               ; preds = %19, %5
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @_LIB, align 4
  %30 = call i64 @streq(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %25
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %14, align 8
  br label %39

39:                                               ; preds = %43, %32
  %40 = load i32*, i32** %13, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @bfd_get_32(%struct.TYPE_9__* %48, i32* %49)
  %51 = mul nsw i32 %50, 4
  %52 = load i32*, i32** %13, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %13, align 8
  br label %39

55:                                               ; preds = %39
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = icmp eq i32* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @BFD_ASSERT(i32 %59)
  br label %61

61:                                               ; preds = %55, %25
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %6, align 4
  br label %88

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %69, %70
  store i64 %71, i64* %12, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* @SEEK_SET, align 4
  %75 = call i64 @bfd_seek(%struct.TYPE_9__* %72, i64 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %66
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = call i32 @bfd_bwrite(i8* %78, i32 %79, %struct.TYPE_9__* %80)
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77, %66
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %6, align 4
  br label %88

86:                                               ; preds = %77
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %84, %64, %23
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @ecoff_compute_section_file_positions(%struct.TYPE_9__*) #1

declare dso_local i64 @streq(i32, i32) #1

declare dso_local i32 @bfd_get_32(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @bfd_bwrite(i8*, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
