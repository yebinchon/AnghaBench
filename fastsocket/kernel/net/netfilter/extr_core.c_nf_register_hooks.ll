; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_core.c_nf_register_hooks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_core.c_nf_register_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_hook_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_register_hooks(%struct.nf_hook_ops* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_hook_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nf_hook_ops* %0, %struct.nf_hook_ops** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %13, i64 %15
  %17 = call i32 @nf_register_hook(%struct.nf_hook_ops* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %27

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @nf_unregister_hooks(%struct.nf_hook_ops* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @nf_register_hook(%struct.nf_hook_ops*) #1

declare dso_local i32 @nf_unregister_hooks(%struct.nf_hook_ops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
