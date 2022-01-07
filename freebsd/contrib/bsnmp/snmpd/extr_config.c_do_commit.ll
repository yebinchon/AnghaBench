; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_do_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_do_commit.c"
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
@SNMP_OP_COMMIT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to find node for commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_commit() #0 {
  %1 = alloca %struct.assign*, align 8
  %2 = alloca %struct.snmp_node*, align 8
  br label %3

3:                                                ; preds = %58, %0
  %4 = call %struct.assign* @TAILQ_FIRST(i32* @assigns)
  store %struct.assign* %4, %struct.assign** %1, align 8
  %5 = icmp ne %struct.assign* %4, null
  br i1 %5, label %6, label %64

6:                                                ; preds = %3
  %7 = load %struct.assign*, %struct.assign** %1, align 8
  %8 = load i32, i32* @link, align 4
  %9 = call i32 @TAILQ_REMOVE(i32* @assigns, %struct.assign* %7, i32 %8)
  %10 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  store %struct.snmp_node* %10, %struct.snmp_node** %2, align 8
  br label %11

11:                                               ; preds = %46, %6
  %12 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %13 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  %14 = load i64, i64* @tree_size, align 8
  %15 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %13, i64 %14
  %16 = icmp ult %struct.snmp_node* %12, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %19 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.assign*, %struct.assign** %1, align 8
  %22 = getelementptr inbounds %struct.assign, %struct.assign* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = load %struct.assign*, %struct.assign** %1, align 8
  %27 = getelementptr inbounds %struct.assign, %struct.assign* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp_ctx, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %31 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %30, i32 0, i32 3
  %32 = load i32 (%struct.TYPE_5__*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32*, i32, i32, i32)** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp_ctx, align 8
  %34 = load %struct.assign*, %struct.assign** %1, align 8
  %35 = getelementptr inbounds %struct.assign, %struct.assign* %34, i32 0, i32 1
  %36 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %37 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %41 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SNMP_OP_COMMIT, align 4
  %44 = call i32 %32(%struct.TYPE_5__* %33, i32* %35, i32 %39, i32 %42, i32 %43)
  br label %49

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %48 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %47, i32 1
  store %struct.snmp_node* %48, %struct.snmp_node** %2, align 8
  br label %11

49:                                               ; preds = %25, %11
  %50 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  %51 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  %52 = load i64, i64* @tree_size, align 8
  %53 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %51, i64 %52
  %54 = icmp eq %struct.snmp_node* %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @LOG_ERR, align 4
  %57 = call i32 @syslog(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.assign*, %struct.assign** %1, align 8
  %60 = getelementptr inbounds %struct.assign, %struct.assign* %59, i32 0, i32 1
  %61 = call i32 @snmp_value_free(i32* %60)
  %62 = load %struct.assign*, %struct.assign** %1, align 8
  %63 = call i32 @free(%struct.assign* %62)
  br label %3

64:                                               ; preds = %3
  ret void
}

declare dso_local %struct.assign* @TAILQ_FIRST(i32*) #1

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
