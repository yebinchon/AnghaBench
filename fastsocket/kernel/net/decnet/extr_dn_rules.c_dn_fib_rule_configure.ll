; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_rules.c_dn_fib_rule_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_rules.c_dn_fib_rule_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.fib_rule_hdr = type { i64, i64, i64 }
%struct.nlattr = type { i32 }
%struct.dn_fib_rule = type { i64, i8*, i64, i8*, i8*, i8* }
%struct.dn_fib_table = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@RT_TABLE_UNSPEC = common dso_local global i64 0, align 8
@FR_ACT_TO_TBL = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i64 0, align 8
@FRA_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.sk_buff*, %struct.fib_rule_hdr*, %struct.nlattr**)* @dn_fib_rule_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_rule_configure(%struct.fib_rule* %0, %struct.sk_buff* %1, %struct.fib_rule_hdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.fib_rule_hdr*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dn_fib_rule*, align 8
  %11 = alloca %struct.dn_fib_table*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.fib_rule_hdr* %2, %struct.fib_rule_hdr** %7, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %8, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %15 = bitcast %struct.fib_rule* %14 to %struct.dn_fib_rule*
  store %struct.dn_fib_rule* %15, %struct.dn_fib_rule** %10, align 8
  %16 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %17 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %96

21:                                               ; preds = %4
  %22 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %23 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RT_TABLE_UNSPEC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %29 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FR_ACT_TO_TBL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = call %struct.dn_fib_table* (...) @dn_fib_empty_table()
  store %struct.dn_fib_table* %34, %struct.dn_fib_table** %11, align 8
  %35 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %36 = icmp eq %struct.dn_fib_table* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %96

40:                                               ; preds = %33
  %41 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %42 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %45 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %27
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %54 = load i64, i64* @FRA_SRC, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i8* @nla_get_le16(%struct.nlattr* %56)
  %58 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %10, align 8
  %59 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %62 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %67 = load i64, i64* @FRA_DST, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call i8* @nla_get_le16(%struct.nlattr* %69)
  %71 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %10, align 8
  %72 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %65, %60
  %74 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %75 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %10, align 8
  %78 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %10, align 8
  %80 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @dnet_make_mask(i64 %81)
  %83 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %10, align 8
  %84 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %86 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %10, align 8
  %89 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %10, align 8
  %91 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @dnet_make_mask(i64 %92)
  %94 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %10, align 8
  %95 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %73, %37, %20
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local %struct.dn_fib_table* @dn_fib_empty_table(...) #1

declare dso_local i8* @nla_get_le16(%struct.nlattr*) #1

declare dso_local i8* @dnet_make_mask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
