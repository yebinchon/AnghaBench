; ModuleID = '/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_update_maxwidths.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_update_maxwidths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maxwidths = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.statfs = type { i64, i64, i32, i64, i64, i64, i32, i32 }

@update_maxwidths.blocksize = internal global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.maxwidths*, %struct.statfs*)* @update_maxwidths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_maxwidths(%struct.maxwidths* %0, %struct.statfs* %1) #0 {
  %3 = alloca %struct.maxwidths*, align 8
  %4 = alloca %struct.statfs*, align 8
  %5 = alloca i32, align 4
  store %struct.maxwidths* %0, %struct.maxwidths** %3, align 8
  store %struct.statfs* %1, %struct.statfs** %4, align 8
  %6 = load i64, i64* @update_maxwidths.blocksize, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @getbsize(i32* %5, i64* @update_maxwidths.blocksize)
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %12 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %11, i32 0, i32 6
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.statfs*, %struct.statfs** %4, align 8
  %15 = getelementptr inbounds %struct.statfs, %struct.statfs* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strlen(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = call i8* @imax(i8* %13, i32 %18)
  %20 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %21 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %23 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %22, i32 0, i32 5
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.statfs*, %struct.statfs** %4, align 8
  %26 = getelementptr inbounds %struct.statfs, %struct.statfs* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @strlen(i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = call i8* @imax(i8* %24, i32 %29)
  %31 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %32 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %34 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.statfs*, %struct.statfs** %4, align 8
  %37 = getelementptr inbounds %struct.statfs, %struct.statfs* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.statfs*, %struct.statfs** %4, align 8
  %40 = getelementptr inbounds %struct.statfs, %struct.statfs* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* @update_maxwidths.blocksize, align 8
  %43 = call i64 @fsbtoblk(i64 %38, i32 %41, i64 %42)
  %44 = call i32 @int64width(i64 %43)
  %45 = call i8* @imax(i8* %35, i32 %44)
  %46 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %47 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %49 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.statfs*, %struct.statfs** %4, align 8
  %52 = getelementptr inbounds %struct.statfs, %struct.statfs* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.statfs*, %struct.statfs** %4, align 8
  %55 = getelementptr inbounds %struct.statfs, %struct.statfs* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load %struct.statfs*, %struct.statfs** %4, align 8
  %59 = getelementptr inbounds %struct.statfs, %struct.statfs* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @update_maxwidths.blocksize, align 8
  %62 = call i64 @fsbtoblk(i64 %57, i32 %60, i64 %61)
  %63 = call i32 @int64width(i64 %62)
  %64 = call i8* @imax(i8* %50, i32 %63)
  %65 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %66 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %68 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.statfs*, %struct.statfs** %4, align 8
  %71 = getelementptr inbounds %struct.statfs, %struct.statfs* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.statfs*, %struct.statfs** %4, align 8
  %74 = getelementptr inbounds %struct.statfs, %struct.statfs* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* @update_maxwidths.blocksize, align 8
  %77 = call i64 @fsbtoblk(i64 %72, i32 %75, i64 %76)
  %78 = call i32 @int64width(i64 %77)
  %79 = call i8* @imax(i8* %69, i32 %78)
  %80 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %81 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %83 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.statfs*, %struct.statfs** %4, align 8
  %86 = getelementptr inbounds %struct.statfs, %struct.statfs* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.statfs*, %struct.statfs** %4, align 8
  %89 = getelementptr inbounds %struct.statfs, %struct.statfs* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  %92 = call i32 @int64width(i64 %91)
  %93 = call i8* @imax(i8* %84, i32 %92)
  %94 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %95 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %97 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.statfs*, %struct.statfs** %4, align 8
  %100 = getelementptr inbounds %struct.statfs, %struct.statfs* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @int64width(i64 %101)
  %103 = call i8* @imax(i8* %98, i32 %102)
  %104 = load %struct.maxwidths*, %struct.maxwidths** %3, align 8
  %105 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  ret void
}

declare dso_local i32 @getbsize(i32*, i64*) #1

declare dso_local i8* @imax(i8*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @int64width(i64) #1

declare dso_local i64 @fsbtoblk(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
