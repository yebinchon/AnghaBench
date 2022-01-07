; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_tables.c_find_check_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_tables.c_find_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipt_entry = type { i32, i32 }
%struct.ipt_entry_target = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.xt_target* }
%struct.xt_target = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xt_mtchk_param = type { i8*, i32, i32, i32* }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@find_check_match = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ipt_%s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"find_check_entry: `%s' not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@cleanup_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipt_entry*, i8*, i32, i32*)* @find_check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_check_entry(%struct.ipt_entry* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipt_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ipt_entry_target*, align 8
  %11 = alloca %struct.xt_target*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xt_mtchk_param, align 8
  store %struct.ipt_entry* %0, %struct.ipt_entry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ipt_entry*, %struct.ipt_entry** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @check_entry(%struct.ipt_entry* %15, i8* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %114

22:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %14, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load %struct.ipt_entry*, %struct.ipt_entry** %6, align 8
  %26 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %14, i32 0, i32 3
  store i32* %26, i32** %27, align 8
  %28 = load %struct.ipt_entry*, %struct.ipt_entry** %6, align 8
  %29 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %14, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @NFPROTO_IPV4, align 4
  %33 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %14, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.ipt_entry*, %struct.ipt_entry** %6, align 8
  %35 = load i32, i32* @find_check_match, align 4
  %36 = call i32 (%struct.ipt_entry*, i32, ...) @IPT_MATCH_ITERATE(%struct.ipt_entry* %34, i32 %35, %struct.xt_mtchk_param* %14, i32* %13)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %109

40:                                               ; preds = %22
  %41 = load %struct.ipt_entry*, %struct.ipt_entry** %6, align 8
  %42 = call %struct.ipt_entry_target* @ipt_get_target(%struct.ipt_entry* %41)
  store %struct.ipt_entry_target* %42, %struct.ipt_entry_target** %10, align 8
  %43 = load i32, i32* @AF_INET, align 4
  %44 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %10, align 8
  %45 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %10, align 8
  %50 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @xt_find_target(i32 %43, i32 %48, i32 %53)
  %55 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %10, align 8
  %56 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.xt_target* @try_then_request_module(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %59)
  store %struct.xt_target* %60, %struct.xt_target** %11, align 8
  %61 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %62 = call i64 @IS_ERR(%struct.xt_target* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %40
  %65 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %66 = icmp ne %struct.xt_target* %65, null
  br i1 %66, label %84, label %67

67:                                               ; preds = %64, %40
  %68 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %10, align 8
  %69 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @duprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %75 = icmp ne %struct.xt_target* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %78 = call i32 @PTR_ERR(%struct.xt_target* %77)
  br label %82

79:                                               ; preds = %67
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ %78, %76 ], [ %81, %79 ]
  store i32 %83, i32* %12, align 4
  br label %109

84:                                               ; preds = %64
  %85 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %86 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %10, align 8
  %87 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store %struct.xt_target* %85, %struct.xt_target** %89, align 8
  %90 = load %struct.ipt_entry*, %struct.ipt_entry** %6, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @check_target(%struct.ipt_entry* %90, i8* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %100

96:                                               ; preds = %84
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %97, align 4
  store i32 0, i32* %5, align 4
  br label %114

100:                                              ; preds = %95
  %101 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %10, align 8
  %102 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load %struct.xt_target*, %struct.xt_target** %104, align 8
  %106 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @module_put(i32 %107)
  br label %109

109:                                              ; preds = %100, %82, %39
  %110 = load %struct.ipt_entry*, %struct.ipt_entry** %6, align 8
  %111 = load i32, i32* @cleanup_match, align 4
  %112 = call i32 (%struct.ipt_entry*, i32, ...) @IPT_MATCH_ITERATE(%struct.ipt_entry* %110, i32 %111, i32* %13)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %109, %96, %20
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @check_entry(%struct.ipt_entry*, i8*) #1

declare dso_local i32 @IPT_MATCH_ITERATE(%struct.ipt_entry*, i32, ...) #1

declare dso_local %struct.ipt_entry_target* @ipt_get_target(%struct.ipt_entry*) #1

declare dso_local %struct.xt_target* @try_then_request_module(i32, i8*, i32) #1

declare dso_local i32 @xt_find_target(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_target*) #1

declare dso_local i32 @duprintf(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.xt_target*) #1

declare dso_local i32 @check_target(%struct.ipt_entry*, i8*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
