; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_register_dump_files_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_register_dump_files_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_opt_pass = type { i32, i32, %struct.tree_opt_pass*, i64, %struct.tree_opt_pass*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_opt_pass*, i32, i32)* @register_dump_files_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_dump_files_1(%struct.tree_opt_pass* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tree_opt_pass*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tree_opt_pass* %0, %struct.tree_opt_pass** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %54, %3
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %11 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %9, %12
  %14 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %15 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %20 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %8
  %24 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @register_one_dump_file(%struct.tree_opt_pass* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %8
  %29 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %30 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %29, i32 0, i32 4
  %31 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %30, align 8
  %32 = icmp ne %struct.tree_opt_pass* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %35 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %34, i32 0, i32 4
  %36 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @register_dump_files_1(%struct.tree_opt_pass* %36, i32 0, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %41 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %52 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %51, i32 0, i32 2
  %53 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %52, align 8
  store %struct.tree_opt_pass* %53, %struct.tree_opt_pass** %4, align 8
  br label %54

54:                                               ; preds = %50
  %55 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %56 = icmp ne %struct.tree_opt_pass* %55, null
  br i1 %56, label %8, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @register_one_dump_file(%struct.tree_opt_pass*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
