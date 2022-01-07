; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_del_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_del_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_node = type { i32 }
%struct.dst_ctl = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_node*, %struct.dst_ctl*, i8*, i32)* @dst_del_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_del_node(%struct.dst_node* %0, %struct.dst_ctl* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_node*, align 8
  %7 = alloca %struct.dst_ctl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dst_node* %0, %struct.dst_node** %6, align 8
  store %struct.dst_ctl* %1, %struct.dst_ctl** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %11 = icmp ne %struct.dst_node* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %4
  %16 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %17 = call i32 @dst_node_remove_unload(%struct.dst_node* %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @dst_node_remove_unload(%struct.dst_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
