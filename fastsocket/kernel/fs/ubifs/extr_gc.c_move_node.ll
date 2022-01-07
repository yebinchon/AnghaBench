; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_gc.c_move_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_gc.c_move_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_scan_leb = type { i32 }
%struct.ubifs_scan_node = type { i32, i32, i32, i32, i32 }
%struct.ubifs_wbuf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_scan_leb*, %struct.ubifs_scan_node*, %struct.ubifs_wbuf*)* @move_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_node(%struct.ubifs_info* %0, %struct.ubifs_scan_leb* %1, %struct.ubifs_scan_node* %2, %struct.ubifs_wbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.ubifs_scan_leb*, align 8
  %8 = alloca %struct.ubifs_scan_node*, align 8
  %9 = alloca %struct.ubifs_wbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.ubifs_scan_leb* %1, %struct.ubifs_scan_leb** %7, align 8
  store %struct.ubifs_scan_node* %2, %struct.ubifs_scan_node** %8, align 8
  store %struct.ubifs_wbuf* %3, %struct.ubifs_wbuf** %9, align 8
  %13 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %9, align 8
  %14 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %9, align 8
  %17 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %9, align 8
  %20 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %12, align 4
  %23 = call i32 (...) @cond_resched()
  %24 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %9, align 8
  %25 = load %struct.ubifs_scan_node*, %struct.ubifs_scan_node** %8, align 8
  %26 = getelementptr inbounds %struct.ubifs_scan_node, %struct.ubifs_scan_node* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ubifs_scan_node*, %struct.ubifs_scan_node** %8, align 8
  %29 = getelementptr inbounds %struct.ubifs_scan_node, %struct.ubifs_scan_node* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ubifs_wbuf_write_nolock(%struct.ubifs_wbuf* %24, i32 %27, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %58

36:                                               ; preds = %4
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %38 = load %struct.ubifs_scan_node*, %struct.ubifs_scan_node** %8, align 8
  %39 = getelementptr inbounds %struct.ubifs_scan_node, %struct.ubifs_scan_node* %38, i32 0, i32 3
  %40 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %7, align 8
  %41 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ubifs_scan_node*, %struct.ubifs_scan_node** %8, align 8
  %44 = getelementptr inbounds %struct.ubifs_scan_node, %struct.ubifs_scan_node* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.ubifs_scan_node*, %struct.ubifs_scan_node** %8, align 8
  %49 = getelementptr inbounds %struct.ubifs_scan_node, %struct.ubifs_scan_node* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ubifs_tnc_replace(%struct.ubifs_info* %37, i32* %39, i32 %42, i32 %45, i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.ubifs_scan_node*, %struct.ubifs_scan_node** %8, align 8
  %53 = getelementptr inbounds %struct.ubifs_scan_node, %struct.ubifs_scan_node* %52, i32 0, i32 0
  %54 = call i32 @list_del(i32* %53)
  %55 = load %struct.ubifs_scan_node*, %struct.ubifs_scan_node** %8, align 8
  %56 = call i32 @kfree(%struct.ubifs_scan_node* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %36, %34
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @ubifs_wbuf_write_nolock(%struct.ubifs_wbuf*, i32, i32) #1

declare dso_local i32 @ubifs_tnc_replace(%struct.ubifs_info*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.ubifs_scan_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
