; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_text.c_em_text_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_text.c_em_text_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i32 }
%struct.text_match = type { %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_em_text = type { i32, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*)* @em_text_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_text_dump(%struct.sk_buff* %0, %struct.tcf_ematch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcf_ematch*, align 8
  %6 = alloca %struct.text_match*, align 8
  %7 = alloca %struct.tcf_em_text, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %5, align 8
  %8 = load %struct.tcf_ematch*, %struct.tcf_ematch** %5, align 8
  %9 = call %struct.text_match* @EM_TEXT_PRIV(%struct.tcf_ematch* %8)
  store %struct.text_match* %9, %struct.text_match** %6, align 8
  %10 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %7, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.text_match*, %struct.text_match** %6, align 8
  %13 = getelementptr inbounds %struct.text_match, %struct.text_match* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strncpy(i32 %11, i32 %18, i32 3)
  %20 = load %struct.text_match*, %struct.text_match** %6, align 8
  %21 = getelementptr inbounds %struct.text_match, %struct.text_match* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %7, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = load %struct.text_match*, %struct.text_match** %6, align 8
  %25 = getelementptr inbounds %struct.text_match, %struct.text_match* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %7, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = load %struct.text_match*, %struct.text_match** %6, align 8
  %29 = getelementptr inbounds %struct.text_match, %struct.text_match* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %7, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.text_match*, %struct.text_match** %6, align 8
  %33 = getelementptr inbounds %struct.text_match, %struct.text_match* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %7, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.text_match*, %struct.text_match** %6, align 8
  %37 = getelementptr inbounds %struct.text_match, %struct.text_match* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @textsearch_get_pattern_len(%struct.TYPE_5__* %38)
  %40 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %7, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i64 @nla_put_nohdr(%struct.sk_buff* %42, i32 40, %struct.tcf_em_text* %7)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  br label %58

46:                                               ; preds = %2
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.text_match*, %struct.text_match** %6, align 8
  %51 = getelementptr inbounds %struct.text_match, %struct.text_match* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = call i32 @textsearch_get_pattern(%struct.TYPE_5__* %52)
  %54 = call i64 @nla_append(%struct.sk_buff* %47, i32 %49, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %58

57:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %59

58:                                               ; preds = %56, %45
  store i32 -1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.text_match* @EM_TEXT_PRIV(%struct.tcf_ematch*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @textsearch_get_pattern_len(%struct.TYPE_5__*) #1

declare dso_local i64 @nla_put_nohdr(%struct.sk_buff*, i32, %struct.tcf_em_text*) #1

declare dso_local i64 @nla_append(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @textsearch_get_pattern(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
