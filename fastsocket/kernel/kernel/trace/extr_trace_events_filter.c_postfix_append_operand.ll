; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_postfix_append_operand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_postfix_append_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_parse_state = type { i32 }
%struct.postfix_elt = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filter_parse_state*, i8*)* @postfix_append_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @postfix_append_operand(%struct.filter_parse_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.filter_parse_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.postfix_elt*, align 8
  store %struct.filter_parse_state* %0, %struct.filter_parse_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.postfix_elt* @kmalloc(i32 12, i32 %7)
  store %struct.postfix_elt* %8, %struct.postfix_elt** %6, align 8
  %9 = load %struct.postfix_elt*, %struct.postfix_elt** %6, align 8
  %10 = icmp ne %struct.postfix_elt* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* @OP_NONE, align 4
  %16 = load %struct.postfix_elt*, %struct.postfix_elt** %6, align 8
  %17 = getelementptr inbounds %struct.postfix_elt, %struct.postfix_elt* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @kstrdup(i8* %18, i32 %19)
  %21 = load %struct.postfix_elt*, %struct.postfix_elt** %6, align 8
  %22 = getelementptr inbounds %struct.postfix_elt, %struct.postfix_elt* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.postfix_elt*, %struct.postfix_elt** %6, align 8
  %24 = getelementptr inbounds %struct.postfix_elt, %struct.postfix_elt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %14
  %28 = load %struct.postfix_elt*, %struct.postfix_elt** %6, align 8
  %29 = call i32 @kfree(%struct.postfix_elt* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %14
  %33 = load %struct.postfix_elt*, %struct.postfix_elt** %6, align 8
  %34 = getelementptr inbounds %struct.postfix_elt, %struct.postfix_elt* %33, i32 0, i32 0
  %35 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %36 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %27, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.postfix_elt* @kmalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.postfix_elt*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
