; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_parse_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_parse_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nla_policy = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, i32, %struct.nlattr*, %struct.nla_policy*, i32)* @parse_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_attr(%struct.nlattr** %0, i32 %1, %struct.nlattr* %2, %struct.nla_policy* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nla_policy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nlattr* %2, %struct.nlattr** %9, align 8
  store %struct.nla_policy* %3, %struct.nla_policy** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @NLA_ALIGN(i32 %15)
  %17 = sub nsw i32 %14, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %46

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @nla_attr_size(i32 0)
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %31 = call i32 @nla_data(%struct.nlattr* %30)
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @NLA_ALIGN(i32 %32)
  %34 = add nsw i32 %31, %33
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.nla_policy*, %struct.nla_policy** %10, align 8
  %37 = call i32 @nla_parse(%struct.nlattr** %28, i32 %29, i32 %34, i32 %35, %struct.nla_policy* %36)
  store i32 %37, i32* %6, align 4
  br label %46

38:                                               ; preds = %23
  %39 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memset(%struct.nlattr** %39, i32 0, i32 %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %38, %27, %20
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @NLA_ALIGN(i32) #1

declare dso_local i32 @nla_attr_size(i32) #1

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, i32, i32, %struct.nla_policy*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memset(%struct.nlattr**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
