; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_filter_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_filter_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_entry = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@nm_out_filter = common dso_local global i32 0, align 4
@filter_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @filter_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_insert(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.filter_entry*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = call %struct.filter_entry* @malloc(i32 8)
  store %struct.filter_entry* %9, %struct.filter_entry** %4, align 8
  %10 = icmp eq %struct.filter_entry* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %16 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %18 = load i32, i32* @filter_entries, align 4
  %19 = call i32 @SLIST_INSERT_HEAD(i32* @nm_out_filter, %struct.filter_entry* %17, i32 %18)
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %13, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.filter_entry* @malloc(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.filter_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
