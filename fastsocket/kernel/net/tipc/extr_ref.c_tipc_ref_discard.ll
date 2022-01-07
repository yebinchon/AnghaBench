; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_ref.c_tipc_ref_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_ref.c_tipc_ref_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, %struct.reference* }
%struct.reference = type { i64, i32* }

@tipc_ref_table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [50 x i8] c"Reference table not found during discard attempt\0A\00", align 1
@ref_table_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Attempt to discard reference to non-existent object\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Attempt to discard non-existent reference\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_ref_discard(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.reference*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load %struct.reference*, %struct.reference** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 3), align 8
  %7 = icmp ne %struct.reference* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %61

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 0), align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %12, %13
  store i64 %14, i64* %4, align 8
  %15 = load %struct.reference*, %struct.reference** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 3), align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.reference, %struct.reference* %15, i64 %16
  store %struct.reference* %17, %struct.reference** %3, align 8
  %18 = call i32 @write_lock_bh(i32* @ref_table_lock)
  %19 = load %struct.reference*, %struct.reference** %3, align 8
  %20 = getelementptr inbounds %struct.reference, %struct.reference* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = call i32 @err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %59

25:                                               ; preds = %10
  %26 = load %struct.reference*, %struct.reference** %3, align 8
  %27 = getelementptr inbounds %struct.reference, %struct.reference* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %2, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %59

33:                                               ; preds = %25
  %34 = load %struct.reference*, %struct.reference** %3, align 8
  %35 = getelementptr inbounds %struct.reference, %struct.reference* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* %5, align 8
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, 1
  %42 = add i64 %39, %41
  %43 = load %struct.reference*, %struct.reference** %3, align 8
  %44 = getelementptr inbounds %struct.reference, %struct.reference* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 1), align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 1), align 8
  br label %57

49:                                               ; preds = %33
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.reference*, %struct.reference** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 3), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 2), align 8
  %53 = getelementptr inbounds %struct.reference, %struct.reference* %51, i64 %52
  %54 = getelementptr inbounds %struct.reference, %struct.reference* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, %50
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %49, %47
  %58 = load i64, i64* %4, align 8
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 2), align 8
  br label %59

59:                                               ; preds = %57, %31, %23
  %60 = call i32 @write_unlock_bh(i32* @ref_table_lock)
  br label %61

61:                                               ; preds = %59, %8
  ret void
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
