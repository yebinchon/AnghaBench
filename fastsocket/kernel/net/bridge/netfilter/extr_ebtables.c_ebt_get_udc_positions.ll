; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_get_udc_positions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_get_udc_positions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry = type { i64 }
%struct.ebt_table_info = type { %struct.ebt_entries** }
%struct.ebt_entries = type { i32 }
%struct.ebt_cl_stack = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.ebt_entries* }

@NF_BR_NUMHOOKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry*, %struct.ebt_table_info*, i32*, %struct.ebt_cl_stack*)* @ebt_get_udc_positions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_get_udc_positions(%struct.ebt_entry* %0, %struct.ebt_table_info* %1, i32* %2, %struct.ebt_cl_stack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ebt_entry*, align 8
  %7 = alloca %struct.ebt_table_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ebt_cl_stack*, align 8
  %10 = alloca i32, align 4
  store %struct.ebt_entry* %0, %struct.ebt_entry** %6, align 8
  store %struct.ebt_table_info* %1, %struct.ebt_table_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ebt_cl_stack* %3, %struct.ebt_cl_stack** %9, align 8
  %11 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %12 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %68

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %23 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %22, i32 0, i32 0
  %24 = load %struct.ebt_entries**, %struct.ebt_entries*** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ebt_entries*, %struct.ebt_entries** %24, i64 %26
  %28 = load %struct.ebt_entries*, %struct.ebt_entries** %27, align 8
  %29 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %30 = bitcast %struct.ebt_entry* %29 to %struct.ebt_entries*
  %31 = icmp eq %struct.ebt_entries* %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %37

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %17

37:                                               ; preds = %32, %17
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %68

42:                                               ; preds = %37
  %43 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %44 = bitcast %struct.ebt_entry* %43 to %struct.ebt_entries*
  %45 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %9, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %45, i64 %48
  %50 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store %struct.ebt_entries* %44, %struct.ebt_entries** %51, align 8
  %52 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %9, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %52, i64 %55
  %57 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %9, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %59, i64 %62
  %64 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %65, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %42, %41, %15
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
