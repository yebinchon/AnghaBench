; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_read_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcache_block = type { i64, i8*, i64, i32 }
%struct.mem_region = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@LINE_SIZE = common dso_local global i32 0, align 4
@MEM_WO = common dso_local global i64 0, align 8
@ENTRY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.dcache_block*)* @dcache_read_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcache_read_line(i32* %0, %struct.dcache_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dcache_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_region*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.dcache_block* %1, %struct.dcache_block** %5, align 8
  %12 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %13 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %19 = call i32 @dcache_write_line(i32* %17, %struct.dcache_block* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %117

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* @LINE_SIZE, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %26 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %29 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %108, %67, %23
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %109

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = call %struct.mem_region* @lookup_mem_region(i64 %35)
  store %struct.mem_region* %36, %struct.mem_region** %11, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load %struct.mem_region*, %struct.mem_region** %11, align 8
  %42 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %10, align 4
  br label %54

47:                                               ; preds = %34
  %48 = load %struct.mem_region*, %struct.mem_region** %11, align 8
  %49 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = sub nsw i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %47, %45
  %55 = load %struct.mem_region*, %struct.mem_region** %11, align 8
  %56 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.mem_region*, %struct.mem_region** %11, align 8
  %62 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MEM_WO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %60, %54
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %31

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %93, %79
  %81 = load i32, i32* %10, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i64, i64* %6, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.mem_region*, %struct.mem_region** %11, align 8
  %88 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %87, i32 0, i32 1
  %89 = call i32 @do_xfer_memory(i64 %84, i8* %85, i32 %86, i32 0, %struct.TYPE_2__* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %117

93:                                               ; preds = %83
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %80

108:                                              ; preds = %80
  br label %31

109:                                              ; preds = %31
  %110 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %111 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ENTRY_OK, align 4
  %114 = call i32 @memset(i32 %112, i32 %113, i32 8)
  %115 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %116 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %109, %92, %21
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @dcache_write_line(i32*, %struct.dcache_block*) #1

declare dso_local %struct.mem_region* @lookup_mem_region(i64) #1

declare dso_local i32 @do_xfer_memory(i64, i8*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
