; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_data.c_data_copy_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_data.c_data_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i64, i64 }

@empty_data = common dso_local global %struct.data zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"Error reading file into data: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Overflow reading file into data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @data_copy_file(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.data, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.data, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = bitcast %struct.data* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.data* @empty_data to i8*), i64 16, i1 false)
  br label %10

10:                                               ; preds = %70, %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @feof(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  br i1 %20, label %21, label %75

21:                                               ; preds = %19
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i64 4096, i64* %6, align 8
  br label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %26, %28
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %25, %24
  %31 = load i64, i64* %6, align 8
  %32 = bitcast %struct.data* %3 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call { i64, i64 } @data_grow_for(i64 %34, i64 %36, i64 %31)
  %38 = bitcast %struct.data* %8 to { i64, i64 }*
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 0
  %40 = extractvalue { i64, i64 } %37, 0
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 1
  %42 = extractvalue { i64, i64 } %37, 1
  store i64 %42, i64* %41, align 8
  %43 = bitcast %struct.data* %3 to i8*
  %44 = bitcast %struct.data* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 16, i1 false)
  %45 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %46, %48
  %50 = load i64, i64* %6, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @fread(i64 %49, i32 1, i64 %50, i32* %51)
  store i64 %52, i64* %7, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @ferror(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %30
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %30
  %61 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %62, %63
  %65 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %60
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %71
  store i64 %74, i64* %72, align 8
  br label %10

75:                                               ; preds = %19
  %76 = bitcast %struct.data* %3 to { i64, i64 }*
  %77 = load { i64, i64 }, { i64, i64 }* %76, align 8
  ret { i64, i64 } %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @feof(i32*) #2

declare dso_local { i64, i64 } @data_grow_for(i64, i64, i64) #2

declare dso_local i64 @fread(i64, i32, i64, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
