; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_filter_user_rules.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_filter_user_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_skb_parms = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.audit_krule = type { i32, i32, %struct.audit_field* }
%struct.audit_field = type { i32, i32, i32, i32 }

@AUDIT_DISABLED = common dso_local global i32 0, align 4
@AUDIT_RECORD_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_skb_parms*, %struct.audit_krule*, i32*)* @audit_filter_user_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_filter_user_rules(%struct.netlink_skb_parms* %0, %struct.audit_krule* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netlink_skb_parms*, align 8
  %6 = alloca %struct.audit_krule*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.audit_field*, align 8
  %10 = alloca i32, align 4
  store %struct.netlink_skb_parms* %0, %struct.netlink_skb_parms** %5, align 8
  store %struct.audit_krule* %1, %struct.audit_krule** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %99, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %14 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %102

17:                                               ; preds = %11
  %18 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %19 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %18, i32 0, i32 2
  %20 = load %struct.audit_field*, %struct.audit_field** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %20, i64 %22
  store %struct.audit_field* %23, %struct.audit_field** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %25 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %94 [
    i32 134, label %27
    i32 128, label %39
    i32 137, label %51
    i32 136, label %63
    i32 129, label %74
    i32 132, label %74
    i32 130, label %74
    i32 131, label %74
    i32 133, label %74
  ]

27:                                               ; preds = %17
  %28 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %5, align 8
  %29 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %33 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %36 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @audit_comparator(i32 %31, i32 %34, i32 %37)
  store i32 %38, i32* %10, align 4
  br label %94

39:                                               ; preds = %17
  %40 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %5, align 8
  %41 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %45 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %48 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @audit_comparator(i32 %43, i32 %46, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %94

51:                                               ; preds = %17
  %52 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %5, align 8
  %53 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %57 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %60 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @audit_comparator(i32 %55, i32 %58, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %94

63:                                               ; preds = %17
  %64 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %5, align 8
  %65 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %68 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %71 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @audit_comparator(i32 %66, i32 %69, i32 %72)
  store i32 %73, i32* %10, align 4
  br label %94

74:                                               ; preds = %17, %17, %17, %17, %17
  %75 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %76 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %5, align 8
  %81 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %84 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %87 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %90 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @security_audit_rule_match(i32 %82, i32 %85, i32 %88, i32 %91, i32* null)
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %79, %74
  br label %94

94:                                               ; preds = %17, %93, %63, %51, %39, %27
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  store i32 0, i32* %4, align 4
  br label %113

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %11

102:                                              ; preds = %11
  %103 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %104 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %112 [
    i32 135, label %106
    i32 138, label %109
  ]

106:                                              ; preds = %102
  %107 = load i32, i32* @AUDIT_DISABLED, align 4
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  br label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @AUDIT_RECORD_CONTEXT, align 4
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %102, %109, %106
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %97
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @audit_comparator(i32, i32, i32) #1

declare dso_local i32 @security_audit_rule_match(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
