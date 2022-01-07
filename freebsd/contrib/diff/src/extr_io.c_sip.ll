; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_io.c_sip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_io.c_sip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i64, i32, i32, i64, i8*, i32, i32 }

@PTRDIFF_MAX = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_data*, i32)* @sip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sip(%struct.file_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.file_data* %0, %struct.file_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.file_data*, %struct.file_data** %4, align 8
  %9 = getelementptr inbounds %struct.file_data, %struct.file_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.file_data*, %struct.file_data** %4, align 8
  %14 = getelementptr inbounds %struct.file_data, %struct.file_data* %13, i32 0, i32 1
  store i32 4, i32* %14, align 8
  %15 = load %struct.file_data*, %struct.file_data** %4, align 8
  %16 = getelementptr inbounds %struct.file_data, %struct.file_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @xmalloc(i32 %17)
  %19 = load %struct.file_data*, %struct.file_data** %4, align 8
  %20 = getelementptr inbounds %struct.file_data, %struct.file_data* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  br label %84

21:                                               ; preds = %2
  %22 = load %struct.file_data*, %struct.file_data** %4, align 8
  %23 = getelementptr inbounds %struct.file_data, %struct.file_data* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @STAT_BLOCKSIZE(i32 %24)
  %26 = load i64, i64* @PTRDIFF_MAX, align 8
  %27 = sub i64 %26, 8
  %28 = call i32 @buffer_lcm(i32 4, i32 %25, i64 %27)
  %29 = load %struct.file_data*, %struct.file_data** %4, align 8
  %30 = getelementptr inbounds %struct.file_data, %struct.file_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.file_data*, %struct.file_data** %4, align 8
  %32 = getelementptr inbounds %struct.file_data, %struct.file_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @xmalloc(i32 %33)
  %35 = load %struct.file_data*, %struct.file_data** %4, align 8
  %36 = getelementptr inbounds %struct.file_data, %struct.file_data* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %83, label %39

39:                                               ; preds = %21
  %40 = load %struct.file_data*, %struct.file_data** %4, align 8
  %41 = getelementptr inbounds %struct.file_data, %struct.file_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @set_binary_mode(i64 %42, i32 1)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.file_data*, %struct.file_data** %4, align 8
  %45 = load %struct.file_data*, %struct.file_data** %4, align 8
  %46 = getelementptr inbounds %struct.file_data, %struct.file_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @file_block_read(%struct.file_data* %44, i32 %47)
  %49 = load %struct.file_data*, %struct.file_data** %4, align 8
  %50 = getelementptr inbounds %struct.file_data, %struct.file_data* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %39
  %55 = load %struct.file_data*, %struct.file_data** %4, align 8
  %56 = getelementptr inbounds %struct.file_data, %struct.file_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub nsw i64 0, %58
  %60 = load i32, i32* @SEEK_CUR, align 4
  %61 = call i32 @lseek(i64 %57, i64 %59, i32 %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.file_data*, %struct.file_data** %4, align 8
  %65 = getelementptr inbounds %struct.file_data, %struct.file_data* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pfatal_with_name(i32 %66)
  br label %68

68:                                               ; preds = %63, %54
  %69 = load %struct.file_data*, %struct.file_data** %4, align 8
  %70 = getelementptr inbounds %struct.file_data, %struct.file_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @set_binary_mode(i64 %71, i32 0)
  %73 = load %struct.file_data*, %struct.file_data** %4, align 8
  %74 = getelementptr inbounds %struct.file_data, %struct.file_data* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.file_data*, %struct.file_data** %4, align 8
  %76 = getelementptr inbounds %struct.file_data, %struct.file_data* %75, i32 0, i32 2
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %39
  %78 = load %struct.file_data*, %struct.file_data** %4, align 8
  %79 = getelementptr inbounds %struct.file_data, %struct.file_data* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @binary_file_p(i8* %80, i64 %81)
  store i32 %82, i32* %3, align 4
  br label %89

83:                                               ; preds = %21
  br label %84

84:                                               ; preds = %83, %12
  %85 = load %struct.file_data*, %struct.file_data** %4, align 8
  %86 = getelementptr inbounds %struct.file_data, %struct.file_data* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.file_data*, %struct.file_data** %4, align 8
  %88 = getelementptr inbounds %struct.file_data, %struct.file_data* %87, i32 0, i32 2
  store i32 0, i32* %88, align 4
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %77
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @buffer_lcm(i32, i32, i64) #1

declare dso_local i32 @STAT_BLOCKSIZE(i32) #1

declare dso_local i32 @set_binary_mode(i64, i32) #1

declare dso_local i32 @file_block_read(%struct.file_data*, i32) #1

declare dso_local i32 @lseek(i64, i64, i32) #1

declare dso_local i32 @pfatal_with_name(i32) #1

declare dso_local i32 @binary_file_p(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
