; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_avl.c_uu_avl_node_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_avl.c_uu_avl_node_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uu_avl_node_compare_info = type { i32 (i8*, i32, i32)*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @uu_avl_node_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uu_avl_node_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uu_avl_node_compare_info*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uu_avl_node_compare_info*
  store %struct.uu_avl_node_compare_info* %9, %struct.uu_avl_node_compare_info** %6, align 8
  %10 = load %struct.uu_avl_node_compare_info*, %struct.uu_avl_node_compare_info** %6, align 8
  %11 = getelementptr inbounds %struct.uu_avl_node_compare_info, %struct.uu_avl_node_compare_info* %10, i32 0, i32 0
  %12 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.uu_avl_node_compare_info*, %struct.uu_avl_node_compare_info** %6, align 8
  %15 = getelementptr inbounds %struct.uu_avl_node_compare_info, %struct.uu_avl_node_compare_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.uu_avl_node_compare_info*, %struct.uu_avl_node_compare_info** %6, align 8
  %18 = getelementptr inbounds %struct.uu_avl_node_compare_info, %struct.uu_avl_node_compare_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %12(i8* %13, i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.uu_avl_node_compare_info*, %struct.uu_avl_node_compare_info** %6, align 8
  %25 = getelementptr inbounds %struct.uu_avl_node_compare_info, %struct.uu_avl_node_compare_info* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.uu_avl_node_compare_info*, %struct.uu_avl_node_compare_info** %6, align 8
  %32 = getelementptr inbounds %struct.uu_avl_node_compare_info, %struct.uu_avl_node_compare_info* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  br label %33

33:                                               ; preds = %28, %23
  store i32 -1, i32* %3, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %39

38:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
