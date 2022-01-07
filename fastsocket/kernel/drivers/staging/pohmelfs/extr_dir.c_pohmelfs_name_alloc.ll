; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_name_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_name_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_name = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pohmelfs_name* (i32)* @pohmelfs_name_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pohmelfs_name* @pohmelfs_name_alloc(i32 %0) #0 {
  %2 = alloca %struct.pohmelfs_name*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pohmelfs_name*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = zext i32 %5 to i64
  %7 = add i64 16, %6
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pohmelfs_name* @kzalloc(i32 %8, i32 %9)
  store %struct.pohmelfs_name* %10, %struct.pohmelfs_name** %4, align 8
  %11 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %4, align 8
  %12 = icmp ne %struct.pohmelfs_name* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.pohmelfs_name* null, %struct.pohmelfs_name** %2, align 8
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %4, align 8
  %16 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %4, align 8
  %19 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %18, i64 1
  %20 = bitcast %struct.pohmelfs_name* %19 to i8*
  %21 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %4, align 8
  %22 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %4, align 8
  store %struct.pohmelfs_name* %23, %struct.pohmelfs_name** %2, align 8
  br label %24

24:                                               ; preds = %14, %13
  %25 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %2, align 8
  ret %struct.pohmelfs_name* %25
}

declare dso_local %struct.pohmelfs_name* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
