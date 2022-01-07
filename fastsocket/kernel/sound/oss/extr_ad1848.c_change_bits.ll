; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_change_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_change_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i8*, i32, i32, i32)* @change_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_bits(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %20, %32
  store i32 %33, i32* %17, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %6
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 100, %48
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %6
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %13, align 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %14, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %92

91:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  br label %121

92:                                               ; preds = %50
  %93 = load i32, i32* %17, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %96, i64 %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %93, %105
  store i32 %106, i32* %15, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %109, i64 %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 1, %118
  %120 = xor i32 %119, -1
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %92, %91
  %122 = load i32, i32* %12, align 4
  %123 = load i8, i8* %13, align 1
  %124 = zext i8 %123 to i32
  %125 = mul nsw i32 %122, %124
  %126 = add nsw i32 %125, 50
  %127 = sdiv i32 %126, 100
  store i32 %127, i32* %12, align 4
  %128 = load i8, i8* %13, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %14, align 4
  %131 = shl i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, %132
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %133, align 1
  %138 = load i32, i32* %12, align 4
  %139 = load i8, i8* %13, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %138, %140
  %142 = load i32, i32* %14, align 4
  %143 = shl i32 %141, %142
  %144 = load i8*, i8** %8, align 8
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = or i32 %146, %143
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %144, align 1
  %149 = load i32, i32* %16, align 4
  %150 = load i8*, i8** %9, align 8
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, %149
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %150, align 1
  %155 = load i32, i32* %15, align 4
  %156 = load i8*, i8** %9, align 8
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = or i32 %158, %155
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %156, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
