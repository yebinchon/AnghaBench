; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_config.c_drop_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_config.c_drop_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.config_item = type { i32 }
%struct.dlm_space = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.config_item }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @drop_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_space(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.dlm_space*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %8 = load %struct.config_item*, %struct.config_item** %4, align 8
  %9 = call %struct.dlm_space* @config_item_to_space(%struct.config_item* %8)
  store %struct.dlm_space* %9, %struct.dlm_space** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %39, %2
  %11 = load %struct.dlm_space*, %struct.dlm_space** %5, align 8
  %12 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %10
  %21 = load %struct.dlm_space*, %struct.dlm_space** %5, align 8
  %22 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.config_item* %29, %struct.config_item** %6, align 8
  %30 = load %struct.dlm_space*, %struct.dlm_space** %5, align 8
  %31 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %36, align 8
  %37 = load %struct.config_item*, %struct.config_item** %6, align 8
  %38 = call i32 @config_item_put(%struct.config_item* %37)
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %10

42:                                               ; preds = %10
  %43 = load %struct.config_item*, %struct.config_item** %4, align 8
  %44 = call i32 @config_item_put(%struct.config_item* %43)
  ret void
}

declare dso_local %struct.dlm_space* @config_item_to_space(%struct.config_item*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
