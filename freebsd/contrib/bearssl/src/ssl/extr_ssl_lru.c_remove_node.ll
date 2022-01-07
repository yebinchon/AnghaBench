; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_lru.c_remove_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_lru.c_remove_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@SESSION_ID_OFF = common dso_local global i64 0, align 8
@ADDR_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64)* @remove_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_node(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @SESSION_ID_OFF, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @find_node(%struct.TYPE_10__* %9, i64 %16, i64* %5)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @find_replacement_node(%struct.TYPE_10__* %18, i64 %19, i64* %7)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ADDR_NULL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @get_left(%struct.TYPE_10__* %25, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @ADDR_NULL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @get_right(%struct.TYPE_10__* %32, i64 %33)
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @set_link(%struct.TYPE_10__* %36, i64 %37, i64 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @set_link(%struct.TYPE_10__* %40, i64 %41, i64 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @get_left(%struct.TYPE_10__* %46, i64 %47)
  %49 = call i32 @set_left(%struct.TYPE_10__* %44, i64 %45, i64 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @get_right(%struct.TYPE_10__* %52, i64 %53)
  %55 = call i32 @set_right(%struct.TYPE_10__* %50, i64 %51, i64 %54)
  br label %61

56:                                               ; preds = %2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @ADDR_NULL, align 8
  %60 = call i32 @set_link(%struct.TYPE_10__* %57, i64 %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %35
  ret void
}

declare dso_local i32 @find_node(%struct.TYPE_10__*, i64, i64*) #1

declare dso_local i64 @find_replacement_node(%struct.TYPE_10__*, i64, i64*) #1

declare dso_local i64 @get_left(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @get_right(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @set_link(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @set_left(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @set_right(%struct.TYPE_10__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
