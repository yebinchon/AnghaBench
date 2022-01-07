; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_target_flush_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_target_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_address = type { i64, i32 }
%struct.target_param = type { i64, i32 }
%struct.target_notify = type { i64, i32 }

@target_addresslist = common dso_local global i32 0, align 4
@ta = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i64 0, align 8
@target_paramlist = common dso_local global i32 0, align 4
@tp = common dso_local global i32 0, align 4
@target_notifylist = common dso_local global i32 0, align 4
@tn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_flush_all() #0 {
  %1 = alloca %struct.target_address*, align 8
  %2 = alloca %struct.target_param*, align 8
  %3 = alloca %struct.target_notify*, align 8
  br label %4

4:                                                ; preds = %21, %0
  %5 = call %struct.target_param* @SLIST_FIRST(i32* @target_addresslist)
  %6 = bitcast %struct.target_param* %5 to %struct.target_address*
  store %struct.target_address* %6, %struct.target_address** %1, align 8
  %7 = icmp ne %struct.target_address* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load i32, i32* @ta, align 4
  %10 = call i32 @SLIST_REMOVE_HEAD(i32* @target_addresslist, i32 %9)
  %11 = load %struct.target_address*, %struct.target_address** %1, align 8
  %12 = getelementptr inbounds %struct.target_address, %struct.target_address* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RowStatus_active, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load %struct.target_address*, %struct.target_address** %1, align 8
  %18 = getelementptr inbounds %struct.target_address, %struct.target_address* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @close(i32 %19)
  br label %21

21:                                               ; preds = %16, %8
  %22 = load %struct.target_address*, %struct.target_address** %1, align 8
  %23 = bitcast %struct.target_address* %22 to %struct.target_param*
  %24 = call i32 @free(%struct.target_param* %23)
  br label %4

25:                                               ; preds = %4
  %26 = call i32 @SLIST_INIT(i32* @target_addresslist)
  br label %27

27:                                               ; preds = %30, %25
  %28 = call %struct.target_param* @SLIST_FIRST(i32* @target_paramlist)
  store %struct.target_param* %28, %struct.target_param** %2, align 8
  %29 = icmp ne %struct.target_param* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @tp, align 4
  %32 = call i32 @SLIST_REMOVE_HEAD(i32* @target_paramlist, i32 %31)
  %33 = load %struct.target_param*, %struct.target_param** %2, align 8
  %34 = call i32 @free(%struct.target_param* %33)
  br label %27

35:                                               ; preds = %27
  %36 = call i32 @SLIST_INIT(i32* @target_paramlist)
  br label %37

37:                                               ; preds = %41, %35
  %38 = call %struct.target_param* @SLIST_FIRST(i32* @target_notifylist)
  %39 = bitcast %struct.target_param* %38 to %struct.target_notify*
  store %struct.target_notify* %39, %struct.target_notify** %3, align 8
  %40 = icmp ne %struct.target_notify* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @tn, align 4
  %43 = call i32 @SLIST_REMOVE_HEAD(i32* @target_notifylist, i32 %42)
  %44 = load %struct.target_notify*, %struct.target_notify** %3, align 8
  %45 = bitcast %struct.target_notify* %44 to %struct.target_param*
  %46 = call i32 @free(%struct.target_param* %45)
  br label %37

47:                                               ; preds = %37
  %48 = call i32 @SLIST_INIT(i32* @target_notifylist)
  ret void
}

declare dso_local %struct.target_param* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.target_param*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
