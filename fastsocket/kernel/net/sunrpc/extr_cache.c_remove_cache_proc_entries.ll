; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_remove_cache_proc_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_remove_cache_proc_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64, i64, i64 }
%struct.net = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@proc_net_rpc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_detail*, %struct.net*)* @remove_cache_proc_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_cache_proc_entries(%struct.cache_detail* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.cache_detail*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %5 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %6 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %64

12:                                               ; preds = %2
  %13 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %14 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %21 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %24)
  br label %26

26:                                               ; preds = %19, %12
  %27 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %28 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %35 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %38)
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %42 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %49 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %52)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %56 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %60 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** @proc_net_rpc, align 8
  %63 = call i32 @remove_proc_entry(i8* %61, i32* %62)
  br label %64

64:                                               ; preds = %54, %11
  ret void
}

declare dso_local i32 @remove_proc_entry(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
