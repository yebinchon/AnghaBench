; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_gred.c_gred_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_gred.c_gred_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }

@TCA_GRED_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gred_policy = common dso_local global i32 0, align 4
@TCA_GRED_PARMS = common dso_local global i64 0, align 8
@TCA_GRED_STAB = common dso_local global i64 0, align 8
@TCA_GRED_DPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @gred_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %10 = load i32, i32* @TCA_GRED_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %16 = icmp eq %struct.nlattr* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load i32, i32* @TCA_GRED_MAX, align 4
  %22 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %23 = load i32, i32* @gred_policy, align 4
  %24 = call i32 @nla_parse_nested(%struct.nlattr** %14, i32 %21, %struct.nlattr* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %48

29:                                               ; preds = %20
  %30 = load i64, i64* @TCA_GRED_PARMS, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @TCA_GRED_STAB, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %48

42:                                               ; preds = %34
  %43 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %44 = load i64, i64* @TCA_GRED_DPS, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i32 @gred_change_table_def(%struct.Qdisc* %43, %struct.nlattr* %46)
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %39, %27, %17
  %49 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @gred_change_table_def(%struct.Qdisc*, %struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
