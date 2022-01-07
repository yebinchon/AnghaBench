; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_namespace_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_namespace_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32 }
%struct.dwarf2_cu = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"(anonymous namespace)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.die_info*, i32*, %struct.dwarf2_cu*)* @namespace_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @namespace_name(%struct.die_info* %0, i32* %1, %struct.dwarf2_cu* %2) #0 {
  %4 = alloca %struct.die_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dwarf2_cu*, align 8
  %7 = alloca %struct.die_info*, align 8
  %8 = alloca i8*, align 8
  store %struct.die_info* %0, %struct.die_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.dwarf2_cu* %2, %struct.dwarf2_cu** %6, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.die_info*, %struct.die_info** %4, align 8
  store %struct.die_info* %9, %struct.die_info** %7, align 8
  br label %10

10:                                               ; preds = %21, %3
  %11 = load %struct.die_info*, %struct.die_info** %7, align 8
  %12 = icmp ne %struct.die_info* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.die_info*, %struct.die_info** %7, align 8
  %15 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %6, align 8
  %16 = call i8* @dwarf2_name(%struct.die_info* %14, %struct.dwarf2_cu* %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.die_info*, %struct.die_info** %4, align 8
  %23 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %6, align 8
  %24 = call %struct.die_info* @dwarf2_extension(%struct.die_info* %22, %struct.dwarf2_cu* %23)
  store %struct.die_info* %24, %struct.die_info** %7, align 8
  br label %10

25:                                               ; preds = %19, %10
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i8*, i8** %8, align 8
  ret i8* %35
}

declare dso_local i8* @dwarf2_name(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @dwarf2_extension(%struct.die_info*, %struct.dwarf2_cu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
