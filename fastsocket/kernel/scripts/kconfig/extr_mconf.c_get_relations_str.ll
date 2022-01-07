; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_mconf.c_get_relations_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_mconf.c_get_relations_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.gstr = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"No matches found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol**)* @get_relations_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_relations_str(%struct.symbol** %0) #0 {
  %2 = alloca %struct.gstr, align 4
  %3 = alloca %struct.symbol**, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  store %struct.symbol** %0, %struct.symbol*** %3, align 8
  %6 = call i32 (...) @str_new()
  %7 = getelementptr inbounds %struct.gstr, %struct.gstr* %2, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load %struct.symbol**, %struct.symbol*** %3, align 8
  %10 = icmp ne %struct.symbol** %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.symbol**, %struct.symbol*** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.symbol*, %struct.symbol** %12, i64 %14
  %16 = load %struct.symbol*, %struct.symbol** %15, align 8
  store %struct.symbol* %16, %struct.symbol** %4, align 8
  %17 = icmp ne %struct.symbol* %16, null
  br label %18

18:                                               ; preds = %11, %8
  %19 = phi i1 [ false, %8 ], [ %17, %11 ]
  br i1 %19, label %20, label %26

20:                                               ; preds = %18
  %21 = load %struct.symbol*, %struct.symbol** %4, align 8
  %22 = call i32 @get_symbol_str(%struct.gstr* %2, %struct.symbol* %21)
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %8

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @str_append(%struct.gstr* %2, i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct.gstr, %struct.gstr* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  ret i32 %34
}

declare dso_local i32 @str_new(...) #1

declare dso_local i32 @get_symbol_str(%struct.gstr*, %struct.symbol*) #1

declare dso_local i32 @str_append(%struct.gstr*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
