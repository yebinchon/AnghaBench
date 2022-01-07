; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_crypto_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_crypto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_node = type { i64 }
%struct.dst_ctl = type { i32 }
%struct.dst_crypto_ctl = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_node*, %struct.dst_ctl*, i8*, i32)* @dst_crypto_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_crypto_init(%struct.dst_node* %0, %struct.dst_ctl* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_node*, align 8
  %7 = alloca %struct.dst_ctl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dst_crypto_ctl*, align 8
  store %struct.dst_node* %0, %struct.dst_node** %6, align 8
  store %struct.dst_ctl* %1, %struct.dst_ctl** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.dst_crypto_ctl*
  store %struct.dst_crypto_ctl* %12, %struct.dst_crypto_ctl** %10, align 8
  %13 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %14 = icmp ne %struct.dst_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %47

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = load %struct.dst_crypto_ctl*, %struct.dst_crypto_ctl** %10, align 8
  %22 = getelementptr inbounds %struct.dst_crypto_ctl, %struct.dst_crypto_ctl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 8, %24
  %26 = load %struct.dst_crypto_ctl*, %struct.dst_crypto_ctl** %10, align 8
  %27 = getelementptr inbounds %struct.dst_crypto_ctl, %struct.dst_crypto_ctl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %25, %29
  %31 = icmp ne i64 %20, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %47

35:                                               ; preds = %18
  %36 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %37 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EEXIST, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %45 = load %struct.dst_crypto_ctl*, %struct.dst_crypto_ctl** %10, align 8
  %46 = call i32 @dst_node_crypto_init(%struct.dst_node* %44, %struct.dst_crypto_ctl* %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %40, %32, %15
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @dst_node_crypto_init(%struct.dst_node*, %struct.dst_crypto_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
