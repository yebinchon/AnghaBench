; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_data.c_data_grow_for.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_data.c_data_grow_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @data_grow_for(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.data, align 4
  %4 = alloca %struct.data, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.data, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.data* %4 to i64*
  store i64 %0, i64* %8, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = bitcast %struct.data* %3 to i8*
  %13 = bitcast %struct.data* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  br label %36

14:                                               ; preds = %2
  %15 = bitcast %struct.data* %6 to i8*
  %16 = bitcast %struct.data* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 8, i1 false)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %25, %14
  %19 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %7, align 4
  br label %18

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @xrealloc(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.data, %struct.data* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.data* %3 to i8*
  %35 = bitcast %struct.data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  br label %36

36:                                               ; preds = %28, %11
  %37 = bitcast %struct.data* %3 to i64*
  %38 = load i64, i64* %37, align 4
  ret i64 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @xrealloc(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
