; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-record.c_perf_record__mmap_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-record.c_perf_record__mmap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_record = type { i32, i32 }
%struct.perf_mmap = type { i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_record*, %struct.perf_mmap*)* @perf_record__mmap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_record__mmap_read(%struct.perf_record* %0, %struct.perf_mmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_record*, align 8
  %5 = alloca %struct.perf_mmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.perf_record* %0, %struct.perf_record** %4, align 8
  store %struct.perf_mmap* %1, %struct.perf_mmap** %5, align 8
  %12 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %13 = call i32 @perf_mmap__read_head(%struct.perf_mmap* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %15 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %18 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.perf_record*, %struct.perf_record** %4, align 8
  %21 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  store i8* %24, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

29:                                               ; preds = %2
  %30 = load %struct.perf_record*, %struct.perf_record** %4, align 8
  %31 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 %34, %35
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %40 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %38, %41
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %48 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %46, %49
  %51 = zext i32 %50 to i64
  %52 = icmp ne i64 %45, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %29
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %57 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %55, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %54, i64 %60
  store i8* %61, i8** %10, align 8
  %62 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %63 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add i32 %64, 1
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %68 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %66, %69
  %71 = sub i32 %65, %70
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = add i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  %78 = load %struct.perf_record*, %struct.perf_record** %4, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @write_output(%struct.perf_record* %78, i8* %79, i64 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %53
  store i32 -1, i32* %11, align 4
  br label %116

84:                                               ; preds = %53
  br label %85

85:                                               ; preds = %84, %29
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %89 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %87, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %86, i64 %92
  store i8* %93, i8** %10, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub i32 %94, %95
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = add i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %7, align 4
  %103 = load %struct.perf_record*, %struct.perf_record** %4, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i64 @write_output(%struct.perf_record* %103, i8* %104, i64 %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %85
  store i32 -1, i32* %11, align 4
  br label %116

109:                                              ; preds = %85
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %112 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.perf_mmap*, %struct.perf_mmap** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @perf_mmap__write_tail(%struct.perf_mmap* %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %108, %83
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %28
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @perf_mmap__read_head(%struct.perf_mmap*) #1

declare dso_local i64 @write_output(%struct.perf_record*, i8*, i64) #1

declare dso_local i32 @perf_mmap__write_tail(%struct.perf_mmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
