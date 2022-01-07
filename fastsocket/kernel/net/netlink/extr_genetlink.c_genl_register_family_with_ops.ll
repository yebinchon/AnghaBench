; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_register_family_with_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_register_family_with_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32 }
%struct.genl_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genl_register_family_with_ops(%struct.genl_family* %0, %struct.genl_ops* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_family*, align 8
  %6 = alloca %struct.genl_ops*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.genl_family* %0, %struct.genl_family** %5, align 8
  store %struct.genl_ops* %1, %struct.genl_ops** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.genl_family*, %struct.genl_family** %5, align 8
  %11 = call i32 @genl_register_family(%struct.genl_family* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.genl_family*, %struct.genl_family** %5, align 8
  %24 = load %struct.genl_ops*, %struct.genl_ops** %6, align 8
  %25 = call i32 @genl_register_ops(%struct.genl_family* %23, %struct.genl_ops* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %36

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load %struct.genl_ops*, %struct.genl_ops** %6, align 8
  %34 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %33, i32 1
  store %struct.genl_ops* %34, %struct.genl_ops** %6, align 8
  br label %17

35:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.genl_family*, %struct.genl_family** %5, align 8
  %38 = call i32 @genl_unregister_family(%struct.genl_family* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %35, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @genl_register_family(%struct.genl_family*) #1

declare dso_local i32 @genl_register_ops(%struct.genl_family*, %struct.genl_ops*) #1

declare dso_local i32 @genl_unregister_family(%struct.genl_family*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
