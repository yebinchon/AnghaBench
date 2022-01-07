; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_publ_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_publ_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.publication = type { %struct.TYPE_2__, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Publication creation failure, no memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.publication* (i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @publ_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.publication* @publ_create(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.publication*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.publication*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.publication* @kzalloc(i32 72, i32 %17)
  store %struct.publication* %18, %struct.publication** %16, align 8
  %19 = load %struct.publication*, %struct.publication** %16, align 8
  %20 = icmp eq %struct.publication* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = call i32 @warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.publication* null, %struct.publication** %8, align 8
  br label %56

23:                                               ; preds = %7
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.publication*, %struct.publication** %16, align 8
  %26 = getelementptr inbounds %struct.publication, %struct.publication* %25, i32 0, i32 9
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.publication*, %struct.publication** %16, align 8
  %29 = getelementptr inbounds %struct.publication, %struct.publication* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.publication*, %struct.publication** %16, align 8
  %32 = getelementptr inbounds %struct.publication, %struct.publication* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load %struct.publication*, %struct.publication** %16, align 8
  %35 = getelementptr inbounds %struct.publication, %struct.publication* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load %struct.publication*, %struct.publication** %16, align 8
  %38 = getelementptr inbounds %struct.publication, %struct.publication* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load %struct.publication*, %struct.publication** %16, align 8
  %41 = getelementptr inbounds %struct.publication, %struct.publication* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load %struct.publication*, %struct.publication** %16, align 8
  %44 = getelementptr inbounds %struct.publication, %struct.publication* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.publication*, %struct.publication** %16, align 8
  %46 = getelementptr inbounds %struct.publication, %struct.publication* %45, i32 0, i32 2
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.publication*, %struct.publication** %16, align 8
  %49 = getelementptr inbounds %struct.publication, %struct.publication* %48, i32 0, i32 1
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.publication*, %struct.publication** %16, align 8
  %52 = getelementptr inbounds %struct.publication, %struct.publication* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.publication*, %struct.publication** %16, align 8
  store %struct.publication* %55, %struct.publication** %8, align 8
  br label %56

56:                                               ; preds = %23, %21
  %57 = load %struct.publication*, %struct.publication** %8, align 8
  ret %struct.publication* %57
}

declare dso_local %struct.publication* @kzalloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
