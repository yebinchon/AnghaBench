; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_esp4.c_esp_init_aead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_esp4.c_esp_init_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__*, %struct.esp_data* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.esp_data = type { %struct.crypto_aead* }
%struct.crypto_aead = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @esp_init_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_init_aead(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.esp_data*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %6, i32 0, i32 1
  %8 = load %struct.esp_data*, %struct.esp_data** %7, align 8
  store %struct.esp_data* %8, %struct.esp_data** %3, align 8
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.crypto_aead* @crypto_alloc_aead(i32 %13, i32 0, i32 0)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %4, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.crypto_aead* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %18 = call i64 @IS_ERR(%struct.crypto_aead* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %55

21:                                               ; preds = %1
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %23 = load %struct.esp_data*, %struct.esp_data** %3, align 8
  %24 = getelementptr inbounds %struct.esp_data, %struct.esp_data* %23, i32 0, i32 0
  store %struct.crypto_aead* %22, %struct.crypto_aead** %24, align 8
  %25 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %27 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %32 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 7
  %37 = sdiv i32 %36, 8
  %38 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %25, i32 %30, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %21
  br label %55

42:                                               ; preds = %21
  %43 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 8
  %50 = call i32 @crypto_aead_setauthsize(%struct.crypto_aead* %43, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %55

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %53, %41, %20
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.crypto_aead* @crypto_alloc_aead(i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_aead*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i32, i32) #1

declare dso_local i32 @crypto_aead_setauthsize(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
