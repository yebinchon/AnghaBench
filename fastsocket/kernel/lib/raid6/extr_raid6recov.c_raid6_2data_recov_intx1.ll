; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/extr_raid6recov.c_raid6_2data_recov_intx1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/extr_raid6recov.c_raid6_2data_recov_intx1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i8**)* }

@raid6_empty_zero_page = common dso_local global i64 0, align 8
@raid6_call = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@raid6_gfmul = common dso_local global i64** null, align 8
@raid6_gfexi = common dso_local global i64* null, align 8
@raid6_gfinv = common dso_local global i64* null, align 8
@raid6_gfexp = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raid6_2data_recov_intx1(i32 %0, i64 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %11, align 8
  %27 = load i8**, i8*** %10, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to i64*
  store i64* %33, i64** %12, align 8
  %34 = load i8**, i8*** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to i64*
  store i64* %39, i64** %13, align 8
  %40 = load i64, i64* @raid6_empty_zero_page, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8**, i8*** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %41, i8** %45, align 8
  %46 = load i64*, i64** %13, align 8
  %47 = bitcast i64* %46 to i8*
  %48 = load i8**, i8*** %10, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  store i8* %47, i8** %52, align 8
  %53 = load i8**, i8*** %10, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast i8* %57 to i64*
  store i64* %58, i64** %14, align 8
  %59 = load i64, i64* @raid6_empty_zero_page, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load i8**, i8*** %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %60, i8** %64, align 8
  %65 = load i64*, i64** %14, align 8
  %66 = bitcast i64* %65 to i8*
  %67 = load i8**, i8*** %10, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  store i8* %66, i8** %71, align 8
  %72 = load i32 (i32, i64, i8**)*, i32 (i32, i64, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 0), align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i64, i64* %7, align 8
  %75 = load i8**, i8*** %10, align 8
  %76 = call i32 %72(i32 %73, i64 %74, i8** %75)
  %77 = load i64*, i64** %13, align 8
  %78 = bitcast i64* %77 to i8*
  %79 = load i8**, i8*** %10, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %78, i8** %82, align 8
  %83 = load i64*, i64** %14, align 8
  %84 = bitcast i64* %83 to i8*
  %85 = load i8**, i8*** %10, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %84, i8** %88, align 8
  %89 = load i64*, i64** %11, align 8
  %90 = bitcast i64* %89 to i8*
  %91 = load i8**, i8*** %10, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  store i8* %90, i8** %95, align 8
  %96 = load i64*, i64** %12, align 8
  %97 = bitcast i64* %96 to i8*
  %98 = load i8**, i8*** %10, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  store i8* %97, i8** %102, align 8
  %103 = load i64**, i64*** @raid6_gfmul, align 8
  %104 = load i64*, i64** @raid6_gfexi, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %104, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i64*, i64** %103, i64 %110
  %112 = load i64*, i64** %111, align 8
  store i64* %112, i64** %18, align 8
  %113 = load i64**, i64*** @raid6_gfmul, align 8
  %114 = load i64*, i64** @raid6_gfinv, align 8
  %115 = load i64*, i64** @raid6_gfexp, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** @raid6_gfexp, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = xor i64 %119, %124
  %126 = getelementptr inbounds i64, i64* %114, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i64*, i64** %113, i64 %127
  %129 = load i64*, i64** %128, align 8
  store i64* %129, i64** %19, align 8
  br label %130

130:                                              ; preds = %134, %5
  %131 = load i64, i64* %7, align 8
  %132 = add i64 %131, -1
  store i64 %132, i64* %7, align 8
  %133 = icmp ne i64 %131, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %130
  %135 = load i64*, i64** %11, align 8
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %13, align 8
  %138 = load i64, i64* %137, align 8
  %139 = xor i64 %136, %138
  store i64 %139, i64* %15, align 8
  %140 = load i64*, i64** %19, align 8
  %141 = load i64*, i64** %12, align 8
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %14, align 8
  %144 = load i64, i64* %143, align 8
  %145 = xor i64 %142, %144
  %146 = getelementptr inbounds i64, i64* %140, i64 %145
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %16, align 8
  %148 = load i64*, i64** %18, align 8
  %149 = load i64, i64* %15, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %16, align 8
  %153 = xor i64 %151, %152
  store i64 %153, i64* %17, align 8
  %154 = load i64*, i64** %14, align 8
  %155 = getelementptr inbounds i64, i64* %154, i32 1
  store i64* %155, i64** %14, align 8
  store i64 %153, i64* %154, align 8
  %156 = load i64, i64* %17, align 8
  %157 = load i64, i64* %15, align 8
  %158 = xor i64 %156, %157
  %159 = load i64*, i64** %13, align 8
  %160 = getelementptr inbounds i64, i64* %159, i32 1
  store i64* %160, i64** %13, align 8
  store i64 %158, i64* %159, align 8
  %161 = load i64*, i64** %11, align 8
  %162 = getelementptr inbounds i64, i64* %161, i32 1
  store i64* %162, i64** %11, align 8
  %163 = load i64*, i64** %12, align 8
  %164 = getelementptr inbounds i64, i64* %163, i32 1
  store i64* %164, i64** %12, align 8
  br label %130

165:                                              ; preds = %130
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
