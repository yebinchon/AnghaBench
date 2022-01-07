; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ssnmap.c_sctp_ssnmap_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ssnmap.c_sctp_ssnmap_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ssnmap = type { i32 }

@MAX_KMALLOC_SIZE = common dso_local global i32 0, align 4
@ssnmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ssnmap* @sctp_ssnmap_new(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_ssnmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_ssnmap*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @sctp_ssnmap_size(i32 %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @MAX_KMALLOC_SIZE, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.sctp_ssnmap* @kmalloc(i32 %17, i32 %18)
  store %struct.sctp_ssnmap* %19, %struct.sctp_ssnmap** %8, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @get_order(i32 %22)
  %24 = call i64 @__get_free_pages(i32 %21, i32 %23)
  %25 = inttoptr i64 %24 to %struct.sctp_ssnmap*
  store %struct.sctp_ssnmap* %25, %struct.sctp_ssnmap** %8, align 8
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %8, align 8
  %28 = icmp ne %struct.sctp_ssnmap* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %57

30:                                               ; preds = %26
  %31 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @sctp_ssnmap_init(%struct.sctp_ssnmap* %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %43

37:                                               ; preds = %30
  %38 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %8, align 8
  %39 = getelementptr inbounds %struct.sctp_ssnmap, %struct.sctp_ssnmap* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @ssnmap, align 4
  %41 = call i32 @SCTP_DBG_OBJCNT_INC(i32 %40)
  %42 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %8, align 8
  store %struct.sctp_ssnmap* %42, %struct.sctp_ssnmap** %4, align 8
  br label %58

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MAX_KMALLOC_SIZE, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %8, align 8
  %49 = call i32 @kfree(%struct.sctp_ssnmap* %48)
  br label %56

50:                                               ; preds = %43
  %51 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %8, align 8
  %52 = ptrtoint %struct.sctp_ssnmap* %51 to i64
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @get_order(i32 %53)
  %55 = call i32 @free_pages(i64 %52, i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  br label %57

57:                                               ; preds = %56, %29
  store %struct.sctp_ssnmap* null, %struct.sctp_ssnmap** %4, align 8
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %4, align 8
  ret %struct.sctp_ssnmap* %59
}

declare dso_local i32 @sctp_ssnmap_size(i32, i32) #1

declare dso_local %struct.sctp_ssnmap* @kmalloc(i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @sctp_ssnmap_init(%struct.sctp_ssnmap*, i32, i32) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_INC(i32) #1

declare dso_local i32 @kfree(%struct.sctp_ssnmap*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
