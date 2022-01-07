; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_add_to_parts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_add_to_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_address = type { i8*, i8* }

@PLUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_address*, i8*)* @add_to_parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_parts(%struct.mem_address* %0, i8* %1) #0 {
  %3 = alloca %struct.mem_address*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.mem_address* %0, %struct.mem_address** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mem_address*, %struct.mem_address** %3, align 8
  %7 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.mem_address*, %struct.mem_address** %3, align 8
  %13 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.mem_address*, %struct.mem_address** %3, align 8
  %16 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.mem_address*, %struct.mem_address** %3, align 8
  %22 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %39

23:                                               ; preds = %14
  %24 = load %struct.mem_address*, %struct.mem_address** %3, align 8
  %25 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @TREE_TYPE(i8* %26)
  store i8* %27, i8** %5, align 8
  %28 = load i32, i32* @PLUS_EXPR, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.mem_address*, %struct.mem_address** %3, align 8
  %31 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @fold_convert(i8* %33, i8* %34)
  %36 = call i8* @fold_build2(i32 %28, i8* %29, i8* %32, i32 %35)
  %37 = load %struct.mem_address*, %struct.mem_address** %3, align 8
  %38 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %23, %19, %10
  ret void
}

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i8* @fold_build2(i32, i8*, i8*, i32) #1

declare dso_local i32 @fold_convert(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
