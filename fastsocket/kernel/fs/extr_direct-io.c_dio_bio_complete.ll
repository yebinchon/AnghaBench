; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_bio_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_bio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32, i64, i64 }
%struct.bio = type { i32, %struct.bio_vec*, i32 }
%struct.bio_vec = type { %struct.page* }
%struct.page = type { i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.bio*)* @dio_bio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio_bio_complete(%struct.dio* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dio*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.dio* %0, %struct.dio** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %9 = load i32, i32* @BIO_UPTODATE, align 4
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 2
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 1
  %15 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  store %struct.bio_vec* %15, %struct.bio_vec** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  %21 = load %struct.dio*, %struct.dio** %3, align 8
  %22 = getelementptr inbounds %struct.dio, %struct.dio* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.dio*, %struct.dio** %3, align 8
  %25 = getelementptr inbounds %struct.dio, %struct.dio* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.dio*, %struct.dio** %3, align 8
  %30 = getelementptr inbounds %struct.dio, %struct.dio* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @READ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = call i32 @bio_check_pages_dirty(%struct.bio* %35)
  br label %72

37:                                               ; preds = %28, %23
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %66, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %45, i64 %47
  %49 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %48, i32 0, i32 0
  %50 = load %struct.page*, %struct.page** %49, align 8
  store %struct.page* %50, %struct.page** %8, align 8
  %51 = load %struct.dio*, %struct.dio** %3, align 8
  %52 = getelementptr inbounds %struct.dio, %struct.dio* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @READ, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %44
  %57 = load %struct.page*, %struct.page** %8, align 8
  %58 = call i32 @PageCompound(%struct.page* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = call i32 @set_page_dirty_lock(%struct.page* %61)
  br label %63

63:                                               ; preds = %60, %56, %44
  %64 = load %struct.page*, %struct.page** %8, align 8
  %65 = call i32 @page_cache_release(%struct.page* %64)
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %38

69:                                               ; preds = %38
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = call i32 @bio_put(%struct.bio* %70)
  br label %72

72:                                               ; preds = %69, %34
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  br label %79

79:                                               ; preds = %76, %75
  %80 = phi i32 [ 0, %75 ], [ %78, %76 ]
  ret i32 %80
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_check_pages_dirty(%struct.bio*) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @set_page_dirty_lock(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
