; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_rules.c_dn_fib_rule_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_rules.c_dn_fib_rule_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32, i32 }
%struct.flowi = type { i32 }
%struct.fib_lookup_arg = type { i64 }
%struct.dn_fib_table = type { i32 (%struct.dn_fib_table*, %struct.flowi*, %struct.dn_fib_res*)* }
%struct.dn_fib_res = type opaque
%struct.dn_fib_res.0 = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32, %struct.fib_lookup_arg*)* @dn_fib_rule_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_rule_action(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2, %struct.fib_lookup_arg* %3) #0 {
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib_lookup_arg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dn_fib_table*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fib_lookup_arg* %3, %struct.fib_lookup_arg** %8, align 8
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %14 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %24 [
    i32 129, label %16
    i32 128, label %17
    i32 130, label %20
    i32 131, label %23
  ]

16:                                               ; preds = %4
  br label %27

17:                                               ; preds = %4
  %18 = load i32, i32* @ENETUNREACH, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %53

20:                                               ; preds = %4
  %21 = load i32, i32* @EACCES, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %53

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %4, %23
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %53

27:                                               ; preds = %16
  %28 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %29 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.dn_fib_table* @dn_fib_get_table(i32 %30, i32 0)
  store %struct.dn_fib_table* %31, %struct.dn_fib_table** %10, align 8
  %32 = load %struct.dn_fib_table*, %struct.dn_fib_table** %10, align 8
  %33 = icmp eq %struct.dn_fib_table* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %53

35:                                               ; preds = %27
  %36 = load %struct.dn_fib_table*, %struct.dn_fib_table** %10, align 8
  %37 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %36, i32 0, i32 0
  %38 = load i32 (%struct.dn_fib_table*, %struct.flowi*, %struct.dn_fib_res*)*, i32 (%struct.dn_fib_table*, %struct.flowi*, %struct.dn_fib_res*)** %37, align 8
  %39 = load %struct.dn_fib_table*, %struct.dn_fib_table** %10, align 8
  %40 = load %struct.flowi*, %struct.flowi** %6, align 8
  %41 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %8, align 8
  %42 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.dn_fib_res.0*
  %45 = bitcast %struct.dn_fib_res.0* %44 to %struct.dn_fib_res*
  %46 = call i32 %38(%struct.dn_fib_table* %39, %struct.flowi* %40, %struct.dn_fib_res* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %35
  br label %53

53:                                               ; preds = %52, %34, %24, %20, %17
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local %struct.dn_fib_table* @dn_fib_get_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
