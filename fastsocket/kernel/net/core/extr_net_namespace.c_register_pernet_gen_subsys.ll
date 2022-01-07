; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_net_namespace.c_register_pernet_gen_subsys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_net_namespace.c_register_pernet_gen_subsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pernet_operations = type { i32 }

@net_mutex = common dso_local global i32 0, align 4
@net_generic_ids = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@first_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_pernet_gen_subsys(i32* %0, %struct.pernet_operations* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pernet_operations*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.pernet_operations* %1, %struct.pernet_operations** %4, align 8
  %6 = call i32 @mutex_lock(i32* @net_mutex)
  br label %7

7:                                                ; preds = %17, %2
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @ida_get_new_above(i32* @net_generic_ids, i32 1, i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @ida_pre_get(i32* @net_generic_ids, i32 %18)
  br label %7

20:                                               ; preds = %12
  br label %32

21:                                               ; preds = %7
  %22 = load i32, i32* @first_device, align 4
  %23 = load %struct.pernet_operations*, %struct.pernet_operations** %4, align 8
  %24 = call i32 @register_pernet_operations(i32 %22, %struct.pernet_operations* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ida_remove(i32* @net_generic_ids, i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %31, %20
  %33 = call i32 @mutex_unlock(i32* @net_mutex)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ida_get_new_above(i32*, i32, i32*) #1

declare dso_local i32 @ida_pre_get(i32*, i32) #1

declare dso_local i32 @register_pernet_operations(i32, %struct.pernet_operations*) #1

declare dso_local i32 @ida_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
