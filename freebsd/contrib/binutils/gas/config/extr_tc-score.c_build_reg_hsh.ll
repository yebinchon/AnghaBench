; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_build_reg_hsh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_build_reg_hsh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_map = type { i32*, %struct.reg_entry* }
%struct.reg_entry = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"virtual memory exhausted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reg_map*)* @build_reg_hsh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_reg_hsh(%struct.reg_map* %0) #0 {
  %2 = alloca %struct.reg_map*, align 8
  %3 = alloca %struct.reg_entry*, align 8
  store %struct.reg_map* %0, %struct.reg_map** %2, align 8
  %4 = call i32* (...) @hash_new()
  %5 = load %struct.reg_map*, %struct.reg_map** %2, align 8
  %6 = getelementptr inbounds %struct.reg_map, %struct.reg_map* %5, i32 0, i32 0
  store i32* %4, i32** %6, align 8
  %7 = icmp eq i32* %4, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @as_fatal(i32 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.reg_map*, %struct.reg_map** %2, align 8
  %13 = getelementptr inbounds %struct.reg_map, %struct.reg_map* %12, i32 0, i32 1
  %14 = load %struct.reg_entry*, %struct.reg_entry** %13, align 8
  store %struct.reg_entry* %14, %struct.reg_entry** %3, align 8
  br label %15

15:                                               ; preds = %26, %11
  %16 = load %struct.reg_entry*, %struct.reg_entry** %3, align 8
  %17 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.reg_entry*, %struct.reg_entry** %3, align 8
  %22 = load %struct.reg_map*, %struct.reg_map** %2, align 8
  %23 = getelementptr inbounds %struct.reg_map, %struct.reg_map* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @insert_reg(%struct.reg_entry* %21, i32* %24)
  br label %26

26:                                               ; preds = %20
  %27 = load %struct.reg_entry*, %struct.reg_entry** %3, align 8
  %28 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %27, i32 1
  store %struct.reg_entry* %28, %struct.reg_entry** %3, align 8
  br label %15

29:                                               ; preds = %15
  ret void
}

declare dso_local i32* @hash_new(...) #1

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @insert_reg(%struct.reg_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
