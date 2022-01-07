; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_syms.c_bfd_print_symbol_vandf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_syms.c_bfd_print_symbol_vandf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c" %c%c%c%c%c%c%c\00", align 1
@BSF_LOCAL = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@BSF_CONSTRUCTOR = common dso_local global i32 0, align 4
@BSF_WARNING = common dso_local global i32 0, align 4
@BSF_INDIRECT = common dso_local global i32 0, align 4
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@BSF_DYNAMIC = common dso_local global i32 0, align 4
@BSF_FUNCTION = common dso_local global i32 0, align 4
@BSF_FILE = common dso_local global i32 0, align 4
@BSF_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_print_symbol_vandf(i32* %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %23, %28
  %30 = call i32 @bfd_fprintf_vma(i32* %19, i32* %20, i64 %29)
  br label %38

31:                                               ; preds = %3
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @bfd_fprintf_vma(i32* %32, i32* %33, i64 %36)
  br label %38

38:                                               ; preds = %31, %18
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @BSF_LOCAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BSF_GLOBAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 33, i32 108
  br label %58

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @BSF_GLOBAL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 103, i32 32
  br label %58

58:                                               ; preds = %51, %44
  %59 = phi i32 [ %50, %44 ], [ %57, %51 ]
  %60 = trunc i32 %59 to i8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @BSF_WEAK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 119, i32 32
  %67 = trunc i32 %66 to i8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 67, i32 32
  %74 = trunc i32 %73 to i8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @BSF_WARNING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 87, i32 32
  %81 = trunc i32 %80 to i8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @BSF_INDIRECT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 73, i32 32
  %88 = trunc i32 %87 to i8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @BSF_DEBUGGING, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %58
  br label %101

94:                                               ; preds = %58
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @BSF_DYNAMIC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 68, i32 32
  br label %101

101:                                              ; preds = %94, %93
  %102 = phi i32 [ 100, %93 ], [ %100, %94 ]
  %103 = trunc i32 %102 to i8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @BSF_FUNCTION, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %124

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @BSF_FILE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %122

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @BSF_OBJECT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 79, i32 32
  br label %122

122:                                              ; preds = %115, %114
  %123 = phi i32 [ 102, %114 ], [ %121, %115 ]
  br label %124

124:                                              ; preds = %122, %108
  %125 = phi i32 [ 70, %108 ], [ %123, %122 ]
  %126 = sitofp i32 %125 to float
  %127 = call i32 @fprintf(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8 signext %60, i8 signext %67, i8 signext %74, i8 signext %81, i8 signext %88, i8 signext %103, float %126)
  ret void
}

declare dso_local i32 @bfd_fprintf_vma(i32*, i32*, i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
