; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_crypto.c_ima_calc_template_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_crypto.c_ima_calc_template_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32 }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_calc_template_hash(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hash_desc, align 4
  %9 = alloca [1 x %struct.scatterlist], align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call i32 @init_desc(%struct.hash_desc* %8)
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %9, i64 0, i64 0
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sg_init_one(%struct.scatterlist* %17, i8* %18, i32 %19)
  %21 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %9, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @crypto_hash_update(%struct.hash_desc* %8, %struct.scatterlist* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @crypto_hash_final(%struct.hash_desc* %8, i8* %27)
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26, %16
  %30 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @crypto_free_hash(i32 %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @init_desc(%struct.hash_desc*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @crypto_hash_update(%struct.hash_desc*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_hash_final(%struct.hash_desc*, i8*) #1

declare dso_local i32 @crypto_free_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
