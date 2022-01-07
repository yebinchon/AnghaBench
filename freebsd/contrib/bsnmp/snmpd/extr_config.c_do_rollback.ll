; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_do_rollback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_do_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_node = type { i64, i32, %struct.TYPE_4__, i32 (%struct.TYPE_5__*, i32*, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.assign = type { i64, i32, i32 }

@assigns = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@tree = common dso_local global %struct.snmp_node* null, align 8
@tree_size = common dso_local global i64 0, align 8
@snmp_ctx = common dso_local global %struct.TYPE_5__* null, align 8
@SNMP_OP_ROLLBACK = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to find node for rollback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_rollback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_rollback() #0 {
  %1 = alloca %struct.assign*, align 8
  %2 = alloca %struct.snmp_node*, align 8
  br label %3

3:                                                ; preds = %59, %0
  %4 = load i32, i32* @assigns, align 4
  %5 = call %struct.assign* @TAILQ_LAST(i32* @assigns, i32 %4)
  store %struct.assign* %5, %struct.assign** %1, align 8
  %6 = icmp ne %struct.assign* %5, null
  br i1 %6, label %7, label %65

7:                                                ; preds = %3
  %8 = load %struct.assign*, %struct.assign** %1, align 8
  %9 = load i32, i32* @link, align 4
  %10 = call i32 @TAILQ_REMOVE(i32* @assigns, %struct.assign* %8, i32 %9)
  %11 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  store %struct.snmp_node* %11, %struct.snmp_node** %2, align 8
  br label %12

12:                                               ; preds = %47, %7
  %13 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %14 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  %15 = load i64, i64* @tree_size, align 8
  %16 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %14, i64 %15
  %17 = icmp ult %struct.snmp_node* %13, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %12
  %19 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %20 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.assign*, %struct.assign** %1, align 8
  %23 = getelementptr inbounds %struct.assign, %struct.assign* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %18
  %27 = load %struct.assign*, %struct.assign** %1, align 8
  %28 = getelementptr inbounds %struct.assign, %struct.assign* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp_ctx, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %32 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %31, i32 0, i32 3
  %33 = load i32 (%struct.TYPE_5__*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32*, i32, i32, i32)** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp_ctx, align 8
  %35 = load %struct.assign*, %struct.assign** %1, align 8
  %36 = getelementptr inbounds %struct.assign, %struct.assign* %35, i32 0, i32 1
  %37 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %38 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %42 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SNMP_OP_ROLLBACK, align 4
  %45 = call i32 %33(%struct.TYPE_5__* %34, i32* %36, i32 %40, i32 %43, i32 %44)
  br label %50

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %49 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %48, i32 1
  store %struct.snmp_node* %49, %struct.snmp_node** %2, align 8
  br label %12

50:                                               ; preds = %26, %12
  %51 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %52 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  %53 = load i64, i64* @tree_size, align 8
  %54 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %52, i64 %53
  %55 = icmp eq %struct.snmp_node* %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @LOG_ERR, align 4
  %58 = call i32 @syslog(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.assign*, %struct.assign** %1, align 8
  %61 = getelementptr inbounds %struct.assign, %struct.assign* %60, i32 0, i32 1
  %62 = call i32 @snmp_value_free(i32* %61)
  %63 = load %struct.assign*, %struct.assign** %1, align 8
  %64 = call i32 @free(%struct.assign* %63)
  br label %3

65:                                               ; preds = %3
  ret void
}

declare dso_local %struct.assign* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.assign*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @snmp_value_free(i32*) #1

declare dso_local i32 @free(%struct.assign*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
