; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_trans_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_trans_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfs_trans = type { i32 }
%struct.pohmelfs_sb = type { i32, i32, i32 }

@pohmelfs_trans_crypt_action = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pohmelfs_trans_crypt(%struct.netfs_trans* %0, %struct.pohmelfs_sb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netfs_trans*, align 8
  %5 = alloca %struct.pohmelfs_sb*, align 8
  store %struct.netfs_trans* %0, %struct.netfs_trans** %4, align 8
  store %struct.pohmelfs_sb* %1, %struct.pohmelfs_sb** %5, align 8
  %6 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %7 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %12 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10, %2
  %16 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %17 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %22 = call i32 @netfs_trans_get(%struct.netfs_trans* %21)
  %23 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %24 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %25 = call i32 @pohmelfs_crypto_finish(%struct.netfs_trans* %23, %struct.pohmelfs_sb* %24, i32 0)
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %15
  %27 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %28 = load i32, i32* @pohmelfs_trans_crypt_action, align 4
  %29 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %30 = call i32 @pohmelfs_crypto_thread_get(%struct.pohmelfs_sb* %27, i32 %28, %struct.netfs_trans* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @netfs_trans_get(%struct.netfs_trans*) #1

declare dso_local i32 @pohmelfs_crypto_finish(%struct.netfs_trans*, %struct.pohmelfs_sb*, i32) #1

declare dso_local i32 @pohmelfs_crypto_thread_get(%struct.pohmelfs_sb*, i32, %struct.netfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
