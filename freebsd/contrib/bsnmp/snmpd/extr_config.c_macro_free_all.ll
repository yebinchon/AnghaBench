; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_macro_free_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_macro_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro = type { %struct.macro*, %struct.macro*, i32 }

@macro_free_all.m = internal global %struct.macro* null, align 8
@macro_free_all.m1 = internal global %struct.macro* null, align 8
@macros = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @macro_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macro_free_all() #0 {
  %1 = call %struct.macro* @LIST_FIRST(i32* @macros)
  store %struct.macro* %1, %struct.macro** @macro_free_all.m, align 8
  br label %2

2:                                                ; preds = %27, %0
  %3 = load %struct.macro*, %struct.macro** @macro_free_all.m, align 8
  %4 = icmp ne %struct.macro* %3, null
  br i1 %4, label %5, label %29

5:                                                ; preds = %2
  %6 = load %struct.macro*, %struct.macro** @macro_free_all.m, align 8
  %7 = load i32, i32* @link, align 4
  %8 = call %struct.macro* @LIST_NEXT(%struct.macro* %6, i32 %7)
  store %struct.macro* %8, %struct.macro** @macro_free_all.m1, align 8
  %9 = load %struct.macro*, %struct.macro** @macro_free_all.m, align 8
  %10 = getelementptr inbounds %struct.macro, %struct.macro* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %5
  %14 = load %struct.macro*, %struct.macro** @macro_free_all.m, align 8
  %15 = getelementptr inbounds %struct.macro, %struct.macro* %14, i32 0, i32 1
  %16 = load %struct.macro*, %struct.macro** %15, align 8
  %17 = call i32 @free(%struct.macro* %16)
  %18 = load %struct.macro*, %struct.macro** @macro_free_all.m, align 8
  %19 = getelementptr inbounds %struct.macro, %struct.macro* %18, i32 0, i32 0
  %20 = load %struct.macro*, %struct.macro** %19, align 8
  %21 = call i32 @free(%struct.macro* %20)
  %22 = load %struct.macro*, %struct.macro** @macro_free_all.m, align 8
  %23 = load i32, i32* @link, align 4
  %24 = call i32 @LIST_REMOVE(%struct.macro* %22, i32 %23)
  %25 = load %struct.macro*, %struct.macro** @macro_free_all.m, align 8
  %26 = call i32 @free(%struct.macro* %25)
  br label %27

27:                                               ; preds = %13, %5
  %28 = load %struct.macro*, %struct.macro** @macro_free_all.m1, align 8
  store %struct.macro* %28, %struct.macro** @macro_free_all.m, align 8
  br label %2

29:                                               ; preds = %2
  ret void
}

declare dso_local %struct.macro* @LIST_FIRST(i32*) #1

declare dso_local %struct.macro* @LIST_NEXT(%struct.macro*, i32) #1

declare dso_local i32 @free(%struct.macro*) #1

declare dso_local i32 @LIST_REMOVE(%struct.macro*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
