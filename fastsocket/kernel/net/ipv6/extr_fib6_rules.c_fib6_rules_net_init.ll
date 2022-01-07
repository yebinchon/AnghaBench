; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rules_net_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rules_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.net* }

@ENOMEM = common dso_local global i32 0, align 4
@fib6_rules_ops_template = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RT6_TABLE_LOCAL = common dso_local global i32 0, align 4
@FIB_RULE_PERMANENT = common dso_local global i32 0, align 4
@RT6_TABLE_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @fib6_rules_net_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rules_net_init(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.TYPE_8__* @kmemdup(i32* @fib6_rules_ops_template, i32 16, i32 %6)
  %8 = load %struct.net*, %struct.net** %2, align 8
  %9 = getelementptr inbounds %struct.net, %struct.net* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %10, align 8
  %11 = load %struct.net*, %struct.net** %2, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.net*, %struct.net** %2, align 8
  %19 = load %struct.net*, %struct.net** %2, align 8
  %20 = getelementptr inbounds %struct.net, %struct.net* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store %struct.net* %18, %struct.net** %23, align 8
  %24 = load %struct.net*, %struct.net** %2, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.net*, %struct.net** %2, align 8
  %31 = getelementptr inbounds %struct.net, %struct.net* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i32, i32* @RT6_TABLE_LOCAL, align 4
  %35 = load i32, i32* @FIB_RULE_PERMANENT, align 4
  %36 = call i32 @fib_default_rule_add(%struct.TYPE_8__* %33, i32 0, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %17
  br label %68

40:                                               ; preds = %17
  %41 = load %struct.net*, %struct.net** %2, align 8
  %42 = getelementptr inbounds %struct.net, %struct.net* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* @RT6_TABLE_MAIN, align 4
  %46 = call i32 @fib_default_rule_add(%struct.TYPE_8__* %44, i32 32766, i32 %45, i32 0)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %62

50:                                               ; preds = %40
  %51 = load %struct.net*, %struct.net** %2, align 8
  %52 = getelementptr inbounds %struct.net, %struct.net* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 @fib_rules_register(%struct.TYPE_8__* %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %62

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %68, %59, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61

62:                                               ; preds = %58, %49
  %63 = load %struct.net*, %struct.net** %2, align 8
  %64 = getelementptr inbounds %struct.net, %struct.net* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @fib_rules_cleanup_ops(%struct.TYPE_8__* %66)
  br label %68

68:                                               ; preds = %62, %39
  %69 = load %struct.net*, %struct.net** %2, align 8
  %70 = getelementptr inbounds %struct.net, %struct.net* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = call i32 @kfree(%struct.TYPE_8__* %72)
  br label %60
}

declare dso_local %struct.TYPE_8__* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fib_default_rule_add(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @fib_rules_register(%struct.TYPE_8__*) #1

declare dso_local i32 @fib_rules_cleanup_ops(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
