; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_find_check_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_find_check_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6t_entry_match = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { %struct.xt_match* }
%struct.xt_match = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.xt_mtchk_param = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ip6t_%s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"find_check_match: `%s' not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6t_entry_match*, %struct.xt_mtchk_param*, i32*)* @find_check_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_check_match(%struct.ip6t_entry_match* %0, %struct.xt_mtchk_param* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip6t_entry_match*, align 8
  %6 = alloca %struct.xt_mtchk_param*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xt_match*, align 8
  %9 = alloca i32, align 4
  store %struct.ip6t_entry_match* %0, %struct.ip6t_entry_match** %5, align 8
  store %struct.xt_mtchk_param* %1, %struct.xt_mtchk_param** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @AF_INET6, align 4
  %11 = load %struct.ip6t_entry_match*, %struct.ip6t_entry_match** %5, align 8
  %12 = getelementptr inbounds %struct.ip6t_entry_match, %struct.ip6t_entry_match* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ip6t_entry_match*, %struct.ip6t_entry_match** %5, align 8
  %17 = getelementptr inbounds %struct.ip6t_entry_match, %struct.ip6t_entry_match* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xt_find_match(i32 %10, i32 %15, i32 %20)
  %22 = load %struct.ip6t_entry_match*, %struct.ip6t_entry_match** %5, align 8
  %23 = getelementptr inbounds %struct.ip6t_entry_match, %struct.ip6t_entry_match* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.xt_match* @try_then_request_module(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %26)
  store %struct.xt_match* %27, %struct.xt_match** %8, align 8
  %28 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  %29 = call i64 @IS_ERR(%struct.xt_match* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  %33 = icmp ne %struct.xt_match* %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %31, %3
  %35 = load %struct.ip6t_entry_match*, %struct.ip6t_entry_match** %5, align 8
  %36 = getelementptr inbounds %struct.ip6t_entry_match, %struct.ip6t_entry_match* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @duprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  %42 = icmp ne %struct.xt_match* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  %45 = call i32 @PTR_ERR(%struct.xt_match* %44)
  br label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %45, %43 ], [ %48, %46 ]
  store i32 %50, i32* %4, align 4
  br label %75

51:                                               ; preds = %31
  %52 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  %53 = load %struct.ip6t_entry_match*, %struct.ip6t_entry_match** %5, align 8
  %54 = getelementptr inbounds %struct.ip6t_entry_match, %struct.ip6t_entry_match* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.xt_match* %52, %struct.xt_match** %56, align 8
  %57 = load %struct.ip6t_entry_match*, %struct.ip6t_entry_match** %5, align 8
  %58 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @check_match(%struct.ip6t_entry_match* %57, %struct.xt_mtchk_param* %58, i32* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %65

64:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %75

65:                                               ; preds = %63
  %66 = load %struct.ip6t_entry_match*, %struct.ip6t_entry_match** %5, align 8
  %67 = getelementptr inbounds %struct.ip6t_entry_match, %struct.ip6t_entry_match* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.xt_match*, %struct.xt_match** %69, align 8
  %71 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @module_put(i32 %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %65, %64, %49
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.xt_match* @try_then_request_module(i32, i8*, i32) #1

declare dso_local i32 @xt_find_match(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_match*) #1

declare dso_local i32 @duprintf(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.xt_match*) #1

declare dso_local i32 @check_match(%struct.ip6t_entry_match*, %struct.xt_mtchk_param*, i32*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
