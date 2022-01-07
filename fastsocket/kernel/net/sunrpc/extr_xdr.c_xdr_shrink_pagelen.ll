; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_shrink_pagelen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_shrink_pagelen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, i32, i64, i64, i32, %struct.TYPE_2__*, %struct.kvec* }
%struct.TYPE_2__ = type { i32 }
%struct.kvec = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_buf*, i64)* @xdr_shrink_pagelen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_shrink_pagelen(%struct.xdr_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.xdr_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %12 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %15 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %14, i32 0, i32 6
  %16 = load %struct.kvec*, %struct.kvec** %15, align 8
  store %struct.kvec* %16, %struct.kvec** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %24 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %27 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %25, %30
  %32 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %33 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub i32 %31, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %105

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.kvec*, %struct.kvec** %5, align 8
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub i32 %39, %42
  store i32 %43, i32* %9, align 4
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i64, i64* %4, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.kvec*, %struct.kvec** %5, align 8
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i64, i64* %4, align 8
  store i64 %57, i64* %6, align 8
  %58 = load %struct.kvec*, %struct.kvec** %5, align 8
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %4, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %51
  %65 = load %struct.kvec*, %struct.kvec** %5, align 8
  %66 = getelementptr inbounds %struct.kvec, %struct.kvec* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load %struct.kvec*, %struct.kvec** %5, align 8
  %73 = getelementptr inbounds %struct.kvec, %struct.kvec* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.kvec*, %struct.kvec** %5, align 8
  %76 = getelementptr inbounds %struct.kvec, %struct.kvec* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %4, align 8
  %80 = sub i64 %78, %79
  %81 = call i32 @memmove(i8* %71, i64 %74, i64 %80)
  br label %87

82:                                               ; preds = %51
  %83 = load %struct.kvec*, %struct.kvec** %5, align 8
  %84 = getelementptr inbounds %struct.kvec, %struct.kvec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %82, %64
  %88 = load %struct.kvec*, %struct.kvec** %5, align 8
  %89 = getelementptr inbounds %struct.kvec, %struct.kvec* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %93 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %96 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load i64, i64* %4, align 8
  %102 = sub i64 %100, %101
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @_copy_from_pages(i8* %91, i32 %94, i64 %102, i64 %103)
  br label %105

105:                                              ; preds = %87, %2
  %106 = load i64, i64* %4, align 8
  %107 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %108 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = zext i32 %109 to i64
  %111 = sub i64 %110, %106
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 8
  %113 = load i64, i64* %4, align 8
  %114 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %115 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  %118 = sub i64 %117, %113
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 4
  %120 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %121 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %124 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  %127 = icmp sgt i64 %122, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %105
  %129 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %130 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  %133 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %134 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %128, %105
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memmove(i8*, i64, i64) #1

declare dso_local i32 @_copy_from_pages(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
