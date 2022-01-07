; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_add_remote.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_add_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dst_ctl = type { i32 }
%struct.dst_network_ctl = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dst_start_remote = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_node*, %struct.dst_ctl*, i8*, i32)* @dst_add_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_add_remote(%struct.dst_node* %0, %struct.dst_ctl* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_node*, align 8
  %7 = alloca %struct.dst_ctl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dst_network_ctl*, align 8
  store %struct.dst_node* %0, %struct.dst_node** %6, align 8
  store %struct.dst_ctl* %1, %struct.dst_ctl** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.dst_network_ctl*
  store %struct.dst_network_ctl* %13, %struct.dst_network_ctl** %11, align 8
  %14 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %15 = icmp ne %struct.dst_node* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EEXIST, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %55

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %55

26:                                               ; preds = %19
  %27 = load %struct.dst_ctl*, %struct.dst_ctl** %7, align 8
  %28 = load i32, i32* @dst_start_remote, align 4
  %29 = call %struct.dst_node* @dst_alloc_node(%struct.dst_ctl* %27, i32 %28, i32 1)
  store %struct.dst_node* %29, %struct.dst_node** %6, align 8
  %30 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %31 = icmp ne %struct.dst_node* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %55

35:                                               ; preds = %26
  %36 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %37 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.dst_network_ctl*, %struct.dst_network_ctl** %11, align 8
  %41 = call i32 @memcpy(i32* %39, %struct.dst_network_ctl* %40, i32 4)
  %42 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %43 = load %struct.dst_network_ctl*, %struct.dst_network_ctl** %11, align 8
  %44 = call i32 @dst_node_init_connected(%struct.dst_node* %42, %struct.dst_network_ctl* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %51

48:                                               ; preds = %35
  %49 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %50 = call i32 @dst_node_add(%struct.dst_node* %49)
  store i32 0, i32* %5, align 4
  br label %55

51:                                               ; preds = %47
  %52 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %53 = call i32 @dst_node_put(%struct.dst_node* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %48, %32, %23, %16
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.dst_node* @dst_alloc_node(%struct.dst_ctl*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dst_network_ctl*, i32) #1

declare dso_local i32 @dst_node_init_connected(%struct.dst_node*, %struct.dst_network_ctl*) #1

declare dso_local i32 @dst_node_add(%struct.dst_node*) #1

declare dso_local i32 @dst_node_put(%struct.dst_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
