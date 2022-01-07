; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_start_remote.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_start_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_node = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"DST: started remote node '%s', minor: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_node*)* @dst_start_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_start_remote(%struct.dst_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_node*, align 8
  %4 = alloca i32, align 4
  store %struct.dst_node* %0, %struct.dst_node** %3, align 8
  %5 = load %struct.dst_node*, %struct.dst_node** %3, align 8
  %6 = call i32 @dst_node_trans_init(%struct.dst_node* %5, i32 4)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.dst_node*, %struct.dst_node** %3, align 8
  %13 = call i32 @dst_node_create_disk(%struct.dst_node* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %11
  %19 = load %struct.dst_node*, %struct.dst_node** %3, align 8
  %20 = call i32 @dst_node_set_size(%struct.dst_node* %19)
  %21 = load %struct.dst_node*, %struct.dst_node** %3, align 8
  %22 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @add_disk(%struct.TYPE_2__* %23)
  %25 = load %struct.dst_node*, %struct.dst_node** %3, align 8
  %26 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dst_node*, %struct.dst_node** %3, align 8
  %29 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %18, %16, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @dst_node_trans_init(%struct.dst_node*, i32) #1

declare dso_local i32 @dst_node_create_disk(%struct.dst_node*) #1

declare dso_local i32 @dst_node_set_size(%struct.dst_node*) #1

declare dso_local i32 @add_disk(%struct.TYPE_2__*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
