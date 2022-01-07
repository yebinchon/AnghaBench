; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_data.c_data_copy_escape_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_data.c_data_copy_escape_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i8*, i32 }

@empty_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i32 } @data_copy_escape_string(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.data, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.data, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @empty_data, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  %13 = call { i8*, i32 } @data_grow_for(i32 %10, i32 %12)
  %14 = bitcast %struct.data* %8 to { i8*, i32 }*
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %14, i32 0, i32 0
  %16 = extractvalue { i8*, i32 } %13, 0
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %14, i32 0, i32 1
  %18 = extractvalue { i8*, i32 } %13, 1
  store i32 %18, i32* %17, align 8
  %19 = bitcast %struct.data* %3 to i8*
  %20 = bitcast %struct.data* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %40, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i8*, i8** %4, align 8
  %39 = call signext i8 @get_escape_char(i8* %38, i32* %6)
  store i8 %39, i8* %9, align 1
  br label %40

40:                                               ; preds = %37, %27
  %41 = load i8, i8* %9, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  store i8 %41, i8* %47, align 1
  br label %23

48:                                               ; preds = %23
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  store i8 0, i8* %54, align 1
  %55 = bitcast %struct.data* %3 to { i8*, i32 }*
  %56 = load { i8*, i32 }, { i8*, i32 }* %55, align 8
  ret { i8*, i32 } %56
}

declare dso_local { i8*, i32 } @data_grow_for(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local signext i8 @get_escape_char(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
