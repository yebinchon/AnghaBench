; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_setup_one_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_setup_one_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.o2hb_bio_wait_ctxt*, i32 }
%struct.o2hb_region = type { i32, i32, i32, %struct.page**, i32 }
%struct.page = type { i32 }
%struct.o2hb_bio_wait_ctxt = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not alloc slots BIO!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@o2hb_bio_end_io = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ML_HB_BIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"page %d, vec_len = %u, vec_start = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*, i32*, i32)* @o2hb_setup_one_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @o2hb_setup_one_bio(%struct.o2hb_region* %0, %struct.o2hb_bio_wait_ctxt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.o2hb_region*, align 8
  %6 = alloca %struct.o2hb_bio_wait_ctxt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bio*, align 8
  %17 = alloca %struct.page*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %5, align 8
  store %struct.o2hb_bio_wait_ctxt* %1, %struct.o2hb_bio_wait_ctxt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %19 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %22 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.bio* @bio_alloc(i32 %26, i32 16)
  store %struct.bio* %27, %struct.bio** %16, align 8
  %28 = load %struct.bio*, %struct.bio** %16, align 8
  %29 = icmp ne %struct.bio* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @ML_ERROR, align 4
  %32 = call i32 (i32, i8*, ...) @mlog(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.bio* @ERR_PTR(i32 %34)
  store %struct.bio* %35, %struct.bio** %16, align 8
  br label %112

36:                                               ; preds = %4
  %37 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %38 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = add i32 %39, %40
  %42 = load i32, i32* %13, align 4
  %43 = sub i32 %42, 9
  %44 = shl i32 %41, %43
  %45 = load %struct.bio*, %struct.bio** %16, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %48 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bio*, %struct.bio** %16, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.o2hb_bio_wait_ctxt*, %struct.o2hb_bio_wait_ctxt** %6, align 8
  %53 = load %struct.bio*, %struct.bio** %16, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 2
  store %struct.o2hb_bio_wait_ctxt* %52, %struct.o2hb_bio_wait_ctxt** %54, align 8
  %55 = load i32, i32* @o2hb_bio_end_io, align 4
  %56 = load %struct.bio*, %struct.bio** %16, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %13, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %62 = urem i32 %60, %61
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %103, %36
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %63
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = udiv i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %72 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %71, i32 0, i32 3
  %73 = load %struct.page**, %struct.page*** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.page*, %struct.page** %73, i64 %75
  %77 = load %struct.page*, %struct.page** %76, align 8
  store %struct.page* %77, %struct.page** %17, align 8
  %78 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sub i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sub i32 %81, %82
  %84 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %85 = load i32, i32* %14, align 4
  %86 = udiv i32 %84, %85
  %87 = mul i32 %83, %86
  %88 = call i32 @min(i32 %80, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* @ML_HB_BIO, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 (i32, i8*, ...) @mlog(i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  %94 = load %struct.bio*, %struct.bio** %16, align 8
  %95 = load %struct.page*, %struct.page** %17, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @bio_add_page(%struct.bio* %94, %struct.page* %95, i32 %96, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %67
  br label %111

103:                                              ; preds = %67
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %106 = load i32, i32* %14, align 4
  %107 = udiv i32 %105, %106
  %108 = udiv i32 %104, %107
  %109 = load i32, i32* %15, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %63

111:                                              ; preds = %102, %63
  br label %112

112:                                              ; preds = %111, %30
  %113 = load i32, i32* %15, align 4
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  %115 = load %struct.bio*, %struct.bio** %16, align 8
  ret %struct.bio* %115
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local %struct.bio* @ERR_PTR(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
