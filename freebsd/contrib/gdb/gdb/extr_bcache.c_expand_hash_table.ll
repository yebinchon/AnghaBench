; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_bcache.c_expand_hash_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_bcache.c_expand_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache = type { i32, i32, %struct.bstring**, i64, i32, i32 }
%struct.bstring = type { %struct.bstring*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@expand_hash_table.sizes = internal global [22 x i64] [i64 1021, i64 2053, i64 4099, i64 8191, i64 16381, i64 32771, i64 65537, i64 131071, i64 262144, i64 524287, i64 1048573, i64 2097143, i64 4194301, i64 8388617, i64 16777213, i64 33554467, i64 67108859, i64 134217757, i64 268435459, i64 536870923, i64 1073741827, i64 2147483659], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcache*)* @expand_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_hash_table(%struct.bcache* %0) #0 {
  %2 = alloca %struct.bcache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bstring**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.bstring*, align 8
  %8 = alloca %struct.bstring*, align 8
  %9 = alloca %struct.bstring**, align 8
  store %struct.bcache* %0, %struct.bcache** %2, align 8
  %10 = load %struct.bcache*, %struct.bcache** %2, align 8
  %11 = getelementptr inbounds %struct.bcache, %struct.bcache* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.bcache*, %struct.bcache** %2, align 8
  %15 = getelementptr inbounds %struct.bcache, %struct.bcache* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bcache*, %struct.bcache** %2, align 8
  %18 = getelementptr inbounds %struct.bcache, %struct.bcache* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 8
  %23 = load %struct.bcache*, %struct.bcache** %2, align 8
  %24 = getelementptr inbounds %struct.bcache, %struct.bcache* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %48, %1
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %29, 22
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [22 x i64], [22 x i64]* @expand_hash_table.sizes, i64 0, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.bcache*, %struct.bcache** %2, align 8
  %37 = getelementptr inbounds %struct.bcache, %struct.bcache* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %35, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [22 x i64], [22 x i64]* @expand_hash_table.sizes, i64 0, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %27

51:                                               ; preds = %41, %27
  %52 = load i32, i32* %3, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 8
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @xmalloc(i64 %55)
  %57 = inttoptr i64 %56 to %struct.bstring**
  store %struct.bstring** %57, %struct.bstring*** %4, align 8
  %58 = load %struct.bstring**, %struct.bstring*** %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @memset(%struct.bstring** %58, i32 0, i64 %59)
  %61 = load %struct.bcache*, %struct.bcache** %2, align 8
  %62 = getelementptr inbounds %struct.bcache, %struct.bcache* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = load %struct.bcache*, %struct.bcache** %2, align 8
  %67 = getelementptr inbounds %struct.bcache, %struct.bcache* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.bcache*, %struct.bcache** %2, align 8
  %74 = getelementptr inbounds %struct.bcache, %struct.bcache* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %121, %51
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.bcache*, %struct.bcache** %2, align 8
  %82 = getelementptr inbounds %struct.bcache, %struct.bcache* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %85, label %124

85:                                               ; preds = %79
  %86 = load %struct.bcache*, %struct.bcache** %2, align 8
  %87 = getelementptr inbounds %struct.bcache, %struct.bcache* %86, i32 0, i32 2
  %88 = load %struct.bstring**, %struct.bstring*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.bstring*, %struct.bstring** %88, i64 %90
  %92 = load %struct.bstring*, %struct.bstring** %91, align 8
  store %struct.bstring* %92, %struct.bstring** %7, align 8
  br label %93

93:                                               ; preds = %118, %85
  %94 = load %struct.bstring*, %struct.bstring** %7, align 8
  %95 = icmp ne %struct.bstring* %94, null
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = load %struct.bstring*, %struct.bstring** %7, align 8
  %98 = getelementptr inbounds %struct.bstring, %struct.bstring* %97, i32 0, i32 0
  %99 = load %struct.bstring*, %struct.bstring** %98, align 8
  store %struct.bstring* %99, %struct.bstring** %8, align 8
  %100 = load %struct.bstring**, %struct.bstring*** %4, align 8
  %101 = load %struct.bstring*, %struct.bstring** %7, align 8
  %102 = getelementptr inbounds %struct.bstring, %struct.bstring* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load %struct.bstring*, %struct.bstring** %7, align 8
  %105 = getelementptr inbounds %struct.bstring, %struct.bstring* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @hash(i32* %103, i32 %106)
  %108 = load i32, i32* %3, align 4
  %109 = urem i32 %107, %108
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.bstring*, %struct.bstring** %100, i64 %110
  store %struct.bstring** %111, %struct.bstring*** %9, align 8
  %112 = load %struct.bstring**, %struct.bstring*** %9, align 8
  %113 = load %struct.bstring*, %struct.bstring** %112, align 8
  %114 = load %struct.bstring*, %struct.bstring** %7, align 8
  %115 = getelementptr inbounds %struct.bstring, %struct.bstring* %114, i32 0, i32 0
  store %struct.bstring* %113, %struct.bstring** %115, align 8
  %116 = load %struct.bstring*, %struct.bstring** %7, align 8
  %117 = load %struct.bstring**, %struct.bstring*** %9, align 8
  store %struct.bstring* %116, %struct.bstring** %117, align 8
  br label %118

118:                                              ; preds = %96
  %119 = load %struct.bstring*, %struct.bstring** %8, align 8
  store %struct.bstring* %119, %struct.bstring** %7, align 8
  br label %93

120:                                              ; preds = %93
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %79

124:                                              ; preds = %79
  %125 = load %struct.bcache*, %struct.bcache** %2, align 8
  %126 = getelementptr inbounds %struct.bcache, %struct.bcache* %125, i32 0, i32 2
  %127 = load %struct.bstring**, %struct.bstring*** %126, align 8
  %128 = icmp ne %struct.bstring** %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.bcache*, %struct.bcache** %2, align 8
  %131 = getelementptr inbounds %struct.bcache, %struct.bcache* %130, i32 0, i32 2
  %132 = load %struct.bstring**, %struct.bstring*** %131, align 8
  %133 = call i32 @xfree(%struct.bstring** %132)
  br label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.bstring**, %struct.bstring*** %4, align 8
  %136 = load %struct.bcache*, %struct.bcache** %2, align 8
  %137 = getelementptr inbounds %struct.bcache, %struct.bcache* %136, i32 0, i32 2
  store %struct.bstring** %135, %struct.bstring*** %137, align 8
  %138 = load i32, i32* %3, align 4
  %139 = load %struct.bcache*, %struct.bcache** %2, align 8
  %140 = getelementptr inbounds %struct.bcache, %struct.bcache* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  ret void
}

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i32 @memset(%struct.bstring**, i32, i64) #1

declare dso_local i32 @hash(i32*, i32) #1

declare dso_local i32 @xfree(%struct.bstring**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
