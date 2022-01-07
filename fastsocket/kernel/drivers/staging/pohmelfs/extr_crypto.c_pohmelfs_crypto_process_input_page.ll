; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_process_input_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_process_input_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_crypto_engine = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.pohmelfs_crypto_input_action_data = type { i32, i32, %struct.pohmelfs_crypto_engine*, %struct.page* }

@ENOENT = common dso_local global i32 0, align 4
@pohmelfs_crypt_input_page_action = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pohmelfs_crypto_process_input_page(%struct.pohmelfs_crypto_engine* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pohmelfs_crypto_engine*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.pohmelfs_crypto_input_action_data, align 8
  %12 = alloca i32, align 4
  store %struct.pohmelfs_crypto_engine* %0, %struct.pohmelfs_crypto_engine** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.page*, %struct.page** %7, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.page*, %struct.page** %7, align 8
  %21 = getelementptr inbounds %struct.pohmelfs_crypto_input_action_data, %struct.pohmelfs_crypto_input_action_data* %11, i32 0, i32 3
  store %struct.page* %20, %struct.page** %21, align 8
  %22 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %6, align 8
  %23 = getelementptr inbounds %struct.pohmelfs_crypto_input_action_data, %struct.pohmelfs_crypto_input_action_data* %11, i32 0, i32 2
  store %struct.pohmelfs_crypto_engine* %22, %struct.pohmelfs_crypto_engine** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.pohmelfs_crypto_input_action_data, %struct.pohmelfs_crypto_input_action_data* %11, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.pohmelfs_crypto_input_action_data, %struct.pohmelfs_crypto_input_action_data* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @POHMELFS_SB(i32 %30)
  %32 = load i32, i32* @pohmelfs_crypt_input_page_action, align 4
  %33 = call i32 @pohmelfs_crypto_thread_get(i32 %31, i32 %32, %struct.pohmelfs_crypto_input_action_data* %11)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

38:                                               ; preds = %36
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = call i32 @SetPageUptodate(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %7, align 8
  %42 = call i32 @page_cache_release(%struct.page* %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %37
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @pohmelfs_crypto_thread_get(i32, i32, %struct.pohmelfs_crypto_input_action_data*) #1

declare dso_local i32 @POHMELFS_SB(i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
