; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_info.c_rds_info_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_info.c_rds_info_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_info_iterator = type { i64, i32*, i32* }

@KM_USER0 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"page %p addr %p offset %lu this %lu data %p bytes %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_info_copy(%struct.rds_info_iterator* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.rds_info_iterator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rds_info_iterator* %0, %struct.rds_info_iterator** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %87, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %88

11:                                               ; preds = %8
  %12 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %18 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @KM_USER0, align 4
  %22 = call i32* @kmap_atomic(i32 %20, i32 %21)
  %23 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %24 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  br label %25

25:                                               ; preds = %16, %11
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %29 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = call i64 @min(i64 %26, i64 %31)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %34 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %38 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %41 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @rdsdebug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %36, i32* %39, i64 %42, i64 %43, i8* %44, i64 %45)
  %47 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %48 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %51 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @memcpy(i32* %53, i8* %54, i64 %55)
  %57 = load i64, i64* %7, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr i8, i8* %58, i64 %57
  store i8* %59, i8** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %65 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %69 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %25
  %74 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %75 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @KM_USER0, align 4
  %78 = call i32 @kunmap_atomic(i32* %76, i32 %77)
  %79 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %80 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  %81 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %82 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %84 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %84, align 8
  br label %87

87:                                               ; preds = %73, %25
  br label %8

88:                                               ; preds = %8
  ret void
}

declare dso_local i32* @kmap_atomic(i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @rdsdebug(i8*, i32, i32*, i64, i64, i8*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
