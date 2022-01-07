; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_register_tcf_proto_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_register_tcf_proto_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto_ops = type { %struct.tcf_proto_ops*, i32 }

@EEXIST = common dso_local global i32 0, align 4
@cls_mod_lock = common dso_local global i32 0, align 4
@tcf_proto_base = common dso_local global %struct.tcf_proto_ops* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_tcf_proto_ops(%struct.tcf_proto_ops* %0) #0 {
  %2 = alloca %struct.tcf_proto_ops*, align 8
  %3 = alloca %struct.tcf_proto_ops*, align 8
  %4 = alloca %struct.tcf_proto_ops**, align 8
  %5 = alloca i32, align 4
  store %struct.tcf_proto_ops* %0, %struct.tcf_proto_ops** %2, align 8
  %6 = load i32, i32* @EEXIST, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 @write_lock(i32* @cls_mod_lock)
  store %struct.tcf_proto_ops** @tcf_proto_base, %struct.tcf_proto_ops*** %4, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.tcf_proto_ops**, %struct.tcf_proto_ops*** %4, align 8
  %11 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %10, align 8
  store %struct.tcf_proto_ops* %11, %struct.tcf_proto_ops** %3, align 8
  %12 = icmp ne %struct.tcf_proto_ops* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %2, align 8
  %15 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %3, align 8
  %18 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strcmp(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %32

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %3, align 8
  %26 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %25, i32 0, i32 0
  store %struct.tcf_proto_ops** %26, %struct.tcf_proto_ops*** %4, align 8
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %2, align 8
  %29 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %28, i32 0, i32 0
  store %struct.tcf_proto_ops* null, %struct.tcf_proto_ops** %29, align 8
  %30 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %2, align 8
  %31 = load %struct.tcf_proto_ops**, %struct.tcf_proto_ops*** %4, align 8
  store %struct.tcf_proto_ops* %30, %struct.tcf_proto_ops** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = call i32 @write_unlock(i32* @cls_mod_lock)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
