; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_dp_register_genl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_dp_register_genl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family_and_ops = type { i64, i32, i32, i32 }

@dp_genl_families = common dso_local global %struct.genl_family_and_ops* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dp_register_genl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_register_genl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_family_and_ops*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %49, %0
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.genl_family_and_ops*, %struct.genl_family_and_ops** @dp_genl_families, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.genl_family_and_ops* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %6
  %12 = load %struct.genl_family_and_ops*, %struct.genl_family_and_ops** @dp_genl_families, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.genl_family_and_ops, %struct.genl_family_and_ops* %12, i64 %14
  store %struct.genl_family_and_ops* %15, %struct.genl_family_and_ops** %5, align 8
  %16 = load %struct.genl_family_and_ops*, %struct.genl_family_and_ops** %5, align 8
  %17 = getelementptr inbounds %struct.genl_family_and_ops, %struct.genl_family_and_ops* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.genl_family_and_ops*, %struct.genl_family_and_ops** %5, align 8
  %20 = getelementptr inbounds %struct.genl_family_and_ops, %struct.genl_family_and_ops* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.genl_family_and_ops*, %struct.genl_family_and_ops** %5, align 8
  %23 = getelementptr inbounds %struct.genl_family_and_ops, %struct.genl_family_and_ops* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @genl_register_family_with_ops(i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %11
  br label %53

29:                                               ; preds = %11
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  %32 = load %struct.genl_family_and_ops*, %struct.genl_family_and_ops** %5, align 8
  %33 = getelementptr inbounds %struct.genl_family_and_ops, %struct.genl_family_and_ops* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.genl_family_and_ops*, %struct.genl_family_and_ops** %5, align 8
  %38 = getelementptr inbounds %struct.genl_family_and_ops, %struct.genl_family_and_ops* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.genl_family_and_ops*, %struct.genl_family_and_ops** %5, align 8
  %41 = getelementptr inbounds %struct.genl_family_and_ops, %struct.genl_family_and_ops* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @genl_register_mc_group(i32 %39, i64 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %53

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %6

52:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %57

53:                                               ; preds = %46, %28
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @dp_unregister_genl(i32 %54)
  %56 = load i32, i32* %3, align 4
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @ARRAY_SIZE(%struct.genl_family_and_ops*) #1

declare dso_local i32 @genl_register_family_with_ops(i32, i32, i32) #1

declare dso_local i32 @genl_register_mc_group(i32, i64) #1

declare dso_local i32 @dp_unregister_genl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
