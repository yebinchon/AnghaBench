; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_hash_iterator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_hash_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_crypto_engine = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_crypto_engine*, %struct.scatterlist*, %struct.scatterlist*)* @dst_hash_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_hash_iterator(%struct.dst_crypto_engine* %0, %struct.scatterlist* %1, %struct.scatterlist* %2) #0 {
  %4 = alloca %struct.dst_crypto_engine*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  store %struct.dst_crypto_engine* %0, %struct.dst_crypto_engine** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %6, align 8
  %7 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %8 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %11 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %12 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @crypto_hash_update(i32 %9, %struct.scatterlist* %10, i32 %13)
  ret i32 %14
}

declare dso_local i32 @crypto_hash_update(i32, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
