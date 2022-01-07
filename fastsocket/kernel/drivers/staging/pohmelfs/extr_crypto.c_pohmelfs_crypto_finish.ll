; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfs_trans = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netfs_cmd* }
%struct.netfs_cmd = type { i32 }
%struct.pohmelfs_sb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfs_trans*, %struct.pohmelfs_sb*, i32)* @pohmelfs_crypto_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_crypto_finish(%struct.netfs_trans* %0, %struct.pohmelfs_sb* %1, i32 %2) #0 {
  %4 = alloca %struct.netfs_trans*, align 8
  %5 = alloca %struct.pohmelfs_sb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netfs_cmd*, align 8
  store %struct.netfs_trans* %0, %struct.netfs_trans** %4, align 8
  store %struct.pohmelfs_sb* %1, %struct.pohmelfs_sb** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %9 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.netfs_cmd*, %struct.netfs_cmd** %10, align 8
  store %struct.netfs_cmd* %11, %struct.netfs_cmd** %7, align 8
  %12 = load %struct.netfs_cmd*, %struct.netfs_cmd** %7, align 8
  %13 = call i32 @netfs_convert_cmd(%struct.netfs_cmd* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %22 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %23 = call i32 @netfs_trans_finish_send(%struct.netfs_trans* %21, %struct.pohmelfs_sb* %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %27 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %29 = call i32 @netfs_trans_put(%struct.netfs_trans* %28)
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @netfs_convert_cmd(%struct.netfs_cmd*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netfs_trans_finish_send(%struct.netfs_trans*, %struct.pohmelfs_sb*) #1

declare dso_local i32 @netfs_trans_put(%struct.netfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
