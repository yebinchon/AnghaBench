; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_lzo.c_lzo_alloc_workspace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_lzo.c_lzo_alloc_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.workspace = type { %struct.list_head, i8*, i8*, i8* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LZO1X_MEM_COMPRESS = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* ()* @lzo_alloc_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @lzo_alloc_workspace() #0 {
  %1 = alloca %struct.list_head*, align 8
  %2 = alloca %struct.workspace*, align 8
  %3 = load i32, i32* @GFP_NOFS, align 4
  %4 = call %struct.workspace* @kzalloc(i32 32, i32 %3)
  store %struct.workspace* %4, %struct.workspace** %2, align 8
  %5 = load %struct.workspace*, %struct.workspace** %2, align 8
  %6 = icmp ne %struct.workspace* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.list_head* @ERR_PTR(i32 %9)
  store %struct.list_head* %10, %struct.list_head** %1, align 8
  br label %54

11:                                               ; preds = %0
  %12 = load i32, i32* @LZO1X_MEM_COMPRESS, align 4
  %13 = call i8* @vmalloc(i32 %12)
  %14 = load %struct.workspace*, %struct.workspace** %2, align 8
  %15 = getelementptr inbounds %struct.workspace, %struct.workspace* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %17 = call i32 @lzo1x_worst_compress(i32 %16)
  %18 = call i8* @vmalloc(i32 %17)
  %19 = load %struct.workspace*, %struct.workspace** %2, align 8
  %20 = getelementptr inbounds %struct.workspace, %struct.workspace* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %22 = call i32 @lzo1x_worst_compress(i32 %21)
  %23 = call i8* @vmalloc(i32 %22)
  %24 = load %struct.workspace*, %struct.workspace** %2, align 8
  %25 = getelementptr inbounds %struct.workspace, %struct.workspace* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.workspace*, %struct.workspace** %2, align 8
  %27 = getelementptr inbounds %struct.workspace, %struct.workspace* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %11
  %31 = load %struct.workspace*, %struct.workspace** %2, align 8
  %32 = getelementptr inbounds %struct.workspace, %struct.workspace* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.workspace*, %struct.workspace** %2, align 8
  %37 = getelementptr inbounds %struct.workspace, %struct.workspace* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %30, %11
  br label %47

41:                                               ; preds = %35
  %42 = load %struct.workspace*, %struct.workspace** %2, align 8
  %43 = getelementptr inbounds %struct.workspace, %struct.workspace* %42, i32 0, i32 0
  %44 = call i32 @INIT_LIST_HEAD(%struct.list_head* %43)
  %45 = load %struct.workspace*, %struct.workspace** %2, align 8
  %46 = getelementptr inbounds %struct.workspace, %struct.workspace* %45, i32 0, i32 0
  store %struct.list_head* %46, %struct.list_head** %1, align 8
  br label %54

47:                                               ; preds = %40
  %48 = load %struct.workspace*, %struct.workspace** %2, align 8
  %49 = getelementptr inbounds %struct.workspace, %struct.workspace* %48, i32 0, i32 0
  %50 = call i32 @lzo_free_workspace(%struct.list_head* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.list_head* @ERR_PTR(i32 %52)
  store %struct.list_head* %53, %struct.list_head** %1, align 8
  br label %54

54:                                               ; preds = %47, %41, %7
  %55 = load %struct.list_head*, %struct.list_head** %1, align 8
  ret %struct.list_head* %55
}

declare dso_local %struct.workspace* @kzalloc(i32, i32) #1

declare dso_local %struct.list_head* @ERR_PTR(i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @lzo1x_worst_compress(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @lzo_free_workspace(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
