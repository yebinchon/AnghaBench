; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_find_check_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_find_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arpt_entry = type { i32 }
%struct.arpt_entry_target = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.xt_target* }
%struct.xt_target = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NFPROTO_ARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"arpt_%s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"find_check_entry: `%s' not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arpt_entry*, i8*, i32, i32*)* @find_check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_check_entry(%struct.arpt_entry* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arpt_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.arpt_entry_target*, align 8
  %11 = alloca %struct.xt_target*, align 8
  %12 = alloca i32, align 4
  store %struct.arpt_entry* %0, %struct.arpt_entry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.arpt_entry*, %struct.arpt_entry** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @check_entry(%struct.arpt_entry* %13, i8* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %91

20:                                               ; preds = %4
  %21 = load %struct.arpt_entry*, %struct.arpt_entry** %6, align 8
  %22 = call %struct.arpt_entry_target* @arpt_get_target(%struct.arpt_entry* %21)
  store %struct.arpt_entry_target* %22, %struct.arpt_entry_target** %10, align 8
  %23 = load i32, i32* @NFPROTO_ARP, align 4
  %24 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %10, align 8
  %25 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %10, align 8
  %30 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xt_find_target(i32 %23, i32 %28, i32 %33)
  %35 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %10, align 8
  %36 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.xt_target* @try_then_request_module(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %39)
  store %struct.xt_target* %40, %struct.xt_target** %11, align 8
  %41 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %42 = call i64 @IS_ERR(%struct.xt_target* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %20
  %45 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %46 = icmp ne %struct.xt_target* %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %44, %20
  %48 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %10, align 8
  %49 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @duprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %55 = icmp ne %struct.xt_target* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %58 = call i32 @PTR_ERR(%struct.xt_target* %57)
  br label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i32 [ %58, %56 ], [ %61, %59 ]
  store i32 %63, i32* %12, align 4
  br label %89

64:                                               ; preds = %44
  %65 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %66 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %10, align 8
  %67 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store %struct.xt_target* %65, %struct.xt_target** %69, align 8
  %70 = load %struct.arpt_entry*, %struct.arpt_entry** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @check_target(%struct.arpt_entry* %70, i8* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %80

76:                                               ; preds = %64
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %77, align 4
  store i32 0, i32* %5, align 4
  br label %91

80:                                               ; preds = %75
  %81 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %10, align 8
  %82 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.xt_target*, %struct.xt_target** %84, align 8
  %86 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @module_put(i32 %87)
  br label %89

89:                                               ; preds = %80, %62
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %76, %18
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @check_entry(%struct.arpt_entry*, i8*) #1

declare dso_local %struct.arpt_entry_target* @arpt_get_target(%struct.arpt_entry*) #1

declare dso_local %struct.xt_target* @try_then_request_module(i32, i8*, i32) #1

declare dso_local i32 @xt_find_target(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_target*) #1

declare dso_local i32 @duprintf(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.xt_target*) #1

declare dso_local i32 @check_target(%struct.arpt_entry*, i8*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
