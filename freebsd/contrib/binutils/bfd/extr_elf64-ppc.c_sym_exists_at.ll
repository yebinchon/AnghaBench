; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_sym_exists_at.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_sym_exists_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__**, i64, i64, i32, i64)* @sym_exists_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @sym_exists_at(%struct.TYPE_6__** %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %73

15:                                               ; preds = %5
  br label %16

16:                                               ; preds = %71, %15
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add nsw i64 %21, %22
  %24 = ashr i64 %23, 1
  store i64 %24, i64* %12, align 8
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %30, %38
  %40 = load i64, i64* %11, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %20
  %43 = load i64, i64* %12, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %71

45:                                               ; preds = %20
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i64 %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %51, %59
  %61 = load i64, i64* %11, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load i64, i64* %12, align 8
  store i64 %64, i64* %9, align 8
  br label %70

65:                                               ; preds = %45
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %6, align 8
  br label %143

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %42
  br label %16

72:                                               ; preds = %16
  br label %142

73:                                               ; preds = %5
  br label %74

74:                                               ; preds = %140, %73
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %141

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add nsw i64 %79, %80
  %82 = ashr i64 %81, 1
  store i64 %82, i64* %12, align 8
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load i64, i64* %12, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %8, align 8
  br label %140

96:                                               ; preds = %78
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %97, i64 %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i64, i64* %12, align 8
  store i64 %108, i64* %9, align 8
  br label %139

109:                                              ; preds = %96
  %110 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %110, i64 %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load i64, i64* %12, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %8, align 8
  br label %138

121:                                              ; preds = %109
  %122 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %122, i64 %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i64, i64* %12, align 8
  store i64 %131, i64* %9, align 8
  br label %137

132:                                              ; preds = %121
  %133 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %133, i64 %134
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  store %struct.TYPE_6__* %136, %struct.TYPE_6__** %6, align 8
  br label %143

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %118
  br label %139

139:                                              ; preds = %138, %107
  br label %140

140:                                              ; preds = %139, %93
  br label %74

141:                                              ; preds = %74
  br label %142

142:                                              ; preds = %141, %72
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %143

143:                                              ; preds = %142, %132, %65
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %144
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
