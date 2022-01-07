; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mpage.c_mpage_end_io_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mpage.c_mpage_end_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.bio_vec*, i32 }
%struct.bio_vec = type { %struct.page* }
%struct.page = type { i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @mpage_end_io_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpage_end_io_read(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @BIO_UPTODATE, align 4
  %9 = load %struct.bio*, %struct.bio** %3, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 2
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 1
  %14 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %15 = load %struct.bio*, %struct.bio** %3, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %14, i64 %18
  %20 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %19, i64 -1
  store %struct.bio_vec* %20, %struct.bio_vec** %6, align 8
  br label %21

21:                                               ; preds = %51, %2
  %22 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %23 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %22, i32 0, i32 0
  %24 = load %struct.page*, %struct.page** %23, align 8
  store %struct.page* %24, %struct.page** %7, align 8
  %25 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %26 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %25, i32 -1
  store %struct.bio_vec* %26, %struct.bio_vec** %6, align 8
  %27 = load %struct.bio*, %struct.bio** %3, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 1
  %29 = load %struct.bio_vec*, %struct.bio_vec** %28, align 8
  %30 = icmp uge %struct.bio_vec* %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %33 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %32, i32 0, i32 0
  %34 = load %struct.page*, %struct.page** %33, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = call i32 @prefetchw(i32* %35)
  br label %37

37:                                               ; preds = %31, %21
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.page*, %struct.page** %7, align 8
  %42 = call i32 @SetPageUptodate(%struct.page* %41)
  br label %48

43:                                               ; preds = %37
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = call i32 @ClearPageUptodate(%struct.page* %44)
  %46 = load %struct.page*, %struct.page** %7, align 8
  %47 = call i32 @SetPageError(%struct.page* %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.page*, %struct.page** %7, align 8
  %50 = call i32 @unlock_page(%struct.page* %49)
  br label %51

51:                                               ; preds = %48
  %52 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %53 = load %struct.bio*, %struct.bio** %3, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 1
  %55 = load %struct.bio_vec*, %struct.bio_vec** %54, align 8
  %56 = icmp uge %struct.bio_vec* %52, %55
  br i1 %56, label %21, label %57

57:                                               ; preds = %51
  %58 = load %struct.bio*, %struct.bio** %3, align 8
  %59 = call i32 @bio_put(%struct.bio* %58)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @prefetchw(i32*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
