; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_alloc_bioset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_alloc_bioset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32, %struct.bio_vec*, %struct.bio_vec* }
%struct.bio_vec = type { i32 }
%struct.bio_set = type { i32, i32 }

@BIO_POOL_NONE = common dso_local global i64 0, align 8
@BIO_INLINE_VECS = common dso_local global i32 0, align 4
@BIO_POOL_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_alloc_bioset(i32 %0, i32 %1, %struct.bio_set* %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio_set*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bio_vec*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.bio_set* %2, %struct.bio_set** %7, align 8
  %12 = load i64, i64* @BIO_POOL_NONE, align 8
  store i64 %12, i64* %8, align 8
  store %struct.bio_vec* null, %struct.bio_vec** %9, align 8
  %13 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %14 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @mempool_alloc(i32 %15, i32 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %88

25:                                               ; preds = %3
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %28 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %26, i64 %30
  %32 = bitcast i8* %31 to %struct.bio*
  store %struct.bio* %32, %struct.bio** %10, align 8
  %33 = load %struct.bio*, %struct.bio** %10, align 8
  %34 = call i32 @bio_init(%struct.bio* %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %67

42:                                               ; preds = %25
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @BIO_INLINE_VECS, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.bio*, %struct.bio** %10, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 3
  %49 = load %struct.bio_vec*, %struct.bio_vec** %48, align 8
  store %struct.bio_vec* %49, %struct.bio_vec** %9, align 8
  %50 = load i32, i32* @BIO_INLINE_VECS, align 4
  store i32 %50, i32* %6, align 4
  br label %66

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %55 = call %struct.bio_vec* @bvec_alloc_bs(i32 %52, i32 %53, i64* %8, %struct.bio_set* %54)
  store %struct.bio_vec* %55, %struct.bio_vec** %9, align 8
  %56 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %57 = icmp ne %struct.bio_vec* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %82

63:                                               ; preds = %51
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @bvec_nr_vecs(i64 %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %46
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @BIO_POOL_OFFSET, align 8
  %70 = shl i64 %68, %69
  %71 = load %struct.bio*, %struct.bio** %10, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = or i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.bio*, %struct.bio** %10, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %79 = load %struct.bio*, %struct.bio** %10, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 2
  store %struct.bio_vec* %78, %struct.bio_vec** %80, align 8
  %81 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %81, %struct.bio** %4, align 8
  br label %88

82:                                               ; preds = %62
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %85 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mempool_free(i8* %83, i32 %86)
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %88

88:                                               ; preds = %82, %67, %24
  %89 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %89
}

declare dso_local i8* @mempool_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_init(%struct.bio*) #1

declare dso_local %struct.bio_vec* @bvec_alloc_bs(i32, i32, i64*, %struct.bio_set*) #1

declare dso_local i32 @bvec_nr_vecs(i64) #1

declare dso_local i32 @mempool_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
